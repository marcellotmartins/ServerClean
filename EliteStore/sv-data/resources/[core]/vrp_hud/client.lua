local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

srv = Tunnel.getInterface('vrp_hud')

function getMinimapPos()
    SetScriptGfxAlign(string.byte('L'), string.byte('B'))
    local left, top = GetScriptGfxPosition(-0.0045, 0.002 + (-0.188888))
    ResetScriptGfxAlign()
    local w, h = GetActiveScreenResolution()
    local aspect_ratio = GetAspectRatio(0)
    local xscale = 1.0 / w
    local yscale = 1.0 / h
    local Minimap = {}
    Minimap.width = xscale * (w / (4 * aspect_ratio)) * w
    Minimap.height = yscale * (h / 5.674) * h 
    Minimap.top = h * top
    Minimap.left = w * left
    return Minimap
end


function isSameResolution(res1, res2)
    if res1[1] == res2[1] or res1[2] == res2[2] then return true end
    return false
end

function getTime()
    local hours = GetClockHours()
	local minutes = GetClockMinutes()
    if hours <= 9 then
        hours = "0"..hours
    end
    if minutes <= 9 then
        minutes = "0"..minutes
    end
    return hours..":"..minutes
end

local checkRes = function()
    local currentResolution = table.pack(GetActiveScreenResolution())
    Wait(1000)
    SendNUIMessage({action = "resolution", map = getMinimapPos()})
    while true do
        local newResolution = table.pack(GetActiveScreenResolution())
        if not isSameResolution(currentResolution, newResolution) then
            currentResolution = newResolution
            SendNUIMessage({action = "resolution", map = getMinimapPos()})
        end
        Wait(1000)
    end
end

local checkPlayerLevels = function()
    Wait(1000)
    local ped = PlayerPedId()
    local x,y,z = table.unpack(GetEntityCoords(ped))
    local currentHealth = ((GetEntityHealth(ped) - 100) * 100 / 200) / 100
    local currentArmour = GetPedArmour(ped)
    local currentStreet = GetStreetNameFromHashKey(GetStreetNameAtCoord(x,y,z))
    local currentFuel = 0.0
    local currentEngineHealth = 0.0
    local currentTime = getTime()
    SendNUIMessage({action = "updateHealth", health = currentHealth})
    SendNUIMessage({action = "updateArmour", armour = currentArmour})
    SendNUIMessage({action = "updateStreet", street = currentStreet})
    SendNUIMessage({action = "updateTime", time = currentTime})
    TriggerEvent("nation_hud:setVoipMode", 2)
    TriggerEvent("vrp_hud:setHunger", 0.000)
    TriggerEvent("vrp_hud:setThirst", 0.000)
    while true do
        ped = PlayerPedId()
        x,y,z = table.unpack(GetEntityCoords(ped))
        local health = ((GetEntityHealth(ped) - 100) * 100 / 200) / 100
        local armour = GetPedArmour(ped)
        local time = getTime()
        local street = GetStreetNameFromHashKey(GetStreetNameAtCoord(x,y,z))
        if currentHealth ~= health then
            currentHealth = health
            SendNUIMessage({action = "updateHealth", health = currentHealth})
        end
        if currentArmour ~= armour then
            currentArmour = armour
            SendNUIMessage({action = "updateArmour", armour = currentArmour})
        end
        if currentStreet ~= street then
            currentStreet = street
            SendNUIMessage({action = "updateStreet", street = currentStreet})
        end
        if currentTime ~= time then
            currentTime = time
            SendNUIMessage({action = "updateTime", time = currentTime})
        end
        inVehicle = IsPedInAnyVehicle(ped,false)
        if vehicleHudOn then
            local veh = GetVehiclePedIsIn(ped, false)
            if DoesEntityExist(veh) then
                local fuel = GetVehicleFuelLevel(veh) / 100
                local engineHealth = GetVehicleEngineHealth(veh) / 1000 
                if currentFuel ~= fuel then
                    currentFuel = fuel
                    SendNUIMessage({action = "updateFuel", fuel = currentFuel})
                end
                if currentEngineHealth ~= engineHealth then
                    currentEngineHealth = engineHealth
                    SendNUIMessage({action = "updateEngineHealth", engineHealth = currentEngineHealth})
                end
            end
        end
        Wait(500)
    end
