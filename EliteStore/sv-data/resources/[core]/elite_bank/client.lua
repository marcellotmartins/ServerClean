---------------------------------------------------------------------------------------------------------
--VRP
---------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
elite = Tunnel.getInterface("elite_bank")

---------------------------------------------------------------------------------------------------------
--VARIABLES
---------------------------------------------------------------------------------------------------------
local nui = false
---------------------------------------------------------------------------------------------------------
--THREAD
---------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        local th = 1000
        local ped = PlayerPedId()
        local PedPosition = GetEntityCoords(ped)
        local plyHash = GetEntityModel(ped)
        for k,v in pairs(config.LocBank) do
            local distance = GetDistanceBetweenCoords(PedPosition, vector3(v.x, v.y, v.z), true)
            if distance < 5.0 then 
                th = 5
                -- if distance <= 5 then   
                --     DrawMarker(29, v.x, v.y, v.z - 0.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.6, 0.6, 0.6, 153, 51, 255, 255, true, true, 2, true, 0, 0,false)
                --     DrawMarker(1, v.x, v.y, v.z - 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.8, 0.8, 0.3, 153, 51, 255, 255, false, true, 2, true, 0, 0,false)
                -- end
                if distance <= 1.5 then
                     DrawText3D(v.x,v.y,v.z, "~g~[BANCO]\n~w~PRESSIONE ~r~[E]~w~ PARA ACESSAR")
                    if IsControlJustPressed(1, 38) then
                        vRP._playAnim(false,{{'amb@prop_human_atm@male@idle_a','idle_a'}},false)
                        -- SetEntityHeading(PlayerPedId(), v.h)
                        -- SetCameraCoords()
                        -- SetTimeout(4000, function()
                            nui = true
                            if plyHash == GetHashKey("mp_m_freemode_01") or plyHash == GetHashKey("mp_f_freemode_01") then
                                local convertSex = nil
                                if plyHash == 1885233650 then
                                    convertSex = "logo"
                                else
                                    convertSex = "logo"
                                end
                                SetNuiFocus(true, true)
                                SendNUIMessage({nuisend = 'opened', pedhash = convertSex })
                            end       
                        -- end)
                    end
                end
            end 
        end
        Citizen.Wait(th)
    end
end)
---------------------------------------------------------------------------------------------------------
--EVENTS
---------------------------------------------------------------------------------------------------------
RegisterNUICallback('closed', function()
    vRP._stopAnim(false)
    DeleteCam()
    TransitionFromBlurred(1000)
    nui = false
    SetNuiFocus(false, false)
    SendNUIMessage({nuisend = 'closed'})
end)

RegisterNUICallback('requestInitial', function(data,cb)
    local query = elite.IdentifyUser()

    while not query do
        query = elite.IdentifyUser()
        Citizen.Wait(10)
    end

    if query then
        cb(query)
    end
end)

RegisterNUICallback('walletExpress', function()
    TriggerEvent('Procurado:ChecarProcurados')
    elite.WalletExpress() 
end)
RegisterNUICallback('WalletId', function(data)
    TriggerEvent('Procurado:ChecarProcurados')
    elite.Wallet(data.qtd) 
end)

RegisterNUICallback('TransferId', function(data,cb)
    TriggerEvent('Procurado:ChecarProcurados')
    elite.Transfer(data.qtd, data.number)
end)

RegisterNUICallback('Deposit', function(data,cb)
    TriggerEvent('Procurado:ChecarProcurados')
    elite.tryDeposit(data.qtd)
end)

RegisterNUICallback('Extract', function(data,cb)
   cb(json.encode(elite.QueryExtract()))

end)

RegisterNUICallback('FinesFast', function(data,cb)
    elite.FinesFast()
 end)

RegisterNUICallback('Fines', function(data,cb)
    elite.Fines()
 end)
---------------------------------------------------------------------------------------------------------
--FUNCTION
---------------------------------------------------------------------------------------------------------
function DrawText3D(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
end



function SetCameraCoords()
    RenderScriptCams(false, false, 0, 1, 0)
    DestroyCam(camera, false)
    if not DoesCamExist(camera) then
        camera = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
        SetCamActive(camera, true)
        RenderScriptCams(true, true, 1000, true, true)
                local ply = PlayerPedId()
                local plyCoords = GetEntityCoords(ply)
                local cameraCoords = GetOffsetFromEntityInWorldCoords(ply, 0.0, 2.0, 0.0)
                SetCamCoord(camera, cameraCoords.x, cameraCoords.y, cameraCoords.z + 0.85)
                PointCamAtCoord(camera, plyCoords.x, plyCoords.y, plyCoords.z + 0.15)
    end
end

function DeleteCam()
    SetCamActive(camera, false)
    RenderScriptCams(false, true, 0, true, true)
    camera = nil
end

