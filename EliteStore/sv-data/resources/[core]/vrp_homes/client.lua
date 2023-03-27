local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

src = {}
Tunnel.bindInterface("vrp_homes",src)
vSERVER = Tunnel.getInterface("vrp_homes")

local houseOpen = ""
local nowchest = nil

Citizen.CreateThread(function()
	SetNuiFocus(false,false)
end)

RegisterNUICallback("chestClose",function(data)
	vSERVER.chestClose()
	TransitionFromBlurred(1000)
	SetNuiFocus(false,false)
	SendNUIMessage({ action = "hideMenu" })
end)

RegisterNUICallback("takeItem",function(data)
	vSERVER.takeItem(data.item,data.slot,data.amount)
end)

RegisterNUICallback("storeItem",function(data)
	local ped = GetPlayerPed(-1)
	vSERVER.storeItem(data.item,data.slot,data.amount)
end)

RegisterNUICallback("populateSlot",function(data,cb)
	local ped = GetPlayerPed(-1)
	TriggerServerEvent("vrp_homes:populateSlot",data.item,data.slot,data.target,data.amount)
end)

RegisterNUICallback("updateSlot",function(data,cb)
	TriggerServerEvent("vrp_homes:updateSlot",data.item,data.slot,data.target,data.amount)
end)

RegisterNUICallback("sumSlot",function(data,cb)
	TriggerServerEvent("vrp_homes:sumSlot",data.item,data.slot,data.amount)
end)

RegisterNetEvent("vrp_homes:Update")
AddEventHandler("vrp_homes:Update",function(action)
	SendNUIMessage({ action = action })
end)

RegisterNUICallback("requestChest",function(data,cb)
	local inventario,inventario2,peso,maxpeso,peso2,maxpeso2,infos = vSERVER.openChest(nowchest)
	if inventario then
		cb({ inventario = inventario, inventario2 = inventario2, peso = peso, maxpeso = maxpeso, peso2 = peso2, maxpeso2 = maxpeso2, infos = infos })
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- Blip Entrar
-----------------------------------------------------------------------------------------------------------------------------------------
local homein = false
local casa = ''
Citizen.CreateThread(function()
	while true do
		local idle = 1000
		local ped = PlayerPedId()
		local playerCoords = GetEntityCoords(ped)
		for k,v in pairs(homes.homes) do
			if casa ~= '' then
				if k == casa then 
					if #(playerCoords - v['enter'].coords) < 3 then
						idle = 5
						DrawText3D(v['enter'].coords.x,v['enter'].coords.y,v['enter'].coords.z,'~y~E~w~  ENTRAR')
					else
						casa = ''
					end
				end
			elseif #(playerCoords - v['enter'].coords) < 3 then
				casa = k
			end
		end
		Citizen.Wait(idle)
	end
end)

function srkhomeexit(k)
Citizen.CreateThread(function()
	while homein do
		local idle = 1000
		local ped = PlayerPedId()
		local playerCoords = GetEntityCoords(ped)
		if #(playerCoords - vector3(homes.homes[k]['exit'].coords.x,homes.homes[k]['exit'].coords.y,homes.homes[k]['exit'].coords.z)) < 3 then
			idle = 5
			DrawText3D(homes.homes[k]['exit'].coords.x,homes.homes[k]['exit'].coords.y,homes.homes[k]['exit'].coords.z,'~y~E~w~  SAIR')
		end
		Citizen.Wait(idle)
	end
end)
end

function srkhomechest(k)
Citizen.CreateThread(function()
	while homein do
		local idle = 1000
		local ped = PlayerPedId()
		local playerCoords = GetEntityCoords(ped)
		if #(playerCoords - homes.homes[k]['vault'].coords) < 3 then
			idle = 5
			DrawText3D(homes.homes[k]['vault'].coords.x,homes.homes[k]['vault'].coords.y,homes.homes[k]['vault'].coords.z,'~y~E~w~  BAU')
		end
		Citizen.Wait(idle)
	end
end)
end

RegisterNetEvent("vrp_homes:join")
AddEventHandler("vrp_homes:join",function()
	local ped = PlayerPedId()
	local playerCoords = (GetEntityCoords(ped))
	for k,v in pairs(homes.homes) do
		local distance = #(playerCoords - v['enter'].coords)
		if distance <= 1.5 and vSERVER.checkPermissions(k) then
			homein = true
			srkhomechest(k)
			srkhomeexit(k)
			vSERVER.applyHouseOpen(k)
			DoScreenFadeOut(1000)
			TriggerEvent("vrp_sound:source","enterexithouse",0.7)
			SetTimeout(1400,function()
				SetEntityCoords(ped,v['exit'].coords.x+0.0001,v['exit'].coords.y+0.0001,v['exit'].coords.z+0.0001-1,1,0,0,1)
				Citizen.Wait(750)
				DoScreenFadeIn(1000)
				houseOpen = tostring(k)
			end)
		end
	end
end)

RegisterNetEvent("vrp_homes:exit")
AddEventHandler("vrp_homes:exit",function()
	if homein then
		local ped = PlayerPedId()
		local playerCoords = GetEntityCoords(ped)
		for k,v in pairs(homes.homes) do
			local distance = #(playerCoords - v['exit'].coords)
			if distance <= 1.5 then
				homein = false
				DoScreenFadeOut(1000)
				TriggerEvent("vrp_sound:source","enterexithouse",0.5)
				SetTimeout(1300,function()
					SetEntityCoords(ped,v['enter'].coords.x+0.0001,v['enter'].coords.y+0.0001,v['enter'].coords.z+0.0001-1,1,0,0,1)
					Citizen.Wait(750)
					DoScreenFadeIn(1000)
					nowchest = nil
					houseOpen = ""
				end)
			end
		end
	end
end)

RegisterNetEvent("vrp_homes:chest")
AddEventHandler("vrp_homes:chest",function()
	if homein then
		local ped = PlayerPedId()
		local playerCoords = GetEntityCoords(ped)
		for k,v in pairs(homes.homes) do
			local distance = #(playerCoords - v['vault'].coords)
			if distance <= 2.0 and vSERVER.checkIntPermissions(k) then
				if vSERVER.antidumphomes(k) then
					TriggerEvent("vrp_sound:source","mochila",0.5)
					SetNuiFocus(true,true)
					SendNUIMessage({ action = "showMenu" })
					houseOpen = tostring(k)
					nowchest = k
				else
					TriggerEvent("Notify","negado","Existe outra pessoa utilizando o bau.")
				end
			end
		end
	end
end)

local timer = 0

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(3000)
		if timer ~= 0 then
			timer = timer-1
		end
	end
end)