end


local checkComponents = function()
    while true do
		Wait(1)
		HideHudComponentThisFrame(1)  -- Wanted Stars
		HideHudComponentThisFrame(2)  -- Weapon Icon
		HideHudComponentThisFrame(3)  -- Cash
		HideHudComponentThisFrame(4)  -- MP Cash
		HideHudComponentThisFrame(6)  -- Vehicle Name
		HideHudComponentThisFrame(7)  -- Area Name
		HideHudComponentThisFrame(8)  -- Vehicle Class
		HideHudComponentThisFrame(9)  -- Street Name
		HideHudComponentThisFrame(13) -- Cash Change
		HideHudComponentThisFrame(17) -- Save Game
		HideHudComponentThisFrame(20) -- Weapon Stats
		if IsPauseMenuActive() then -- ESC Key
			if not isPauseMenu then
				isPauseMenu = not isPauseMenu
				SendNUIMessage({action = "hideAll"})
			end
		else
			if isPauseMenu then
				isPauseMenu = not isPauseMenu
				SendNUIMessage({action = "showAll"})
			end
		end
	end
end


local checkSeatbelt = function()
    local beltSpeed = 0
	while vehicleHudOn do
		local idle = 500
        local ped = PlayerPedId()
		if IsPedInAnyVehicle(ped) then
			idle = 4
			local veh = GetVehiclePedIsUsing(ped)
			local vehClass = GetVehicleClass(veh)
			if (vehClass >= 0 and vehClass <= 7) or (vehClass >= 9 and vehClass <= 12) or (vehClass >= 17 and vehClass <= 20) then
				local speed = GetEntitySpeed(veh) * 3.6
				if speed ~= beltSpeed then
					if (beltSpeed - speed) >= 30 and not seatbeltOn then
						local entCoords = GetOffsetFromEntityInWorldCoords(veh,0.0,7.0,0.0)
						SetEntityHealth(ped,GetEntityHealth(ped)-50)

						SetEntityCoords(ped,entCoords.x,entCoords.y,entCoords.z+1)
						SetEntityVelocity(ped,entVelocity.x,entVelocity.y,entVelocity.z)
						Citizen.Wait(1)
						SetPedToRagdoll(ped,5000,5000,0,0,0,0)
					end
					beltSpeed = speed
					entVelocity = GetEntityVelocity(veh)
				end

				if seatbeltOn then
					DisableControlAction(1,75,true)
				end

				--[[ if IsControlJustReleased(1,47) then
					beltLock = not beltLock

					if not beltLock then
						TriggerEvent("vrp_sound:source","unbelt",0.5)
					else
						TriggerEvent("vrp_sound:source","belt",0.5)
					end
				end ]]
			end
		else
			if beltSpeed ~= 0 then
				beltSpeed = 0
			end

			if seatbeltOn then
				seatbeltOn = false
			end
		end

		Citizen.Wait(idle)
	end
end

local startVehicle = function()
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(ped, false)
    seatbeltOn = false
    SendNUIMessage({action = "updateSeatbelt", seatbeltOn = seatbeltOn})
    if not DoesEntityExist(vehicle) then return end
    CreateThread(checkSeatbelt)
    local currentSpeed = math.floor(GetEntitySpeed(vehicle) * 3.6)
    SendNUIMessage({action = "updateSpeed", speed = currentSpeed})
    while vehicleHudOn and DoesEntityExist(vehicle) do
        local speed = math.floor(GetEntitySpeed(vehicle) * 3.6)
        if currentSpeed ~= speed then
            currentSpeed = speed
            SendNUIMessage({action = "updateSpeed", speed = currentSpeed})
        end
        if IsControlJustPressed(0,47) then
            seatbeltOn = not seatbeltOn
            SendNUIMessage({action = "updateSeatbelt", seatbeltOn = seatbeltOn, pressed = true})
        end
        Wait(0)
    end
    seatbeltOn = false
end

