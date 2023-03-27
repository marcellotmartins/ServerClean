-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
cnVRP = {}
Tunnel.bindInterface("vrp_chest",cnVRP)
vCLIENT = Tunnel.getInterface("vrp_chest")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local chestOpen = {}
local antichestdump = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECKINTPERMISSIONS
-----------------------------------------------------------------------------------------------------------------------------------------
function cnVRP.checkIntPermissions(chestName)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.hasPermission(user_id,chestc.list[chestName]['perm']) then
			chestOpen[user_id] = chestName
			return true
		end
	end
	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHESTCLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
function cnVRP.chestClose()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if chestOpen[user_id] then
			antichestdump[chestOpen[user_id]] = false
			chestOpen[user_id] = nil
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYERLEAVE
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("vRP:playerLeave",function(user_id,source)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if antichestdump[chestOpen[user_id]] then
			antichestdump[chestOpen[user_id]] = false
		end
		if chestOpen[user_id] then
			chestOpen[user_id] = nil
		end
	end
end)
----------------------------------------------------------------------------------------------------------------------------------------
-- CHESTCLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
function cnVRP.checkchestdump(k)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if not antichestdump[k] then
			antichestdump[k] = true
			return true
		end
	end
	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- OPENCHEST
-----------------------------------------------------------------------------------------------------------------------------------------
function cnVRP.openChest()
	local source = source
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if user_id then
		local myinventory = {}
		local mychestopen = {}
		local mychestname = chestOpen[parseInt(user_id)]
		if mychestname ~= nil then
			local inv = vRP.getInventory(parseInt(user_id))
			if inv then
				for k,v in pairs(inv) do

					v.amount = parseInt(v.amount)
					v.name = vRP.itemNameList(v.item)
					v.peso = vRP.getItemWeight(v.item)
					v.index = vRP.itemIndexList(v.item)
					v.key = v.item
					v.slot = k

					myinventory[k] = v
				end
			end

			local data = vRP.getSData("chest:"..mychestname)
			local sdata = json.decode(data) or {}
			if data then
				for k,v in pairs(sdata) do
					table.insert(mychestopen,{ amount = parseInt(v.amount), name = vRP.itemNameList(k), index = vRP.itemIndexList(k), key = k, peso = vRP.getItemWeight(k) })
				end
			end
			return myinventory,mychestopen,vRP.computeInvWeight(user_id),vRP.getInventoryMaxWeight(user_id),vRP.computeChestWeight(sdata),chestc.list[mychestname]['kg'],{ identity.name.." "..identity.firstname,parseInt(user_id),identity.phone,identity.registration,vRP.getBankMoney(user_id) }
		end
	end
	return false
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- POPULATESLOT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("vrp_chest:populateSlot")
AddEventHandler("vrp_chest:populateSlot",function(itemName,slot,target,amount)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if amount == nil then amount = 1 end
		if amount <= 0 then amount = 1 end

		if vRP.tryGetInventoryItem(user_id,itemName,amount,false,slot) then
			TriggerClientEvent("vrp_sound:source",source,"slot",0.1)
			vRP.giveInventoryItem(user_id,itemName,amount,false,target)
			TriggerClientEvent("vrp_chest:Update",source,"updateChest")
		end
	end
end)


-----------------------------------------------------------------------------------------------------------------------------------------
-- POPULATESLOT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("vrp_chest:updateSlot")
AddEventHandler("vrp_chest:updateSlot",function(itemName,slot,target,amount)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if amount == nil then amount = 1 end
		if amount <= 0 then amount = 1 end
		local inv = vRP.getInventory(user_id)
		if inv then
			if inv[tostring(slot)] and inv[tostring(target)] and inv[tostring(slot)].item == inv[tostring(target)].item then
				if vRP.tryGetInventoryItem(user_id,itemName,amount,false,slot) then
					vRP.giveInventoryItem(user_id,itemName,amount,false,target)
				end
			else
				vRP.swapSlot(user_id,slot,target)
			end
		end

		TriggerClientEvent("vrp_chest:Update",source,"updateChest")
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- POPULATESLOT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("vrp_chest:sumSlot")
AddEventHandler("vrp_chest:sumSlot",function(itemName,slot,amount)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		local inv = vRP.getInventory(user_id)
		if inv then
			if inv[tostring(slot)] and inv[tostring(slot)].item == itemName then
				if vRP.tryChestItem(user_id,"chest:"..tostring(chestOpen[parseInt(user_id)]),itemName,amount,slot) then
					TriggerClientEvent("vrp_chest:Update",source,"updateChest")
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- STOREITEM
-----------------------------------------------------------------------------------------------------------------------------------------
function cnVRP.storeItem(itemName,slot,amount)
	if itemName then
		local source = source
		local user_id = vRP.getUserId(source)
		if user_id then
			if vRP.storeChestItem(user_id,"chest:"..tostring(chestOpen[parseInt(user_id)]),itemName,amount,chestc.list[chestOpen[parseInt(user_id)]]['kg'],slot,"chest") then
				TriggerClientEvent("vrp_sound:source",source,"slot",0.1)
				TriggerClientEvent("vrp_chest:Update",source,"updateChest")
			end
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- TAKEITEM
-----------------------------------------------------------------------------------------------------------------------------------------
function cnVRP.takeItem(itemName,slot,amount)
	if itemName then
		local source = source
		local user_id = vRP.getUserId(source)
		if user_id then
			if vRP.tryChestItem(user_id,"chest:"..tostring(chestOpen[parseInt(user_id)]),itemName,amount,slot,"chest") then
				TriggerClientEvent("vrp_sound:source",source,"slot",0.1)
				TriggerClientEvent("vrp_chest:Update",source,"updateChest")
			end
		end
	end
end