RegisterKeyMapping('vrp:use', 'Interação', 'keyboard', 'e')

RegisterCommand('vrp:use', function()
	if timer == 0 then
		timer = 1
		TriggerEvent('vrp_homes:join')
		TriggerEvent('vrp_homes:exit')
		TriggerEvent('vrp_homes:chest')
	end
end, false)

RegisterCommand('sair', function()
	local ped = PlayerPedId()
	local x,y,z = table.unpack(GetEntityCoords(ped))
	for k,v in pairs(homes.homes) do
		local _,i = GetGroundZFor_3dCoord(v.coords.x,v.coords.y,v.coords.z)
		local distance = Vdist(x,y,z,v.coords.x,v.coords.y,i)
		if distance <= 1.5 then
			homein = false
			DoScreenFadeOut(1000)
			TriggerEvent("vrp_sound:source","enterexithouse",0.5)
			SetTimeout(1300,function()
				SetEntityCoords(ped,v.coords.x+0.0001,v.coords.y+0.0001,v.coords.z+0.0001-1,1,0,0,1)
				Citizen.Wait(750)
				DoScreenFadeIn(1000)
				houseOpen = ""
			end)
		end
	end
end, false)

function src.getHomeStatistics()
	return tostring(houseOpen)
end

function src.setBlipsOwner(homeName)
	local blip = AddBlipForCoord(homes.homes[homeName]["enter"][1],homes.homes[homeName]["enter"][2],homes.homes[homeName]["enter"][3])
	SetBlipSprite(blip,411)
	SetBlipAsShortRange(blip,true)
	SetBlipColour(blip,36)
	SetBlipScale(blip,0.4)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Residência: ~g~"..homeName)
	EndTextCommandSetBlipName(blip)
end

function src.setBlipsHomes(status)
	for k,v in pairs(status) do
		local blip = AddBlipForCoord(homes.homes[v.name]["enter"][1],homes.homes[v.name]["enter"][2],homes.homes[v.name]["enter"][3])
		SetBlipSprite(blip,411)
		SetBlipAsShortRange(blip,true)
		SetBlipColour(blip,2)
		SetBlipScale(blip,0.4)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString("Disponível: ~g~"..v.name)
		EndTextCommandSetBlipName(blip)
		SetTimeout(30000,function()
			if DoesBlipExist(blip) then
				RemoveBlip(blip)
			end
		end)
	end
end

function DrawText3D(x,y,z,text)
	local onScreen,_x,_y = World3dToScreen2d(x,y,z)
	SetTextFont(4)
	SetTextScale(0.35,0.35)
	SetTextColour(255,255,255,100)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)
	local factor = (string.len(text)) / 400
	DrawRect(_x,_y+0.0125,0.01+factor,0.03,0,0,0,100)
end

