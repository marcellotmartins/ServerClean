local _IsPedInAnyVehicle = false

AddEventHandler("gameEventTriggered", function(eventName,args) 
	if eventName == "CEventNetworkPlayerEnteredVehicle" then 
		local selectedPed = args[1]
		if args[1] == PlayerId() then 
			_IsPedInAnyVehicle = true 
			vehicle = args[2]
            moto()
            lugarcar()
            motox()
            radarpolicia()
			while IsPedInAnyVehicle(PlayerPedId()) do
				Wait(100)
			end
			_IsPedInAnyVehicle = false 
		end
	end
end)


function moto()
    CreateThread( function()
        while _IsPedInAnyVehicle do
            Wait(5)  
            local veh = GetVehiclePedIsUsing(PlayerPedId())
            if veh ~= 0 then 
                SetPedConfigFlag(PlayerPedId(),35,false) 
            end
        end
    end)
end

local disableShuffle = true
function disableSeatShuffle(flag)
    disableShuffle = flag
end
function lugarcar()
    CreateThread(function()
        while _IsPedInAnyVehicle do
            Wait(0)
            if IsPedInAnyVehicle(GetPlayerPed(-1), false) and disableShuffle then
                if GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0) == GetPlayerPed(-1) then
                    if GetIsTaskActive(GetPlayerPed(-1), 165) then
                        SetPedIntoVehicle(GetPlayerPed(-1), GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
                    end
                end
            end
        end
    end)
end

function SeatShuffle()
	if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
        disableSeatShuffle(false)
        Citizen.Wait(5000)
        disableSeatShuffle(true)
    else
        CancelEvent()
    end
end

lugares = {-1,0,1,2,3,4,5,6,7,8,9,10,11,12,13,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30}

for k,v in pairs(lugares) do
    RegisterCommand("p"..k, function(source, args)
        if vRP.isHandcuffed() then
            return
        end
        local ped = PlayerPedId()
        SetPedConfigFlag(ped, 184, true)
        SetPedIntoVehicle(ped, GetVehiclePedIsIn(ped), v)
		SeatShuffle()
    end)
end

function motox()
    Citizen.CreateThread(function()
        while _IsPedInAnyVehicle do
            local idle = 500
            local ped = PlayerPedId()
            if IsPedInAnyVehicle(ped) then
                local vehicle = GetVehiclePedIsIn(ped)
                if GetPedInVehicleSeat(vehicle,0) == ped and GetVehicleClass(vehicle) == 8 then
                    idle = 5
                    DisableControlAction(0,73,true) 
                end
            end
            Citizen.Wait(idle)
        end
    end)
end


local radar = {
	shown = false,
	freeze = false,
	info = "INICIANDO O SISTEMA DO RADAR",
	info2 = "INICIANDO O SISTEMA DO RADAR"
}

function radarpolicia()
    Citizen.CreateThread(function()
		while true do
			local msec = 1000
			if _IsPedInAnyVehicle then 
				local ped = PlayerPedId()
				if IsPedInAnyPoliceVehicle(ped) or GetEntityModel(GetVehiclePedIsIn(ped, false)) == `wrbmwg20` or GetEntityModel(GetVehiclePedIsIn(ped, false)) == `wrsxr` or GetEntityModel(GetVehiclePedIsIn(ped, false)) == `wrraptor` then
					msec = 5
					if IsControlJustPressed(1,306) then
						if radar.shown then
							radar.shown = false
						else
							radar.shown = true
						end
					end
					
					if IsControlJustPressed(1, 301) then
						if radar.freeze then
							radar.freeze = false
						else
							radar.freeze = true
						end
					end
					
					if radar.shown then
						if radar.freeze == false then
							local coordA        = GetOffsetFromEntityInWorldCoords(vehicle, 0.0, 1.0, 1.0)
							local coordB        = GetOffsetFromEntityInWorldCoords(vehicle, 0.0, 105.0, 0.0)
							local frontcar      = StartShapeTestCapsule(coordA, coordB, 3.0, 10, vehicle, 7)
							local _, _, _, _, e = GetShapeTestResult(frontcar)
							
							if IsEntityAVehicle(e) then
								local fmodel  = GetDisplayNameFromVehicleModel(GetEntityModel(e))
								local fvspeed = GetEntitySpeed(e) * 2.236936
								local fplate  = GetVehicleNumberPlateText(e)
								radar.info    = string.format("~y~PLACA: ~w~%s   ~y~MODELO: ~w~%s   ~y~VELOCIDADE: ~w~%s MPH", fplate, fmodel, math.ceil(fvspeed))
							end
							
							local bcoordB       = GetOffsetFromEntityInWorldCoords(vehicle, 0.0, -105.0, 0.0)
							local rearcar       = StartShapeTestCapsule(coordA, bcoordB, 3.0, 10, vehicle, 7)
							local _, _, _, _, j = GetShapeTestResult(rearcar)
							
							if IsEntityAVehicle(j) then
								local bmodel  = GetDisplayNameFromVehicleModel(GetEntityModel(j))
								local bvspeed = GetEntitySpeed(j) * 2.236936
								local bplate  = GetVehicleNumberPlateText(j)
								radar.info2   = string.format("~y~PLACA: ~w~%s   ~y~MODELO: ~w~%s   ~y~VELOCIDADE: ~w~%s MPH", bplate, bmodel, math.ceil(bvspeed))
							end
						end
						drawTxt(radar.info, 4, 0.50, 0.83, 0.50, 255, 255, 255, 180)
						drawTxt(radar.info2, 4, 0.50, 0.87, 0.50, 255, 255, 255, 180)
					end
				else 
					break
				end
			else 
				radar.shown = false
				break
			end
			Wait(msec)
		end
	end)
end

function drawTxt(text,font,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextScale(scale,scale)
	SetTextColour(r,g,b,a)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x,y)
end