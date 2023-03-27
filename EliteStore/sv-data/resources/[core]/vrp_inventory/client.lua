-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
func = {}
Tunnel.bindInterface("vrp_inventory",func)
vSERVER = Tunnel.getInterface("vrp_inventory")
vTRUNK = Tunnel.getInterface("vrp_trunkchest")

local currentWeapon = nil
local currentWeaponModel = nil
local takingWeapon = false

--[ CLONEPLATES ]------------------------------------------------------------------------------------------------------------------------

RegisterNetEvent('cloneplates')
AddEventHandler('cloneplates',function()
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsUsing(ped)
    local clonada = GetVehicleNumberPlateText(vehicle)
    if IsEntityAVehicle(vehicle) then
        PlateIndex = GetVehicleNumberPlateText(vehicle)
        SetVehicleNumberPlateText(vehicle,"CLONADA")
        FreezeEntityPosition(vehicle,false)
        if clonada == CLONADA then 
            SetVehicleNumberPlateText(vehicle,PlateIndex)
            PlateIndex = nil
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- Bandagem
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('bandagem')
AddEventHandler('bandagem',function()
    local ped = PlayerPedId()
    local bandagem = 0
    repeat
        Citizen.Wait(600)
        bandagem = bandagem + 1
        if GetEntityHealth(ped) > 101 then
            SetEntityHealth(ped,GetEntityHealth(ped)+1)
        end
    until GetEntityHealth(ped) >= 300 or GetEntityHealth(ped) <= 101 or bandagem == 60
        TriggerEvent("Notify","sucesso","Tratamento concluido.")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- INVCLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("invClose",function(data,cb)
	SetNuiFocus(false,false)
	TransitionFromBlurred(1000)
	SetCursorLocation(0.5,0.5)
	SendNUIMessage({ action = "hideMenu" })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLOSEINVENTORY
-----------------------------------------------------------------------------------------------------------------------------------------
function func.closeInventory()
	SetNuiFocus(false,false)
	TransitionFromBlurred(1000)
	SetCursorLocation(0.5,0.5)
	SendNUIMessage({ action = "hideMenu" })
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADFOCUS
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	SetNuiFocus(false,false)
end)

local notinv = false
RegisterNetEvent("notinv")
AddEventHandler("notinv",function(status)
	notinv = status
end)

RegisterKeyMapping("moc3","Abrir a mochila","keyboard","oem_3")
-----------------------------------------------------------------------------------------------------------------------------------------
-- MOC
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("moc3",function(source,args)
	local ped = PlayerPedId()
	if not IsPlayerFreeAiming(PlayerPedId()) and GetEntityHealth(PlayerPedId()) > 101 and not notinv then
		SetNuiFocus(true,true)
		TransitionToBlurred(1000)
		SetCursorLocation(0.5,0.5)
		SendNUIMessage({ action = "showMenu" })
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DROPITEM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("dropItem",function(data)
	TriggerServerEvent("vrp_inventory:dropItem",data.item,data.amount,true)
end)

function func.dropItem(item,amount)
	TriggerServerEvent("vrp_inventory:dropItem",item,amount,false)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PICKUPITEM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("pickupItem",function(data)
	if not vRP.getNearestPlayer(2) then
		TriggerServerEvent("itemdrop:Pickup",data.id,data.target,data.amount)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local droplist = {}
local cooldown = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- ITEMDROP:REMOVE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("itemdrop:Remove")
AddEventHandler("itemdrop:Remove",function(id)
	if droplist[id] ~= nil then
		droplist[id] = nil
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ITEMDROP:REMOVE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("itemdrop:Players")
AddEventHandler("itemdrop:Players",function(id,marker)
	droplist[id] = marker
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ITEMDROP:REMOVE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("itemdrop:Update")
AddEventHandler("itemdrop:Update",function(status)
	droplist = status
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADDROP
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        local timeDistance = 500
        local ped = PlayerPedId()
		local coords = GetEntityCoords(ped)
		for k,v in pairs(droplist) do
			local bowz,cdz = GetGroundZFor_3dCoord(v.x,v.y,v.z)
            local distance = #(coords - vector3(v.x,v.y,cdz))
            if distance <= 15 then
               timeDistance = 4
               DrawMarker(20,v.x,v.y,cdz+0.30,0,0,0,0,0.0,130.0,0.2,0.3,0.3,0, 129, 254,100,0,0,0,1)
			end
        end

        Citizen.Wait(timeDistance)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- USEITEM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("useItem",function(data)
	TriggerServerEvent("vrp_inventory:useItem",data.slot,data.amount)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SENDITEM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("sendItem",function(data)
	TriggerServerEvent("vrp_inventory:sendItem",data.slot,data.amount)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATESLOT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("updateSlot",function(data,cb)
	TriggerServerEvent("vrp_inventory:updateSlot",data.item,data.slot,data.target,data.amount)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- MOCHILA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("requestMochila",function(data,cb)
	local ped = PlayerPedId()
	local x,y,z = table.unpack(GetEntityCoords(ped))
	local dropItems = {}
	for k,v in pairs(droplist) do
		local bowz,cdz = GetGroundZFor_3dCoord(v.x,v.y,v.z)
		if GetDistanceBetweenCoords(v.x,v.y,cdz,x,y,z,true) <= 1.5 then
			table.insert(dropItems,{ name = v.name, key = v.name, amount = v.count, index = v.index, peso = v.peso, desc = v.desc, id = k })
		end
	end

	local inventario,peso,maxpeso,infos = vSERVER.Mochila()
	if inventario then
		cb({ inventario = inventario, drop = dropItems, peso = peso, maxpeso = maxpeso, infos = infos })
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP_INVENTORY:UPDATE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("vrp_inventory:Update")
AddEventHandler("vrp_inventory:Update",function(action)
	SendNUIMessage({ action = action })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REPAIRVEHICLE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("vrp_inventory:repairVehicle")
AddEventHandler("vrp_inventory:repairVehicle",function(index,status)
	if NetworkDoesNetworkIdExist(index) then
		local v = NetToEnt(index)
		if DoesEntityExist(v) then
			local fuel = GetVehicleFuelLevel(v)
			if status then
				SetVehicleFixed(v)
				SetVehicleDeformationFixed(v)
			end
			SetVehicleBodyHealth(v,1000.0)
			SetVehicleEngineHealth(v,1000.0)
			SetVehiclePetrolTankHealth(v,1000.0)
			SetVehicleFuelLevel(v,fuel)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REPAIRTIRES
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("vrp_inventory:repairTires")
AddEventHandler("vrp_inventory:repairTires",function(index)
	if NetworkDoesNetworkIdExist(index) then
		local v = NetToEnt(index)
		if DoesEntityExist(v) then
			for i = 0,8 do
				SetVehicleTyreFixed(v,i)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- LOCKPICKVEHICLE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("vrp_inventory:lockpickVehicle")
AddEventHandler("vrp_inventory:lockpickVehicle",function(index)
	if NetworkDoesNetworkIdExist(index) then
		local v = NetToEnt(index)
		if DoesEntityExist(v) then
			SetEntityAsMissionEntity(v,true,true)
			if GetVehicleDoorsLockedForPlayer(v,PlayerId()) == 1 then
				SetVehicleDoorsLocked(v,false)
				SetVehicleDoorsLockedForAllPlayers(v,false)
			else
				SetVehicleDoorsLocked(v,true)
				SetVehicleDoorsLockedForAllPlayers(v,true)
			end
			SetVehicleLights(v,2)
			Wait(200)
			SetVehicleLights(v,0)
			Wait(200)
			SetVehicleLights(v,2)
			Wait(200)
			SetVehicleLights(v,0)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BLOCKBUTTONS
-----------------------------------------------------------------------------------------------------------------------------------------
local blockButtons = false
function func.blockButtons(status)
	blockButtons = status
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADBUTTONS
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		local timeDistance = 500
		if blockButtons then
			timeDistance = 4
			DisableControlAction(1,73,true)
			DisableControlAction(1,75,true)
			DisableControlAction(1,29,true)
			DisableControlAction(1,47,true)
			DisableControlAction(1,105,true)
			DisableControlAction(1,187,true)
			DisableControlAction(1,189,true)
			DisableControlAction(1,190,true)
			DisableControlAction(1,188,true)
			DisableControlAction(1,311,true)
			DisableControlAction(1,245,true)
			DisableControlAction(1,257,true)
			DisableControlAction(1,288,true)
			DisableControlAction(1,37,true)
			DisablePlayerFiring(PlayerPedId(),true)
		end
		Citizen.Wait(timeDistance)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PARACHUTECOLORS
-----------------------------------------------------------------------------------------------------------------------------------------
function func.parachuteColors()
	--GiveWeaponToPed(PlayerPedId(),"GADGET_PARACHUTE",1,false,true)
	vRP.giveWeapons({["GADGET_PARACHUTE"] = { ammo = 1 }})
	SetPedParachuteTintIndex(PlayerPedId(),math.random(7))
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- FISHINGSTATUS
-----------------------------------------------------------------------------------------------------------------------------------------
function func.fishingStatus()
	local ped = PlayerPedId()
	local coords = GetEntityCoords(ped)
	local distance = #(coords - vector3(-1202.71,2714.76,4.11))
	if distance <= 20 then
		return true
	end
	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- FISHINGANIM
-----------------------------------------------------------------------------------------------------------------------------------------
function func.fishingAnim()
	local ped = PlayerPedId()
	if IsEntityPlayingAnim(ped,"amb@world_human_stand_fishing@idle_a","idle_c",3) then
		return true
	end
	return false
end
----------------------------------------------------------------------------------------------------------------------------------------
-- PUTWEAPONHANDS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('tb-inventory:client:takingWeapon')
AddEventHandler('tb-inventory:client:takingWeapon', function(bool)
    takingWeapon = bool
end)

local timer = 0

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		if timer ~= 0 then
			timer = timer-1
		end
	end
end)
function checkhash(new)
	for k,v in pairs(config.weaponhash) do
		if v['name'] == new then
			hashk = k
		end
	end
	return hashk
end

function func.removeWeaponInHand()
	local ped = GetPlayerPed(-1)
	if HasPedGotWeapon(ped, GetHashKey(currentWeaponModel), false) then
		RemoveWeaponFromPed(ped, GetHashKey(currentWeaponModel))
		currentWeapon = nil
		currentWeaponModel = nil
	end
end