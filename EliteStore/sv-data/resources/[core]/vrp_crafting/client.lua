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
Tunnel.bindInterface("vrp_crafting",cnVRP)
vSERVER = Tunnel.getInterface("vrp_crafting")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("close",function(data)
	SetNuiFocus(false,false)
	TransitionFromBlurred(1000)
	SendNUIMessage({ action = "hideNUI" })
end)

RegisterNetEvent('fecharnuicrafting')
AddEventHandler('fecharnuicrafting',function(mochila)
	SetNuiFocus(false,false)
	TransitionFromBlurred(1000)
	SendNUIMessage({ action = "hideNUI" })
	if mochila then
		TriggerEvent("Notify","importante","Sem espaço na mochila!")
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REQUESTCRAFTING
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("requestCrafting",function(data,cb)
	local inventoryCraft,inventoryUser,weight,maxweight,infos = vSERVER.requestCrafting(data.craft)
	if inventoryCraft then
		cb({ inventoryCraft = inventoryCraft, inventoryUser = inventoryUser, weight = weight, maxweight = maxweight, infos = infos })
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTIONCRAFT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("functionCraft",function(data,cb)
	vSERVER.functionCrafting(data.index,data.craft,data.amount,data.slot)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTIONDESTROY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("functionDestroy",function(data,cb)
	vSERVER.functionDestroy(data.index,data.craft,data.amount,data.slot)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- POPULATESLOT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("populateSlot",function(data,cb)
	TriggerServerEvent("vrp_crafting:populateSlot",data.item,data.slot,data.target,data.amount)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATESLOT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("updateSlot",function(data,cb)
	TriggerServerEvent("vrp_crafting:updateSlot",data.item,data.slot,data.target,data.amount)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATECRAFTING
-----------------------------------------------------------------------------------------------------------------------------------------
function cnVRP.updateCrafting(action)
	SendNUIMessage({ action = action })
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADOPEN
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	SetNuiFocus(false,false)
	while true do
		local timeDistance = 500
		local ped = PlayerPedId()
		if not IsPedInAnyVehicle(ped) then
			local coords = GetEntityCoords(ped)
			for k,v in pairs(craft.list) do
				for m,n in pairs(v['coords']) do
					if #(coords - vector3(n[1],n[2],n[3])) <= 0.5 then
						timeDistance = 4
						DrawText3D(n[1],n[2],n[3],"~g~E~w~ "..v['text'].."")
						if IsControlJustPressed(1,38) and vSERVER.requestPerm(k) then
							SetNuiFocus(true,true)
							TransitionToBlurred(1000)
							SendNUIMessage({ action = "showNUI", name = tostring(k) })
						end
					end
				end
			end
		end
		Citizen.Wait(timeDistance)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DRAWTEXT3D
-----------------------------------------------------------------------------------------------------------------------------------------
function DrawText3D(x,y,z,text)
	local onScreen,_x,_y = World3dToScreen2d(x,y,z)
	SetTextFont(4)
	SetTextScale(0.35,0.35)
	SetTextColour(255,255,255,100)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)
	local factor = (string.len(text)) / 450
	DrawRect(_x,_y+0.0125,0.01+factor,0.03,0,0,0,100)
end