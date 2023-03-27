-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
cnVRP = {}
Tunnel.bindInterface("vrp_trunkchest",cnVRP)
vSERVER = Tunnel.getInterface("vrp_trunkchest")
-----------------------------------------------------------------------------------------------------------------------------------------
-- STARTFOCUS
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	SetNuiFocus(false,false)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHESTCLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("chestClose",function(data)
	local ped = GetPlayerPed(-1)
	vSERVER.chestClose()
	TransitionFromBlurred(1000)
	SetNuiFocus(false,false)
	SendNUIMessage({ action = "hideMenu" })
	local vehicle = vRP.getNearestVehicle(7)
	if IsEntityAVehicle(vehicle) then
		if not IsPedInAnyVehicle(ped) then
			TriggerServerEvent("trytrunk",VehToNet(vehicle))
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TAKEITEM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("takeItem",function(data)
	vSERVER.takeItem(data.item,data.slot,data.amount)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- STOREITEM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("storeItem",function(data)
	vSERVER.storeItem(data.item,data.slot,data.amount)
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- POPULATESLOT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("populateSlot",function(data,cb)
	TriggerServerEvent("vrp_trunkchest:populateSlot",data.item,data.slot,data.target,data.amount)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATESLOT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("updateSlot",function(data,cb)
	TriggerServerEvent("vrp_trunkchest:updateSlot",data.item,data.slot,data.target,data.amount)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATESLOT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("sumSlot",function(data,cb)
	TriggerServerEvent("vrp_trunkchest:sumSlot",data.item,data.slot,data.amount)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- vrp_trunkchest:UPDATE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("vrp_trunkchest:Update")
AddEventHandler("vrp_trunkchest:Update",function(action)
	SendNUIMessage({ action = action })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REQUESTCHEST
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("requestChest",function(data,cb)
	local inventario,inventario2,peso,maxpeso,peso2,maxpeso2,infos = vSERVER.openChest()
	if inventario then
		cb({ inventario = inventario, inventario2 = inventario2, peso = peso, maxpeso = maxpeso, peso2 = peso2, maxpeso2 = maxpeso2, infos = infos })
	end
end)

RegisterKeyMapping('vrp:trunk', 'Malas', 'keyboard', 'PAGEUP')

RegisterCommand('vrp:trunk', function()
	vSERVER.openinv()
end, false)

-----------------------------------------------------------------------------------------------------------------------------------------
-- GETGRIDCHUNK
-----------------------------------------------------------------------------------------------------------------------------------------
function gridChunk(x)
	return math.floor((x + 8192) / 128)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- TOCHANNEL
-----------------------------------------------------------------------------------------------------------------------------------------
function toChannel(v)
	return (v.x << 8) | v.y
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHEST
-----------------------------------------------------------------------------------------------------------------------------------------
local chestCoords = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADOPEN
-----------------------------------------------------------------------------------------------------------------------------------------
function cnVRP.trunkOpen()
	local ped = GetPlayerPed(-1)
	SetNuiFocus(true,true)
	SendNUIMessage({ action = "showMenu" })
	TransitionToBlurred(1000)
	local vehicle = vRP.getNearestVehicle(7)
	if IsEntityAVehicle(vehicle) then
		if not IsPedInAnyVehicle(ped) then
			TriggerServerEvent("trytrunk",VehToNet(vehicle))
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTION ADD IN TABLE
-----------------------------------------------------------------------------------------------------------------------------------------
function cnVRP.insertTable(chestname,coords)
	local x,y,z = table.unpack(coords)
	table.insert(chestCoords,{ chestname = chestname, x = x, y = y, z = z })
end


--[ OPEN/CLOSE TRUNK OF VEHICLE ]--------------------------------------------------------------------------------------------------------

RegisterNetEvent("synctrunk")
AddEventHandler("synctrunk",function(index)
	if NetworkDoesNetworkIdExist(index) then
		local v = NetToVeh(index)
		local isopen = GetVehicleDoorAngleRatio(v,5)
		if DoesEntityExist(v) then
			if IsEntityAVehicle(v) then
				if isopen == 0 then
					SetVehicleDoorOpen(v,5,0,0)
				else
					SetVehicleDoorShut(v,5,0)
				end
			end
		end
	end
end)