local checkVehicle = function()
    vehicleHudOn = false
    DisplayRadar(false)
    while true do
        local idle = 500
        if inVehicle and not vehicleHudOn then
            vehicleHudOn = true
            DisplayRadar(true)
            CreateThread(startVehicle)
            SendNUIMessage({action = "showVehicleHud"})
        elseif not inVehicle and vehicleHudOn then
            vehicleHudOn = false
            DisplayRadar(false)
            SendNUIMessage({action = "hideVehicleHud"})
        end
        Wait(idle)
    end
end

Citizen.CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local health = GetEntityHealth(ped)
        local thirst,hunger = srv.getStats()
        if hunger >= 85 then
            StartScreenEffect("MenuMGSelectionIn", 0, true)
            SetEntityHealth(ped,health-3)
            TriggerEvent("Notify",'importante',"Importante","Você precisa comer <b>Urgentemente</b>.",8000)
        elseif thirst >= 80 then
            StartScreenEffect("MenuMGSelectionIn", 0, true)
            SetEntityHealth(ped,health-3)
            TriggerEvent("Notify",'importante',"Importante","Voce precisa beber <b>Urgentemente</b>.",8000)
        elseif hunger <= 80 then
            StopScreenEffect("MenuMGSelectionIn")
        elseif thirst <= 80 then
            StopScreenEffect("MenuMGSelectionIn")
        end
        Wait(5000)
    end
end)

-- local agachado_time = 0
-- Citizen.CreateThread(function()
--     while true do
--         kswait = 1000
--         local ped = PlayerPedId()
--         DisableControlAction(0,36,true)
-- 		if not IsPedInAnyVehicle(ped) then
-- 			kswait = 5
--             RequestAnimSet("move_ped_crouched")
--             RequestAnimSet("move_ped_crouched_strafing")
--             if IsDisabledControlJustPressed(0,36) then
--             	if agachado_time == 0 then
-- 	                if agachar then
-- 	                    ResetPedStrafeClipset(ped)
-- 	                    ResetPedMovementClipset(ped,0.25)
-- 	                    agachado_time = 1
-- 	                    agachar = false
-- 	                else
-- 	                    SetPedStrafeClipset(ped,"move_ped_crouched_strafing")
-- 	                    SetPedMovementClipset(ped,"move_ped_crouched",0.25)
-- 	                    agachado_time = 1
-- 	                    agachar = true
-- 	                end
-- 	            end
-- 	        end
--         end
-- 		Citizen.Wait(kswait)
--     end
-- end)

-- Citizen.CreateThread(function()
--     while true do
--         local f4rwaysleep = 1000
--         local ped = PlayerPedId()
--         local player = PlayerId()
-- 		if agachar then 
-- 			f4rwaysleep = 5
--             DisablePlayerFiring(player, true)
-- 		end
-- 		Citizen.Wait(f4rwaysleep)
--     end
-- end)

CreateThread(checkRes)
CreateThread(checkPlayerLevels)
CreateThread(checkComponents)
CreateThread(checkVehicle)

RegisterNetEvent('nation_hud:setVoipMode')
AddEventHandler('nation_hud:setVoipMode',function(mode)
    SendNUIMessage({action = "updateMic", mode = mode})
end)

RegisterNetEvent('vrp_hud:setHunger')
AddEventHandler('vrp_hud:setHunger',function(hunger)
    hunger = 1 - hunger
    SendNUIMessage({action = "updateHunger", hunger = hunger})
end)

RegisterNetEvent('vrp_hud:playerTalking')
AddEventHandler('vrp_hud:playerTalking',function(talking)
    SendNUIMessage({action = "updatePlayerTalking", talking = talking})
end)

RegisterNetEvent('vrp_hud:setThirst')
AddEventHandler('vrp_hud:setThirst',function(thirst)
    thirst = 1 - thirst
    SendNUIMessage({action = "updateThirst", thirst = thirst})
end)

-- Citizen.CreateThread(function()
--     while true do
--     	if agachado_time > 0 then
--     		agachado_time = agachado_time - 1
--     	end
--     	Citizen.Wait(1000)
--     end
-- end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100)
        SendNUIMessage({
            show = IsPauseMenuActive()
        })
    end
end)

