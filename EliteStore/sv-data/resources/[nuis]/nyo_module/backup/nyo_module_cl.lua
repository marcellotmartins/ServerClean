CreateThread(function()
    configGeneral = {}
    configLocs = {}
    configModule = {}
    configCommands = {}
    scriptStart = false
    --nScriptPort = 0

    barberStart = false
    
    nyoModuleC = {}
    Tunnel.bindInterface("nyo_module", nyoModuleC)
    nyoModuleS = Tunnel.getInterface("nyo_module")
    
    RegisterNetEvent("e0xCD902NCpCy")
    AddEventHandler("e0xCD902NCpCy", function(d1, d2, d3, d4, d5)      
        print('1') 
        configGeneral = d1
        configLocs = d2
        configModule = d3
        configCommands = d4
        LocalPlayer.state.configGeneral = d1 
        LocalPlayer.state.configLocs = d2 
        LocalPlayer.state.configModule = d3
        --local parsePort = parsePortFunc(GetCurrentServerEndpoint())
        --nScriptPort = d5
        -- LocalPlayer.state.configPort = d4 
        --if tonumber(parsePort[2]) == tonumber(nScriptPort) then 
        --end
        startModules()


    end)
    
    RegisterCommand("resetM", function(source, args, rawCommand)
        LocalPlayer.state.configGeneral = nil 
        LocalPlayer.state.configLocs = nil 
        LocalPlayer.state.configModule = nil
        LocalPlayer.state.configPort = nil
    end)

    RegisterNetEvent("e1xUnowFdVORO")
    AddEventHandler("e1xUnowFdVORO", function(d1, d2) 
        configGeneral = d1 
        configModule = d2
        LocalPlayer.state.configGeneral = d1 
        LocalPlayer.state.configModule = d2
    end)
    
    --[[RegisterNetEvent("e2xkLdLOYRRDP")
    AddEventHandler("e2xkLdLOYRRDP", function(d1) 
        nScriptPort = d1
        LocalPlayer.state.configPort = d1 
    end)]]
    
    CreateThread(function()   
       -- DisplayRadar(false)
        Wait(2000)
        if nyoModuleS.f0x4a3DiLpFo3() then   
            scriptStart = true
            startScript()        
            startSecurity()
        
            scriptStart = true
            configGeneral = LocalPlayer.state.configGeneral
            configLocs = LocalPlayer.state.configLocs
            configModule = LocalPlayer.state.configModule
            --nScriptPort = LocalPlayer.state.configPort
            startModules()
            startScript()        
            startSecurity()
        end

    end)
    
    function parsePortFunc(endpoint)
        return splitString(endpoint,":")
    end
    
    function startSecurity()
        
        --[[CreateThread(function()
            while true do 
                Wait(120000)
                local parsePort = parsePortFunc(GetCurrentServerEndpoint())
                if tonumber(parsePort[2]) ~= tonumber(nScriptPort) then 
                    configGeneral = {}
                    LocalPlayer.state.configGeneral = {}
                    configModule = {}
                    LocalPlayer.state.configModule = {}
                end
            end
        end)]]
    end

    RegisterNetEvent("e3xp35Ccns7GZ")
    AddEventHandler("e3xp35Ccns7GZ", function()       
        barberStart = true
    end)
    
    function f(n)
        if n ~= nil then         
            n = n + 0.00000
        else 
            n = 0.00000
        end
        return n
    end
    
    function startScript()
        inJob = false 
        atualJob = ''
        inShop = false
        showMarker = false
        TriggerEvent('cancelando',false)
        blips = {}
        doorsGeneral = {}
        openDoorAction = false
        fuelConfig = {
            index = nil,
            isFueling = false,
            canFuel = false,
            abastecer = false,
            config = {},
            pumpId = nil,
            pumpBrand = nil,
            pumpPrice = nil,
            vehicleId = nil,
            vehicleFuel = 0,
            userMoney = 0,
            currentFuel = 0,
            totalFuel = 0,
            totalVehicleFuel = 0,
            totalPrice = 0,
        }
        shopConfig = {
            parts = {
                mascara = 1,
                mao = 3,
                calca = 4,
                mochila = 5,
                sapato = 6,
                gravata = 7,
                camisa = 8,
                colete = 9,
                jaqueta = 11,
                bone = "p0",
                oculos = "p1",
                brinco = "p2",
                relogio = "p6",
                bracelete = "p7",
                outfit = 'outfit'
            },
            
            carroCompras = {
                mascara = false,
                mao = false,
                calca = false,
                mochila = false,
                sapato = false,
                gravata = false,
                camisa = false,
                colete = false,
                jaqueta = false,
                bone = false,
                oculos = false,
                brinco = false,
                relogio = false,
                bracelete = false
            },
    
            old = {
    
            }
        }
    
        barberConfig = {
            parts = {
                ["Defeitos"] = 0,
                ["Barba"] = 1,
                ["Sobrancelhas"] = 2,
                ["Envelhecimento"] = 3,
                ["Maquiagem"] = 4,
                ["Blush"] = 5,
                ["Rugas"] = 6,
                ["Batom"] = 8,
                ["Sardas"] = 9,
                ["Cabelo no Peito"] = 10,
                ["Manchas no Corpo"] = 11,
                ["Cabelo"] = 12,
                ["Cor Sec. do Cabelo"] = 13
            },
    
            
            old = {
                ["0"] = 0,
                ["9"] = 0,
                ["8"] = 0,
                ["10"] = 0,
                ["12"] = 0,
                ["13"] = 0,
                ["6"] = 0,
                ["5"] = 0,
                ["4"] = 0,
                ["3"] = 0,
                ["2"] = 0,
                ["1"] = 0,
            },
            
            carroCompras = {
                ["0"] = false,
                ["9"] = false,
                ["8"] = false,
                ["10"] = false,
                ["12"] = false,
                ["13"] = false,
                ["6"] = false,
                ["5"] = false,
                ["4"] = false,
                ["3"] = false,
                ["2"] = false,
                ["1"] = false,
            }
        }
    
        CreateThread(function()         
            for k,v in pairs(configLocs) do 
                local config = v.config 
                local gConfig = configGeneral[config][1]
                local blipCoord = v.coord
                if v.showBlip then 
                    blips[gConfig.input..k] = AddBlipForCoord(blipCoord.x,blipCoord.y,blipCoord.z)
                    SetBlipSprite(blips[gConfig.input..k],gConfig.blip.blipId)
                    SetBlipColour(blips[gConfig.input..k],gConfig.blip.blipColor)
                    SetBlipScale(blips[gConfig.input..k],gConfig.blip.blipScale)
                    SetBlipAsShortRange(blips[gConfig.input..k],true)
                    BeginTextCommandSetBlipName("STRING")
                    AddTextComponentString(gConfig.blip.name)
                    EndTextCommandSetBlipName(blips[gConfig.input..k])
                end     
            end 
        end)

        CreateThread(function()
            for k,v in pairs(configCommands) do 
                local config = v.config 
                local gConfig = configGeneral[config][1]
                local blipCoord = v.coord
                
                registerCmd = false
                if gConfig.type == 'skinShop' and configModule['skinShop'] then 
                    registerCmd = true
                elseif gConfig.type == 'barberShop' and configModule['barberShop'] then 
                    registerCmd = true
                elseif gConfig.type == 'tattooShop' and configModule['tattooShop'] then 
                    registerCmd = true
                end
               
                if registerCmd then 
                    if v.showBlip then 
                        blips[gConfig.input..k] = AddBlipForCoord(blipCoord.x,blipCoord.y,blipCoord.z)
                        SetBlipSprite(blips[gConfig.input..k],gConfig.blip.blipId)
                        SetBlipColour(blips[gConfig.input..k],gConfig.blip.blipColor)
                        SetBlipScale(blips[gConfig.input..k],gConfig.blip.blipScale)
                        SetBlipAsShortRange(blips[gConfig.input..k],true)
                        BeginTextCommandSetBlipName("STRING")
                        AddTextComponentString(gConfig.blip.name)
                        EndTextCommandSetBlipName(blips[gConfig.input..k])
                    end 

                    RegisterCommand(v.command, function(source, args)
                        ped = PlayerPedId()
                        local pedCoord = GetEntityCoords(ped)
                        local distance = #(pedCoord - v.coord)
                        local config = gConfig
                        if distance < v.raio then 
                            openAction = false 

                            if(config.perm == '') then 
                                openAction = true 
                            else
                                if(nyoModuleS.f1xpZBm2vRC5U(config.perm)) then 
                                    openAction = true 
                                end
                            end

                            if openAction then                                 
                                local h = GetEntityHeading(ped)
                                if config.type == 'skinShop' then                                     
                                    openShop('skinShop', config.shopType, config.shopConfig, pedCoord.x, pedCoord.y, pedCoord.z, h)    
                                elseif config.type == 'barberShop' then 
                                    openShop('barberShop', config.shopType, config.shopConfig, pedCoord.x, pedCoord.y, pedCoord.z, h)
                                elseif config.type == 'tattooShop' then 
                                    openShop('tattooShop', 'all', config.shopConfig, pedCoord.x, pedCoord.y, pedCoord.z, h)
                                end
                            end
                        end
                    end)
                end
                  
                
               
               
            end
        end)

        locsProximit = {}
        CreateThread(function()
            if #configLocs > 0 then 
                while true do 
                    local nyoSleep = 3000
                    local locsTempProximit = {}
                    if scriptStart and not inShop then 
                        ped = PlayerPedId()
                        local pedCoord = GetEntityCoords(ped)
                        for k,v in pairs(configLocs) do 
                            local config = v.config 
                            local gConfig = configGeneral[config][1]
                            local mType = gConfig.type
                            local showMarker = false
                            if mType == 'job' and not inJob then 
                                showMarker = true
                            elseif mType == 'job' and inJob then 
                                showMarker = false
                            else 
                                showMarker = true
                            end
                            
                            if showMarker then 
                                local mCoord = v.coord 
                                local distance = #(pedCoord - mCoord)
                                if configModule[mType] then 
                                    local analiseDistance = 10 
                                    if mType == 'fuel' then 
                                        analiseDistance = 30
                                    elseif mType == 'doorGates' then 
                                        analiseDistance = v.distance + 10
                                    end 
                                    
                                    if distance < analiseDistance then 
                                       local pId = v.id or 0
                                       locsTempProximit[#locsTempProximit + 1] = {loc = mCoord, heading = v.heading, mType = mType, config = config, id = pId, spawn = v.spawn}
                                    end
                                end
                            end
                        end
                        locsProximit = locsTempProximit
                    end
                    Wait(nyoSleep)
                end
            end
        end)

        CreateThread(function()
            SetNuiFocus(false, false)
            if #configLocs > 0 then 
                while true do 
                    local nyoSleep = 1000
                    local ped = PlayerPedId()                    
                    local pedCoord = GetEntityCoords(ped)
                    local fuelIdentity = false
                    for k,v in pairs(locsProximit) do                     
                        local mCoord = v.loc 
                        local mType = v.mType
                        
                        local gConfig = configGeneral[v.config][1]
                        local distance = #(pedCoord - mCoord)
                        local showMarker = false
                        if mType == 'job' and not inJob then 
                            showMarker = true
                        elseif mType == 'job' and inJob then 
                            showMarker = false
                        else 
                            showMarker = true
                        end
                        if showMarker and not inShop then   
                            if mType ~= 'fuel' and mType ~= 'doorGates' then      
                                nyoSleep = 4 
                                markerDict = 0
                                markerName = 0 
                                
                                if gConfig.marker.custom then 
                                    if gConfig.marker.custom.active then                                         
                                        markerDict = gConfig.marker.custom.dict
                                        markerName = gConfig.marker.custom.name

                                        if not HasStreamedTextureDictLoaded(markerDict) then
                                            RequestStreamedTextureDict(markerDict, true)
                                            while not HasStreamedTextureDictLoaded(markerDict) do
                                                Wait(1)
                                            end
                                        end
                                    end
                                end

                                DrawMarker(gConfig.marker.id,mCoord,0,0,0,gConfig.marker.rotacao and gConfig.marker.rotacao[1] or 0.0,gConfig.marker.rotacao and gConfig.marker.rotacao[2] or 180.0,gConfig.marker.rotacao and gConfig.marker.rotacao[3] or 130.0,gConfig.marker.scale[1] or 1.0,gConfig.marker.scale[2] or 1.0,gConfig.marker.scale[3] or 1.0,gConfig.marker.color[1] or 255,gConfig.marker.color[2] or 0,gConfig.marker.color[3] or 0,gConfig.marker.color[4] or 100,gConfig.marker.bobUpAndDown or 0,gConfig.marker.faceCamera or 0,0,gConfig.marker.rotation or 0, markerDict, markerName)
                                if distance < 1.1 then
                                    if IsControlJustPressed(0, gConfig.actionKey) then 
                                        local openAction = false
            
                                        if(gConfig.perm == '') then 
                                            openAction = true 
                                        else
                                            if(nyoModuleS.f1xpZBm2vRC5U(gConfig.perm)) then 
                                                openAction = true 
                                            end
                                        end
                                        if mType == 'job' then 
                                            -- Faz as paradas do Job
                                            inJob = true
                                            atualJob = gConfig.input
                                            TriggerEvent('ev0x4HgmE8SUVa:'..atualJob..'ev1xsv9gR1WhwC')                                                 
                                            SendNUIMessage({acao = 'openJob', job = gConfig.displayName})
                                            startJob()
                                        elseif mType == 'skinShop' or mType == 'barberShop' then 
                                            if openAction then 
                                                inShop = true                                                      
                                                openShop(mType, gConfig.shopType, gConfig.shopConfig, v.loc.x, v.loc.y, v.loc.z, v.heading)
                                                -- openShop(mType, gConfig.shopType, gConfig.shopConfig, v.loc.x, v.loc.y, v.loc.z, v.heading)
                                            end
                                        elseif mType == 'tattooShop' then 
                                            if openAction then 
                                                inShop = true                                                      
                                                openShop(mType, 'all', gConfig.shopConfig, v.loc.x, v.loc.y, v.loc.z, v.heading)
                                            end
                                        elseif mType == 'elevador' then 
                                            if openAction then 
                                                openNuiElevador(gConfig.locs, gConfig.elevadorName)
                                            end
                                        elseif mType == 'navShop' then 
                                            if openAction then 
                                                inShop = true
                                                openNavShop(gConfig.shopConfig)
                                            end
                                        elseif mType == 'bennys' then 
                                            if openAction then
                                                inShop = true
                                                openBennys(gConfig.bennysConfig)
                                            end
                                        elseif mType == 'garagem' then 
                                            if openAction then
                                                inShop = true
                                                openNuiGarage(v.id,gConfig.garagemConfig, v.spawn)
                                            end
                                        elseif mType == 'conce' then 
                                            if openAction then
                                                inShop = true
                                                openConce(gConfig.conceConfig)
                                            end
                                        elseif mType == 'cloakRoom' then 
                                            if openAction then
                                                inShop = true
                                                openNuiCloakRoom(gConfig.cloakConfig)
                                            end   
                                        elseif mType == 'robbery' then 
                                            if openAction then 
                                                if nyoModuleS.f2xtx9H0onNun(gConfig) then 
                                                    if nyoModuleS.f3xAuSQcQJd0K(gConfig, v.id) then 
                                                        local robberySequence = false 
                                                        if gConfig.robberyRequestItem then 
                                                            if nyoModuleS.i1xqC9bSMGyPU(gConfig.robberyItem.item, tonumber(gConfig.robberyItem.qtd)) then 
                                                                robberySequence = true
                                                            end
                                                        else 
                                                            robberySequence = true
                                                        end
                                                        if robberySequence then 
                                                            local rMinigame = gConfig.minigame
                                                            local rStart = false
                                                            if rMinigame == 'nptask' then 
                                                                local exp = exports["np-taskbarskill"]:taskBar(1200,7)
                                                                if exp == 100 then 
                                                                    rStart = true 
                                                                end
                                                            elseif rMinigame == 'skillbar' then 
                                                                local exp = exports['skillbar']:skillBarStart()
                                                                if exp then 
                                                                    rStart = true
                                                                end
                                                            elseif rMinigame == 'keymaster' then 
                                                                local exp = exports['cd_keymaster']:StartKeyMaster()
                                                                if exp then 
                                                                    rStart = true
                                                                end
                                                            elseif rMinigame == 'pdsafe' then 
                                                                local exp = exports["pd-safe"]:createSafe({math.random(0,99)})
                                                                if exp then 
                                                                    rStart = true 
                                                                end
                                                            else 
                                                                rStart = true
                                                            end
        
                                                            if rStart then                                                                                 
                                                                nyoModuleS.f4xY2LEw1vNS4(gConfig, v.id)
                                                                nyoModuleS.f5xB0sTuRIbgh(gConfig,v.loc.x, v.loc.y, v.loc.z)
                                                                -- iniciar o roubo aqui
                                                                SetEntityHeading(ped,v.heading)
                                                                SetEntityCoords(ped,v.loc.x, v.loc.y, v.loc.z-1,false,false,false,false)
                                                                vRP._playAnim(false,{{"anim@heists@ornate_bank@grab_cash_heels","grab"}},true)
                                                                TriggerEvent("vrp_sound:source",'alarm',0.7)
                                                                SetPedComponentVariation(ped,5,45,0,2)
                                                                TriggerEvent('cancelando',true)
                                                                FreezeEntityPosition(ped, true)
                                                                timeRoubo = gConfig.robberyTime
                                                                timeRouboAfter = 0
                                                                robberyPorcent = 0
                                                                startRobberyKey()
                                                                while timeRoubo > 0 do 
                                                                    Wait(1000)
                                                                    timeRoubo = timeRoubo - 1
                                                                    timeRouboAfter = timeRouboAfter + 1
                                                                end
                                                                ClearPedTasks(ped)
                                                                TriggerEvent('cancelando',false)
                                                                FreezeEntityPosition(ped, false)
                                                                nyoModuleS.f6x3eP1ewXwjv(gConfig, timeRouboAfter)
                                                            else 
                                                                nyoModuleS.i0xSfi9p2N3Qn(gConfig, v.id)
                                                                -- mensagem de falhar o roubo aqui
                                                            end
                                                        else 
                                                            nyoModuleS.i0xSfi9p2N3Qn(gConfig, v.id)
                                                        end                                                                        
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end    

                            elseif mType == 'fuel' then 
                                if distance < 30.0 then                               
                                    fuelIdentity = true
                                    if fuelConfig.index ~= v.id then                                                                      
                                        fuelConfig.index = v.id
                                        startFuelPumps(gConfig.configFuel, v.loc.x, v.loc.y, v.loc.z)
                                    end
                                end   
 
                            elseif mType == 'doorGates' then 
                                local doorCfg = doorsGeneral[v.id]
                              
                                if doorCfg then 
                                    if distance < doorCfg.distance then 
                                        nyoSleep = 4                                        
                                        if doorCfg then     
                                            local doorText = ''
                                            if doorCfg.lock then 
                                                doorText = 'TRANCADA'
                                                dMinigame = gConfig.dataOpen.miniGame
                                                doorTime = gConfig.dataOpen.openTime
                                                
                                                if IsPedInAnyVehicle(ped) then 
                                                    doorAnimDict = gConfig.dataOpen.animDictVehicle
                                                    doorAnim = gConfig.dataOpen.animVehicle
                                                else 
                                                    doorAnimDict = gConfig.dataOpen.animDict
                                                    doorAnim = gConfig.dataOpen.anim
                                                end
                                                
                                            else 
                                                doorText = 'DESTRANCADA'
                                                dMinigame = gConfig.dataClose.miniGame
                                                doorTime = gConfig.dataClose.openTime
                                                if IsPedInAnyVehicle(ped) then 
                                                    doorAnimDict = gConfig.dataClose.animDictVehicle
                                                    doorAnim = gConfig.dataClose.animVehicle
                                                else 
                                                    doorAnimDict = gConfig.dataClose.animDict
                                                    doorAnim = gConfig.dataClose.anim
                                                end
                                            end
    
                                            if doorCfg.text then                                             
                                                DrawText3Ds(v.loc.x, v.loc.y, v.loc.z+0.2, doorText)
                                            end
    
                                            if IsControlJustPressed(0, gConfig.actionKey) then 
                                                local openAction = false
                    
                                                if(gConfig.perm == '') then 
                                                    openAction = true 
                                                else
                                                    if(nyoModuleS.f1xpZBm2vRC5U(gConfig.perm)) then 
                                                        openAction = true 
                                                    end
                                                end
                                                
                                                if not openDoorAction then 
                                                    openDoorAction = true                                                     
                                                    if openAction then 

                                                        if doorAnimDict ~= '' then 
                                                            RequestAnimDict(doorAnimDict)
                                                            while not HasAnimDictLoaded(doorAnimDict) do
                                                                Wait(10)
                                                            end
                                                            TaskPlayAnim(ped,doorAnimDict,doorAnim,8.0,8.0,-1,49,1.0,0,0,0)
                                                            
                                                            RemoveAnimDict(doorAnimDict)
                                                        end                                                      
    
                                                        local dStart = false
                                                        
                                                        if dMinigame == 'nptask' then 
                                                            local exp = exports["np-taskbarskill"]:taskBar(1200,7)
                                                            if exp == 100 then 
                                                                dStart = true 
                                                            end
                                                        elseif dMinigame == 'skillbar' then 
                                                            local exp = exports['skillbar']:skillBarStart()
                                                            if exp then 
                                                                dStart = true
                                                            end
                                                        elseif dMinigame == 'keymaster' then 
                                                            local exp = exports['cd_keymaster']:StartKeyMaster()
                                                            if exp then 
                                                                dStart = true
                                                            end
                                                        elseif dMinigame == 'pdsafe' then 
                                                            local exp = exports["pd-safe"]:createSafe({math.random(0,99)})
                                                            if exp then 
                                                                dStart = true 
                                                            end
                                                        else 
                                                            dStart = true
                                                            Wait(doorTime * 1000)
                                                        end
                                                        
                                                        if dStart then 
                                                            ClearPedTasks(ped)
                                                            TriggerServerEvent('nyo_module:OpenDoor', v.id)
                                                        end
                                                    end
                                                    openDoorAction = false
                                                end
                                                
                                            end
                                           
                                        end
                                    end
                                end                                
                            end
                        end
                       
                    end
    
                    if not fuelIdentity then 
                        fuelConfig.index = nil 
                    end
                    Wait(nyoSleep)
                end
            end            
        end)
    end   
    
    function startModules()
        SendNUIMessage({acao = "load", dados = configModule})
        -- funções para Loja de Roupa, Barbershop e TattooShop
        if configModule['skinShop'] or configModule['guardaRoupa'] or configModule['barberShop'] or configModule['tattooShop'] then         
            valor = 0
            precoTotal = 0
            noProvador = false
            oldC = nil -- Old do barberShop
            cor = 0
            old_custom = {}
            nCustom = {}
            dataPartE = 1
            dataPartD = 'p1'
            configShop = {}
            typeShop = nil
    
            pos = nil
            camPos = nil
            camPos2 = nil
            cam = -1
            
            oldH = 0
            oldRotation = 0
            
            function openShop(tipo, typeOpen, config, x, y, z, h)
                ped = PlayerPedId()
                --ultLoja = k
                valor = 0
                precoTotal = 0
                noProvador = true
                configShop = config
                Wait(40)
                if tipo == 'skinShop' then 
                    dataPartE = 1
                    dataPartD = 'p1'
                    old_custom = getCustomization()
                    nCustom = old_custom
                elseif tipo == 'guardaRoupa' then 
                    dataPartE = 1
                    dataPartD = 'p1'
                    old_custom = getCustomization()
                    nCustom = old_custom
                elseif tipo == 'barberShop' then 
                    dataPartE = 12
                    dataPartD = 4
                    for k,v in pairs(LocalPlayer.state.pedCustom) do
                        old_custom[k] = v
                    end
                    oldC = getBarberOverlay()
                elseif tipo == 'tattooShop' then 
                    dataPartE = 'head'
                    old_custom = getCustomization()
                    setTattooRoupa()
                end
                
                shopProvador() 
                cor = 0
                
                TaskGoToCoordAnyMeans(ped, x, y ,z, 1.0, 0, 0, 786603, 0xbf800000)
                CreateThread(function()
                    while noProvador do 
                        Wait(4)
                        if #(GetEntityCoords(ped) - vector3(x,y,z)).xy < 0.5 then 
                            oldH = h
                            SetEntityHeading(ped, h)                       
                            ClearPedTasks(ped)
                            oldRotation = 0
                            noProvador = false
                            openGuiShop(tipo, typeOpen, config, old_custom)                              
                            FreezeEntityPosition(ped, true)
                            SetEntityInvincible(ped, false) --MQCU 
                            IsEntityStatic(ped)
                        end
                    end
                end)            
            end  
            
            function openGuiShop(tipo, typeOpen, config, old_custom)
                ped = PlayerPedId()
                SetNuiFocus(true, true)
                typeShop = tipo
                local pedModel = GetEntityModel(ped)
                local sexo = ''
                local prefix = ''
                if pedModel == GetHashKey("mp_m_freemode_01") then
                    sexo = 'Male'
                    prefix = 'M'                
                elseif pedModel == GetHashKey("mp_f_freemode_01") then 
                    sexo = 'Female'
                    prefix = 'F'
                end
                if tipo == 'skinShop' or tipo == 'guardaRoupa' then 
                    drawaE = getSkinShopDrawables(dataPartE)
                    categoryE = dataPartE
                    drawaD = getSkinShopDrawables(dataPartD)
                    categoryD = dataPartD
                    SendNUIMessage({acao = tipo, type = typeOpen, config = config, oldpart = old_custom, sexo = sexo, prefix = prefix, drawaE = drawaE, categoryE = categoryE, drawaD = drawaD, categoryD = categoryD})
                elseif tipo == 'barberShop' then
                    drawaE = getBarberShopDrawables(dataPartE)
                    textureE = getBarberShopTextures(dataPartE)
                    categoryE = dataPartE
                    drawaD = getBarberShopDrawables(dataPartD)
                    textureD = getBarberShopTextures(dataPartD)
                    categoryD = dataPartD 
    
                    SendNUIMessage({acao = tipo, type = typeOpen, config = config, oldpart = oldC, sexo = sexo, prefix = prefix, drawaE = drawaE, textureE = textureE, categoryE = categoryE, drawaD = drawaD, textureD = textureD, categoryD = categoryD})
                elseif tipo == 'tattooShop' then 
                    categoryE = 'head'
                    LocalPlayer.state.oldTattos = LocalPlayer.state.tattos
                    SendNUIMessage({acao = tipo, config = config, oldpart = LocalPlayer.state.tattos, sexo = sexo, prefix = prefix, categoryE = categoryE})
                end
                SetCameraCoords('all', true)
            end
    
            function shopProvador() 
                ped = PlayerPedId()
                CreateThread(function()
                    while inShop do
                        DisableControlAction(1, 1, true)
                        DisableControlAction(1, 2, true)
                        DisableControlAction(1, 24, true)
                        DisablePlayerFiring(ped, true)
                        DisableControlAction(1, 142, true)
                        DisableControlAction(1, 106, true)
                        DisableControlAction(1, 37, true)
                        Wait(4)
                    end
                end)
            end
    
            function SetCameraCoords(type, start)
                ped = PlayerPedId()
                if start then                
                    RenderScriptCams(false, false, 0, 1, 0)
                    DestroyCam(cam, false)
                end
                
                if not DoesCamExist(cam) then
                    cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
                    SetCamActive(cam, true)
                    RenderScriptCams(true, true, 500, true, true)   
                    pos = GetEntityCoords(ped)
                    camPos = GetOffsetFromEntityInWorldCoords(ped, 0.0, 2.0, 0.0)
                    camPos2 = GetOffsetFromEntityInWorldCoords(ped, 0.0, 0.8, 0.0)       
                end
    
                    if type == 'all' then                                        
                        SetCamCoord(cam, camPos.x, camPos.y, camPos.z+0.75)
                        PointCamAtCoord(cam, pos.x, pos.y, pos.z+0.15)
                    elseif type == 'head' then 
                        SetCamCoord(cam, camPos2.x, camPos2.y, camPos2.z+0.7)
                        PointCamAtCoord(cam, pos.x, pos.y, pos.z+0.7)
                    elseif type == 'torso' then 
                        SetCamCoord(cam, camPos2.x, camPos2.y, camPos2.z+0.40)
                        PointCamAtCoord(cam, pos.x, pos.y, pos.z+0.20)
                    elseif type == 'shoes' then 
                        SetCamCoord(cam, camPos2.x, camPos2.y, camPos2.z-0.30)
                        PointCamAtCoord(cam, pos.x, pos.y, pos.z-0.30)
                    elseif type == 'foot' then 
                        SetCamCoord(cam, camPos2.x, camPos2.y, camPos2.z-0.70)
                        PointCamAtCoord(cam, pos.x, pos.y, pos.z-0.70)
                    end        
            end
            
            function DeleteCam()
                SetCamActive(cam, false)
                RenderScriptCams(false, true, 0, true, true)
                cam = nil
            end
    
            
            function updateCarroCompras(type)
                valor = 0
                if type == 'skinShop' then 
                    for k, v in pairs(shopConfig.carroCompras) do
                        if shopConfig.carroCompras[k] == true then
                            local somaValor = configShop[k]['price']
                            valor = valor + somaValor
                        end
                    end
                elseif type == 'barberShop' then 
                    for k, v in pairs(barberConfig.carroCompras) do
                        if barberConfig.carroCompras[k] == true then
                            local somaValor = configShop[tonumber(k)]['price']
                            valor = valor + somaValor
                        end
                    end
                end
                
                precoTotal = valor
                return valor
            end
    
            RegisterNUICallback("ButtonClick",function(data,cb)
                if data == "exit" then
                    closeGuiShop(true)
    
    
    
                elseif data == "payment" then 
                    local type = typeShop
                    local price = precoTotal 
                    local data = {}
                    if type == 'skinShop' then                     
                        data = getCustomization()
                        nyoModuleS.f7xl29TgFHMRm(type,price,data)
                    elseif type == 'guardaRoupa' then 
                        nyoModuleC.h4xpHhDjdvzjl(true)
                    elseif type == 'barberShop' then 
                        data = LocalPlayer.state.pedCustom
                        nyoModuleS.f7xl29TgFHMRm(type,price,data)
                    elseif type == 'tattooShop' then 
                        data = LocalPlayer.state.tattos
                        nyoModuleS.f7xl29TgFHMRm(type,price,data)
                    end
    
                    
                end
            end)
    
            function nyoModuleC.h4xpHhDjdvzjl(type)
                print(type)
                if type then                   
                    closeGuiShop(false)
                else 
                    closeGuiShop(true)
                end
                SendNUIMessage({
                    closeNui = true
                })  
            end

            function closeGuiShop(reset)
                ped = PlayerPedId()
                ClearPedTasks(ped)
                SetNuiFocus(false, false)
                FreezeEntityPosition(ped, false)
                SetEntityInvincible(ped, false)
            
                if DoesCamExist(cam) then
                    RenderScriptCams(false, false, 0, 1, 0)
                    DestroyCam(cam, false)     
                end

                if typeShop == 'skinShop' then 
                    shopConfig.carroCompras = {
                        mascara = false,
                        mao = false,
                        calca = false,
                        mochila = false,
                        sapato = false,
                        gravata = false,
                        camisa = false,
                        colete = false,
                        jaqueta = false,
                        bone = false,
                        oculos = false,
                        brinco = false,
                        relogio = false,
                        bracelete = false
                    }
            
                    shopConfig.old = {}

                    if reset then                         
                        setCustomization(old_custom)
                    end

                elseif typeShop == 'guardaRoupa' then 
                    if reset then                         
                        setCustomization(old_custom)
                    end
                elseif typeShop == 'barberShop' then 
                    if reset then 
                        LocalPlayer.state.pedCustom = old_custom
                        TaskUpdateSkinOptions()
                        TaskUpdateFaceOptions()
                        TaskUpdateHeadOptions()
                    end

                    barberConfig.old = {
                        ["0"] = 0,
                        ["9"] = 0,
                        ["8"] = 0,
                        ["10"] = 0,
                        ["12"] = 0,
                        ["13"] = 0,
                        ["6"] = 0,
                        ["5"] = 0,
                        ["4"] = 0,
                        ["3"] = 0,
                        ["2"] = 0,
                        ["1"] = 0,
                    }

                    barberConfig.carroCompras = {
                        ["0"] = false,
                        ["9"] = false,
                        ["8"] = false,
                        ["10"] = false,
                        ["12"] = false,
                        ["13"] = false,
                        ["6"] = false,
                        ["5"] = false,
                        ["4"] = false,
                        ["3"] = false,
                        ["2"] = false,
                        ["1"] = false,
                    }

                elseif typeShop == 'tattooShop' then 
                    if reset then 
                        LocalPlayer.state.tattos = LocalPlayer.state.oldTattos
                        nyoModuleC.h0x5cinlMr3mT()
                    end
                    
                    LocalPlayer.state.oldTattos = {}
                    setCustomization(old_custom)
                end

                inShop = false

                old_custom = {}
                nCustom = {}
                configShop = {}
                valor = 0
                precoTotal = 0
            end
        end
    
    
        -- Start Module Skinshop functions
        if configModule['skinShop'] then 
            function getSkinShopDrawables(part)
                ped = PlayerPedId()
                local isprop, index = parse_part(part)
                if isprop then
                    return GetNumberOfPedPropDrawableVariations(ped,index)
                else
                    return GetNumberOfPedDrawableVariations(ped,index)
                end
            end

            -- RegisterCommand("openSkinShop", function(source, args)
            --     local ped = PlayerPedId()
            --     local coord = GetEntityCoords(ped)
            --     local h = GetEntityHeading(ped)

            --     local configShopCapi = configGeneral['configSkinShopAll'][1].shopConfig
               
            --     openShop('skinShop', 'all', configShopCapi, coord.x, coord.y, coord.z, h)
            -- end)
            
            RegisterNUICallback("changeSkinShopPart", function(data, cb)
                local newPart = ''
                local menu = data.menu
                if menu == 'D' then
                    dataPartD = shopConfig.parts[data.part]
                    newPart = dataPartD
                elseif menu == 'E' then 
                    dataPartE = shopConfig.parts[data.part]
                    newPart = dataPartE
                end
                
                SendNUIMessage({
                    updateSkinShop = true,
                    newPart = newPart,
                    drawa = getSkinShopDrawables(newPart),
                    menu = menu
                })
            end)
    
            RegisterNUICallback("changeSkinShopMenuColor", function(data, cb)
                ped = PlayerPedId()
                local dPart = data.part;
                local dId = data.itemId;
                local menu = data.menu;
                local menuChange = data.menuChange;
                local change = data.change;
                local color = data.color;
                local isprop, index = parse_part(dPart)
                if isprop then 
                    max = GetNumberOfPedPropTextureVariations(ped, index, dId)
                else 
                    max = GetNumberOfPedTextureVariations(ped, index, dId)
                end
    
                if menuChange then 
                    SendNUIMessage({
                        updateSkinShopColor = true,
                        menu = menu,
                        drawa = max,
                        roupaId = dId
                    })
                end 
    
                if change and change ~= 0 then 
                    changeSkinShopClouth(dPart,dId,color)
                end
            
            end)
    
            function changeSkinShopClouth(dados, tipo, cor)
                ped = PlayerPedId()
                local isprop, index = parse_part(dados)
    
                if isprop then 
                    if(tipo == -1) then 
                        ClearPedProp(ped, index)
                    else      
                        SetPedPropIndex(ped, index, tipo, cor, 1)
                    end  
                else 
                    SetPedComponentVariation(ped, index, tipo, cor, 1)
                end
                
                custom = getCustomization()
                custom.modelhash = nil
            
                aux = old_custom[dados]
                v = custom[dados]
            
                if v[1] ~= aux[1] and shopConfig.old[dados] ~= "custom" then
                    shopConfig.carroCompras[dados] = true
                    shopConfig.old[dados] = "custom"
                end
                if v[1] == aux[1] and shopConfig.old[dados] == "custom" then
                    shopConfig.carroCompras[dados] = false                
                    shopConfig.old[dados] = "0"
                end
                price = updateCarroCompras('skinShop')
    
                
                SendNUIMessage({ updateSkinShopPrice = true, value = price })
            end
        end  
    
        -- Start Module Guarda Roupa functions
        if configModule['guardaRoupa'] then 
            RegisterNetEvent("nyoModule:GuardaRoupa:abrir")
            AddEventHandler("nyoModule:GuardaRoupa:abrir", function(x, y, z, x2, y2, z2)
                ped = PlayerPedId()
                local distance = #(vector3(x,y,z) - vector3(x2,y2,z2))
                if distance <= 1 then 
                    local coordG = GetEntityCoords(ped)
                    local h = GetEntityHeading(ped)
                    local dataGuardaRoupa = nyoModuleS.f8xFnbhoSnLlT()
                    openShop('guardaRoupa', '', dataGuardaRoupa, coordG.x, coordG.y, coordG.z, h)
                end    
            end)

            RegisterCommand("guardaroupa", function(source, args, RawCommand)
                TriggerEvent("nyoModule:GuardaRoupa:abrir", 1,1,1,1,1,1)
            end)
    
            RegisterNUICallback("changeGuardaRoupaPart", function(data, cb)
                local newPart = ''
                local menu = data.menu
                if menu == 'D' then
                    dataPartD = shopConfig.parts[data.part]
                    newPart = dataPartD
                elseif menu == 'E' then 
                    dataPartE = shopConfig.parts[data.part]
                    newPart = dataPartE
                end
                
                SendNUIMessage({
                    updateGuardaRoupa = true,
                    newPart = newPart,
                    drawa = getSkinShopDrawables(newPart),
                    menu = menu
                })
            end)
    
            RegisterNUICallback("salvarOutfit", function(data, cb)
                local roupa = getCustomization()
                local name = data
                nyoModuleS.f9xZMgc8iuy84(name, roupa)
                local dataGuardaRoupa = nyoModuleS.f8xFnbhoSnLlT()
                SendNUIMessage({
                    updateGuardaRoupaOutFit = true,
                    newPart = dataPartD,
                    drawa = getSkinShopDrawables(dataPartD),
                    config = dataGuardaRoupa,
                    menu = 'D'
                })
            end)
    
            RegisterNUICallback("guardaRoupaUsarOutfit", function(data, cb)
                local roupa = getCustomization()
                local name = data
                local outfit = nyoModuleS.g0xoiW9rtKQCD(name)
                if outfit ~= nil then 
                    setCustomization(outfit)
                end
            end)
    
            RegisterNUICallback("guardaRoupaExcluirOutfit", function(data, cb)
                local name = data
                nyoModuleS.g1x2ktZ9C3DzW(name, roupa)
                local dataGuardaRoupa = nyoModuleS.f8xFnbhoSnLlT()
                SendNUIMessage({
                    updateGuardaRoupaOutFit = true,
                    newPart = dataPartD,
                    drawa = getSkinShopDrawables(dataPartD),
                    config = dataGuardaRoupa,
                    menu = 'D'
                })
            end)
            
    
            RegisterNUICallback("changeGuardaRoupaMenuColor", function(data, cb)
                ped = PlayerPedId()
                local dPart = data.part;
                local dId = data.itemId;
                local menu = data.menu;
                local menuChange = data.menuChange;
                local change = data.change;
                local color = data.color;
                local isprop, index = parse_part(dPart)
                if isprop then 
                    max = GetNumberOfPedPropTextureVariations(ped, index, dId)
                else 
                    max = GetNumberOfPedTextureVariations(ped, index, dId)
                end
    
                if menuChange then 
                    SendNUIMessage({
                        updateGuardaRoupaColor = true,
                        menu = menu,
                        drawa = max,
                        roupaId = dId
                    })
                end 
    
                if change and change ~= 0 then 
                    changeGuardaRoupaClouth(dPart,dId,color)
                end
            
            end)
    
            function changeGuardaRoupaClouth(dados, tipo, cor)
                ped = PlayerPedId()
                local isprop, index = parse_part(dados)
    
                if isprop then 
                    if(tipo == -1) then 
                        ClearPedProp(ped, index)
                    else      
                        SetPedPropIndex(ped, index, tipo, cor, 1)
                    end  
                else 
                    SetPedComponentVariation(ped, index, tipo, cor, 1)
                end
            end
        end
        
        -- Start Module BarberShop functions
        if configModule['barberShop'] then 
            if LocalPlayer.state.pedCustom == nil then 
                CreateThread(function()                    
                    Wait(3000)
                    nyoModuleS.g2xeb7DT6he5R()
                end)
            end

            -- RegisterCommand("openBarberShop", function(source, args)
            --     local ped = PlayerPedId()
            --     local coord = GetEntityCoords(ped)
            --     local h = GetEntityHeading(ped)

            --     local configShopCapi = configGeneral['configBarberShopAll'][1].shopConfig
               
            --     openShop('barberShop', 'all', configShopCapi, coord.x, coord.y, coord.z, h)
            -- end)
    
            local barberThread = 0
            CreateThread(function()
                if LocalPlayer.state.pedCustom == nil then 
                    while barberThread < 50 do             
                        Wait(1000)
                        if barberStart then                     
                            TaskUpdateSkinOptions()
                            TaskUpdateFaceOptions()
                            TaskUpdateHeadOptions()
                        end
                        barberThread = barberThread + 1
                    end
                end                
            end)

            RegisterNetEvent("e3xsmSLE4IJss")
            AddEventHandler("e3xsmSLE4IJss", function()       
                barberStart = true
            end)

    
            RegisterNetEvent("nyoModule:barberUpdate")
            AddEventHandler("nyoModule:barberUpdate", function(type)
                if LocalPlayer.state.pedCustom == nil then 
                    if type then 
                        nyoModuleS.g2xeb7DT6he5R()
                    else                 
                        TaskUpdateSkinOptions()
                        TaskUpdateFaceOptions()
                        TaskUpdateHeadOptions()
                    end
                else 
                    TaskUpdateSkinOptions()
                    TaskUpdateFaceOptions()
                    TaskUpdateHeadOptions()
                end

            end)
            
            function nyoModuleC.h1x7NIHlM2JII(data)
                LocalPlayer.state.pedCustom = data
                TaskUpdateSkinOptions()
                TaskUpdateFaceOptions()
                TaskUpdateHeadOptions()
            end
    
            function TaskUpdateSkinOptions()
                ped = PlayerPedId()
                local data = LocalPlayer.state.pedCustom
                SetPedHeadBlendData(ped,data.fathersID,data.mothersID,0,data.skinColor,0,0,f(data.shapeMix),0,0,false)
            end
            
            function TaskUpdateFaceOptions()
                ped = PlayerPedId()
                local data = LocalPlayer.state.pedCustom
                -- Olhos
                SetPedEyeColor(ped,data.eyesColor)
                -- Sobrancelha
                SetPedFaceFeature(ped,6,data.eyebrowsHeight)
                SetPedFaceFeature(ped,7,data.eyebrowsWidth)
                -- Nariz
                SetPedFaceFeature(ped,0,data.noseWidth)
                SetPedFaceFeature(ped,1,data.noseHeight)
                SetPedFaceFeature(ped,2,data.noseLength)
                SetPedFaceFeature(ped,3,data.noseBridge)
                SetPedFaceFeature(ped,4,data.noseTip)
                SetPedFaceFeature(ped,5,data.noseShift)
                -- Bochechas
                SetPedFaceFeature(ped,8,data.cheekboneHeight)
                SetPedFaceFeature(ped,9,data.cheekboneWidth)
                SetPedFaceFeature(ped,10,data.cheeksWidth)
                -- Boca/Mandibula
                SetPedFaceFeature(ped,12,data.lips)
                SetPedFaceFeature(ped,13,data.jawWidth)
                SetPedFaceFeature(ped,14,data.jawHeight)
                -- Queixo
                SetPedFaceFeature(ped,15,data.chinLength)
                SetPedFaceFeature(ped,16,data.chinPosition)
                SetPedFaceFeature(ped,17,data.chinWidth)
                SetPedFaceFeature(ped,18,data.chinShape)
                -- Pescoço
                SetPedFaceFeature(ped,19,data.neckWidth)
            end
            
            function TaskUpdateHeadOptions()
                ped = PlayerPedId()
                local data = LocalPlayer.state.pedCustom
            
                -- Cabelo
                SetPedComponentVariation(ped,2,data.hairModel,0,0)
                SetPedHairColor(ped,data.firstHairColor,data.secondHairColor)
            
                -- Sobrancelha 
                SetPedHeadOverlay(ped,2,data.eyebrowsModel,data.eyebrowsOpacity or 0.99)
                SetPedHeadOverlayColor(ped,2,1,data.eyebrowsColor,data.eyebrowsColor)
            
                -- Barba
                SetPedHeadOverlay(ped,1,data.beardModel, data.bardOpacity or 0.01)
                SetPedHeadOverlayColor(ped,1,1,data.beardColor,data.beardColor)
            
                -- Pelo Corporal
                SetPedHeadOverlay(ped,10,data.chestModel, data.chestOpacity or 0.01)
                SetPedHeadOverlayColor(ped,10,1,data.chestColor,data.chestColor)
            
                -- Blush
                SetPedHeadOverlay(ped,5,data.blushModel,data.blushOpacity or 0.01)
                SetPedHeadOverlayColor(ped,5,1,data.blushColor,data.blushColor)
            
                -- Battom
                SetPedHeadOverlay(ped,8,data.lipstickModel, data.lipstickOpacity or 0.01)
                SetPedHeadOverlayColor(ped,8,1,data.lipstickColor,data.lipstickColor)
            
                -- Manchas
                SetPedHeadOverlay(ped,0,data.blemishesModel, data.blemishesOpacity or 0.01)
                SetPedHeadOverlayColor(ped,0,0,0,0)
            
                -- Envelhecimento
                SetPedHeadOverlay(ped,3,data.ageingModel, data.ageingOpacity or 0.01)
                SetPedHeadOverlayColor(ped,3,0,0,0)
            
                -- Aspecto
                SetPedHeadOverlay(ped,6,data.complexionModel, data.complexionopacity or 0.99)
                SetPedHeadOverlayColor(ped,6,0,0,0)
            
                -- Pele
                SetPedHeadOverlay(ped,7,data.sundamageModel, data.sundamageOpacity or 0.99)
                SetPedHeadOverlayColor(ped,7,0,0,0)
            
                -- Sardas
                SetPedHeadOverlay(ped,9,data.frecklesModel, data.frecklesOpacity or 0.01)
                SetPedHeadOverlayColor(ped,9,0,0,0)
            
                -- Maquiagem
                SetPedHeadOverlay(ped,4,data.makeupModel,data.makeUpOpacity or 0.01)
                SetPedHeadOverlayColor(ped,4,0,10,15)
            end
    
            function getBarberShopDrawables(part)
                ped = PlayerPedId()
                if part == 12 then
                    return tonumber(GetNumberOfPedDrawableVariations(ped,2))
                elseif part == -1 then
                    return tonumber(GetNumberOfPedDrawableVariations(ped,0))
                elseif part == -2 then
                    return 64
                else
                    return tonumber(GetNumHeadOverlayValues(part))
                end
            end
            
            function getBarberShopTextures(part)
                if part == -1 then
                    return tonumber(GetNumHairColors())
                else
                    return 64
                end
            end
    
            function getBarberOverlay()
                local bConfig = LocalPlayer.state.pedCustom
                local overlay = {
                    ["0"] = { bConfig.blemishesModel,0 },
                    ["9"] = { bConfig.frecklesModel,0 },
                    ["8"] = { bConfig.lipstickModel,bConfig.lipstickColor },
                    ["10"] = { bConfig.chestModel,bConfig.chestColor },
                    ["12"] = { bConfig.hairModel,bConfig.firstHairColor },
                    ["13"] = { bConfig.hairModel,bConfig.secondHairColor },
                    ["6"] = { bConfig.complexionModel,0 },
                    ["5"] = { bConfig.blushModel,bConfig.blushColor },
                    ["4"] = { bConfig.makeupModel,0 },
                    ["3"] = { bConfig.ageingModel,0 },
                    ["2"] = { bConfig.eyebrowsModel,bConfig.eyebrowsColor },
                    ["1"] = { bConfig.beardModel,bConfig.beardColor }
                }
                return overlay
            end
    
            RegisterNUICallback("changeBarberShopPart", function(data, cb)
                local newPart = ''
                local menu = data.menu
    
                if menu == 'D' then
                    dataPartD = data.part
                    newPart = dataPartD
                elseif menu == 'E' then 
                    dataPartE = data.part
                    newPart = dataPartE
                end
    
                local opacity = 0.99
    
                local bConfig = LocalPlayer.state.pedCustom
    
                if tonumber(newPart) == 0 then 
                opacity = bConfig.blemishesOpacity or 0.99
                elseif tonumber(newPart) == 1 then 
                opacity = bConfig.bardOpacity or 0.99
                elseif tonumber(newPart) == 2 then 
                    opacity = bConfig.eyebrowsOpacity or 0.99
                elseif tonumber(newPart) == 3 then 
                    opacity = bConfig.ageingOpacity or 0.99
                elseif tonumber(newPart) == 4 then 
                    opacity = bConfig.makeUpOpacity or 0.99        
                elseif tonumber(newPart) == 5 then 
                    opacity = bConfig.blushOpacity or 0.99
                elseif tonumber(newPart) == 6 then 
                    opacity = bConfig.complexionopacity or 0.99
                elseif tonumber(newPart) == 7 then 
                    opacity = bConfig.sundamageOpacity or 0.99
                elseif tonumber(newPart) == 8 then 
                    opacity = bConfig.lipstickOpacity or 0.99
                elseif tonumber(newPart) == 9 then 
                    opacity = bConfig.frecklesOpacity or 0.99
                elseif tonumber(newPart) == 10 then 
                    opacity = bConfig.chestOpacity or 0.99
                end
                
                SendNUIMessage({
                    updateBarberShop = true,
                    newPart = newPart,
                    drawa = getBarberShopDrawables(tonumber(newPart)),
                    texture = getBarberShopTextures(tonumber(newPart)),
                    opacity = tonumber(opacity),
                    menu = menu
                })
            end)
            
            RegisterNUICallback("changeBarberShopItem", function(data, cb)
                local type = tonumber(data.part)
    
                if tonumber(data.itemId) ~= oldC[tostring(type)][1] and barberConfig.old[tostring(type)] ~= "custom" then 
                    barberConfig.carroCompras[tostring(type)] = true
                    barberConfig.old[tostring(type)] = "custom"
                end
    
                if tonumber(data.itemId) == oldC[tostring(type)][1] and barberConfig.old[tostring(type)] == "custom" then 
                    barberConfig.carroCompras[tostring(type)] = false                
                    barberConfig.old[tostring(type)] = "0"
                end
    
                price = updateCarroCompras('barberShop')
    
                local bConfig = LocalPlayer.state.pedCustom
                if type == 1 then -- Barba
                    bConfig.beardModel = tonumber(data.itemId)
                elseif type == 2 then --Sobrancelhas
                    bConfig.eyebrowsModel = tonumber(data.itemId)
                elseif type == 3 then -- Envelhecimento
                    bConfig.ageingModel = tonumber(data.itemId)
                elseif type == 4 then --Maquiagem
                    bConfig.makeupModel = tonumber(data.itemId)	
                elseif type == 5 then -- Blush 
                    bConfig.blushModel = tonumber(data.itemId)
                elseif type == 6 then -- Rugas 
                    bConfig.complexionModel = tonumber(data.itemId)
                elseif(type == 8) then --Batom
                    bConfig.lipstickModel = tonumber(data.itemId)
                elseif(type == 9) then -- Sardas 
                    bConfig.frecklesModel = tonumber(data.itemId)
                elseif(type == 10) then -- Cabelo do Peito 
                    bConfig.chestModel = tonumber(data.itemId)
                elseif type == 12 then -- Cabelo
                    bConfig.hairModel = tonumber(data.itemId)
                end
                LocalPlayer.state.pedCustom = bConfig
                TaskUpdateSkinOptions()
                TaskUpdateFaceOptions()
                TaskUpdateHeadOptions()
    
                SendNUIMessage({ updateBarberShopPrice = true, value = price })
            end)
    
            RegisterNUICallback("changeBarberShopOpacity", function(data, cb)
                local type = tonumber(data.part)
                local bConfig = LocalPlayer.state.pedCustom
    
                if type == 0 then 
                    bConfig.blemishesOpacity = tonumber(data.opacity)
                elseif type == 1 then 
                    bConfig.bardOpacity = tonumber(data.opacity)
                elseif type == 2 then 
                    bConfig.eyebrowsOpacity = tonumber(data.opacity)
                elseif type == 3 then 
                    bConfig.ageingOpacity = tonumber(data.opacity)
                elseif type == 4 then 
                    bConfig.makeUpOpacity = tonumber(data.opacity)            
                elseif type == 5 then 
                    bConfig.blushOpacity = tonumber(data.opacity)
                elseif type == 6 then 
                    bConfig.complexionopacity = tonumber(data.opacity)
                elseif type == 7 then 
                    bConfig.sundamageOpacity = tonumber(data.opacity)
                elseif type == 8 then 
                    bConfig.lipstickOpacity = tonumber(data.opacity)
                elseif type == 9 then 
                    bConfig.frecklesOpacity = tonumber(data.opacity)
                elseif type == 10 then 
                    bConfig.chestOpacity = tonumber(data.opacity)
                end
                LocalPlayer.state.pedCustom = bConfig
                TaskUpdateSkinOptions()
                TaskUpdateFaceOptions()
                TaskUpdateHeadOptions()
            end)
    
            RegisterNUICallback("changeBarberShopColor", function(data, cb)
                local dataType = tonumber(data.part);
                local dColor = tonumber(data.color);
                local type = tonumber(data.type);
                local bConfig = LocalPlayer.state.pedCustom
    
                if dataType == 1 or dataType == 2 or dataType == 5 or dataType == 8 or dataType == 10 then 
                    if type == 1 then 
                        if dataType == 1 then 				
                            bConfig.beardColor = dColor
                        elseif dataType == 2 then 
                            bConfig.eyebrowsColor = dColor
                        elseif dataType == 5 then 
                            bConfig.blushColor = dColor
                        elseif dataType == 8 then 
                            bConfig.lipstickColor = dColor
                        elseif dataType == 10 then 
                            bConfig.chestColor = dColor
                        end
                    end
                elseif dataType == 12 then 
                    if type == 1 then 			
                        bConfig.firstHairColor = dColor
                    else			
                        bConfig.secondHairColor = dColor
                    end
                end
                LocalPlayer.state.pedCustom = bConfig
                TaskUpdateSkinOptions()
                TaskUpdateFaceOptions()
                TaskUpdateHeadOptions()
            end)
    
    
            RegisterNetEvent("nyoModule:refreshBarber")
            AddEventHandler("nyoModule:refreshBarber",function()
                TaskUpdateSkinOptions()
                TaskUpdateFaceOptions()
                TaskUpdateHeadOptions()
            end)
            
            
        end
    
    
        -- Start Module BarberShop functions
        if configModule['tattooShop'] then 
            CreateThread(function()
                if LocalPlayer.state.tattos == nil then                     
                    nyoModuleS.g3xCpO4E1hRjU()
                end
            end)

            -- RegisterCommand("openTattooShop", function(source, args)
            --     local ped = PlayerPedId()
            --     local coord = GetEntityCoords(ped)
            --     local h = GetEntityHeading(ped)

            --     local configShopCapi = configGeneral['configTattooShopAll'][1].shopConfig
               
            --     openShop('tattooShop', 'all', configShopCapi, coord.x, coord.y, coord.z, h)
            -- end)
    
            function nyoModuleC.h2xUrVozUesT0(data)
                LocalPlayer.state.tattos = data
            end
    
            function nyoModuleC.h0x5cinlMr3mT()
                ped = PlayerPedId()
                ClearPedDecorations(ped)
                for k,v in pairs(LocalPlayer.state.tattos) do
                    AddPedDecorationFromHashes(ped,GetHashKey(v[1]),GetHashKey(k))
                end
            end
    
            RegisterNetEvent("nyoModule:tattooUpdate")
            AddEventHandler("nyoModule:tattooUpdate", function(type)
                if LocalPlayer.state.tattoos == nil then 
                    if type then 
                        nyoModuleS.g3xCpO4E1hRjU()
                    else                 
                        nyoModuleC.h0x5cinlMr3mT()
                    end
                else 
                    nyoModuleC.h0x5cinlMr3mT()
                end
            end)
    
            function atualizarTattooNUI()
                ped = PlayerPedId()
                ClearPedDecorations(ped)
                for k,v in pairs(LocalPlayer.state.tattos) do       
                    AddPedDecorationFromHashes(ped,GetHashKey(v[1]),GetHashKey(k))
                end
    
                SendNUIMessage({ updateTattooShopPrice = true, value = precoTotal })
            end
    
            function setTattooRoupa()
                local modelHash = old_custom.modelhash
                local idleCopy = {}
                for l,w in pairs(configShop.roupaPelado[modelHash]) do
                    idleCopy[l] = w
                end
            
                setCustomization(idleCopy)
            end
    
            RegisterNetEvent("nyoModule:refreshTattoo")
            AddEventHandler("nyoModule:refreshTattoo",function()
                nyoModuleC.h0x5cinlMr3mT()
            end)
    
            RegisterNUICallback("changeTattooShopItem", function(data, cb)
                local pId = data.itemId + 1
                local pType = data.part
                local sexo = data.sexo
    
                local tattooData = configShop['parts'..sexo][pType]['tattoo'][pId]
                    if LocalPlayer.state.tattos[tattooData['name']] ~= nil then 
                        local newAtualTattoo = {}
                        for k,v in pairs(LocalPlayer.state.tattos) do 
                            if k ~= tattooData['name'] then 
                                newAtualTattoo[k] = v
                            end
                        end
                        LocalPlayer.state.tattos = newAtualTattoo
            
                            if LocalPlayer.state.oldTattos[tattooData['name']] == nil then 
                                precoTotal = precoTotal - tattooData['price']
                            end
                        atualizarTattooNUI()
                    else 
                        local newAtualTattoo = {}
                        for k,v in pairs(LocalPlayer.state.tattos) do 
                            if k ~= tattooData['name'] then 
                                newAtualTattoo[k] = v
                            end
                        end
                        newAtualTattoo[tattooData['name']] = {tattooData['part']}
                        LocalPlayer.state.tattos = newAtualTattoo
                        if LocalPlayer.state.oldTattos[tattooData['name']] == nil then 
                            precoTotal = precoTotal + tattooData['price']
                        end
                        atualizarTattooNUI()
                    end  
            end)
    
            RegisterNUICallback("limpaTattoo", function(data, cb)
                LocalPlayer.state.tattos = {}
                precoTotal = 0
                atualizarTattooNUI()
            end)
        end
    
    
        -- Start Module Notify functions
        if configModule['notify'] then 
            RegisterNetEvent("nyo_notify")
            AddEventHandler("nyo_notify",function(tipo, titulo, mensagem, delay, icon)
                SendNUIMessage({ acao = 'notify', tipo = tipo, titulo = titulo, mensagem = mensagem, delay = delay, icon = icon })
            end) 
            
            RegisterNetEvent("Notify")
            AddEventHandler("Notify", function(css, mensagem)
                local tipo = '#FFFFFF'
                if css == 'sucesso' then 
                    tipo = '#00FF00'
                elseif css == 'erro' then 
                    tipo = '#FF0000'
                elseif css == 'importante' then 
                    tipo = '#FFD700'
                end
                SendNUIMessage({ acao = 'notify', tipo = tipo, titulo = 'Notify', mensagem = mensagem, delay = 5000 })
            end)
        end

        -- Start Module Notify Item functions
        if configModule['notifyItem'] then 
            RegisterNetEvent("nyo_notifyItem")
            AddEventHandler("nyo_notifyItem",function(item, itemName, qtd, cor, delay)
                SendNUIMessage({ acao = 'notifyItem', item = item, itemName = itemName, qtd = qtd, cor = cor, delay = delay })
            end) 
        end

        -- Start Module ProgressBar functions
        if configModule['progressBar'] then 
            RegisterNetEvent("progress")
            AddEventHandler("progress",function(time,text)
                SendNUIMessage({ acao = 'progressBar', titulo = text, time = time })
            end)
        end
    
    
        -- Start Module NuiConfig functions
        if configModule['nuiConfig'] then 
            CreateThread(function()
                nyoModuleS.g4xgTc70PhiAc()
            end)
            RegisterCommand('nuiconfig', function(source, args, rawCommand)
                if not inShop then                 
                    SetNuiFocus(true, true);
                    SendNUIMessage({ acao = 'nuiConfig' })
                end
            end)
    
            RegisterNUICallback("NuiConfigColorChange", function(data, cb)
                SendNUIMessage({ acao = 'changeNuiColor', color = data})
                SetNuiFocus(false, false)
                SendNUIMessage({ closeNui = true}) 
                nyoModuleS.g5xIB4aoAnXCW(data)
            end)
    
            RegisterNUICallback("ButtonClick2",function(data,cb)
                ped = PlayerPedId()
                SetNuiFocus(false, false)
                ClearPedTasks(ped)
                SetNuiFocus(false, false)
                FreezeEntityPosition(ped, false)
                SetEntityInvincible(ped, false)
            end)
    
            function nyoModuleC.h3xMByXyYmLQo(data)
                SendNUIMessage({ acao = 'changeNuiColor', color = data})
            end        
        end
    
        -- Start Module Elevador functions
        if configModule['elevador'] then 
            elevadorLocs = {}
            function openNuiElevador(locs, eName) 
                elevadorLocs = locs
                SetNuiFocus(true, true)
                SendNUIMessage({ openElevador = true, locs = locs, elevadorName = eName})
            end
    
            RegisterNUICallback("elevadorMove", function(data, cb)
                ped = PlayerPedId()
                SendNUIMessage({ closeNui = true})            
                DoScreenFadeOut(1000)
                TriggerEvent("vrp_sound:source",'elevatorbell',0.5)
                Wait(1000)
                SetEntityCoords(ped, elevadorLocs[data].coord, false, false, false, true)
                SetEntityHeading(ped, elevadorLocs[data].heading)
                Wait(1000)
                SetNuiFocus(false, false)
                DoScreenFadeIn(1000)
                elevadorLocs = {}
            end)
    
            RegisterNUICallback("ButtonClick3",function(data,cb)
                ped = PlayerPedId()
                SetNuiFocus(false, false)
                ClearPedTasks(ped)
                SetNuiFocus(false, false)
                FreezeEntityPosition(ped, false)
                SetEntityInvincible(ped, false)
            end)
        end
    
    
        -- Start Module Job functions
        if configModule['job'] then 
            function startJob() 
                CreateThread(function()
                    while inJob do 
                        Wait(4)
                        if IsControlJustPressed(0, 168) then 
                            TriggerEvent('ev0x4HgmE8SUVa:'..atualJob..'ev1xETKFkm5XSz')
                            SendNUIMessage({acao = 'closeJob'}) 
                            inJob = false
                        end
                    end
                end)
            end
    
            
            if configModule['job1'] then
               ---------------- START EMP ONIBUS
                local onibusTrabalhando = false
                local rotaAtualOnibus = 1
                local cfgOnibus = {}
        
                RegisterNetEvent('ev0x4HgmE8SUVa:motoristaev1xsv9gR1WhwC')
                AddEventHandler('ev0x4HgmE8SUVa:motoristaev1xsv9gR1WhwC', function()
                    onibusTrabalhando = true
                    rotaAtualOnibus = 1
                    Wait(5)                     
                    onibusEmpStart()
                end)
        
        
                RegisterNetEvent('ev0x4HgmE8SUVa:motoristaev1xETKFkm5XSz')
                AddEventHandler('ev0x4HgmE8SUVa:motoristaev1xETKFkm5XSz', function()
                    onibusTrabalhando = false
                    removerBlipEmprego()
                end)
        
                CreateThread(function()
                    cfgOnibus = module("nyo_module","cfg/jobs/nyo_emp_onibus_cfg")
                end)
        
                function onibusEmpStart()
                    criarBlipEmprego(cfgOnibus['route'][1].x,cfgOnibus['route'][1].y,cfgOnibus['route'][1].z,cfgOnibus.blipConfig['blipId'],cfgOnibus.blipConfig['blipColor'],cfgOnibus.blipConfig['blipScale'],cfgOnibus.blipConfig['routeColor'],"Rota de Motorista")
                    CreateThread(function()
                        while onibusTrabalhando do 
                        local nyoSleep = 500 
                        ped = PlayerPedId()
        
                        if IsPedInAnyVehicle(ped) then        
                            local distance = #(GetEntityCoords(ped) - cfgOnibus['route'][rotaAtualOnibus])
                            if distance <= 50 then
                            nyoSleep = 4
                            DrawMarker(cfgOnibus.markerConfig.markerId,cfgOnibus['route'][rotaAtualOnibus].x,cfgOnibus['route'][rotaAtualOnibus].y,cfgOnibus['route'][rotaAtualOnibus].z+0.20,0,0,0,cfgOnibus.markerConfig.markerRotationXYZ[1],cfgOnibus.markerConfig.markerRotationXYZ[2],cfgOnibus.markerConfig.markerRotationXYZ[3],cfgOnibus.markerConfig.markerScale[1],cfgOnibus.markerConfig.markerScale[2],cfgOnibus.markerConfig.markerScale[3],cfgOnibus.markerConfig.markerColor[1],cfgOnibus.markerConfig.markerColor[2],cfgOnibus.markerConfig.markerColor[3],cfgOnibus.markerConfig.markerColor[4],cfgOnibus.markerConfig.markerUpDown,cfgOnibus.markerConfig.markerFace,0,cfgOnibus.markerConfig.markerRotation)
                            if distance <= 4 then
                                if IsControlJustPressed(0,38) then                
                                    local vehicle = GetVehiclePedIsIn(ped)
                                    local vehiclePedIsUsing = GetVehiclePedIsUsing(GetPlayerPed(-1))
                                    if cfgOnibus.jobVehicles[GetEntityModel(GetVehiclePedIsIn(ped))] then 
                                    removerBlipEmprego()
                                    if rotaAtualOnibus == #cfgOnibus['route'] then 
                                        rotaAtualOnibus = 1
                                    else 
                                        rotaAtualOnibus = rotaAtualOnibus + 1
                                    end 
                                    
                                    nyoModuleS.g7xtcjckxpGqN('empOnibus')
                                    criarBlipEmprego(cfgOnibus['route'][rotaAtualOnibus].x,cfgOnibus['route'][rotaAtualOnibus].y,cfgOnibus['route'][rotaAtualOnibus].z,cfgOnibus.blipConfig['blipId'],cfgOnibus.blipConfig['blipColor'],cfgOnibus.blipConfig['blipScale'],cfgOnibus.blipConfig['routeColor'],"Rota de Motorista")
                                    end
                                end
                            end
                            end
                        end
                        Wait(nyoSleep)
                        end
                    end)
                end
        
        
                -------------- START EMP MINER 
                local workingAsMiner = false
                local cfgMiner = {}
                local activeWorkingMinerLocation = nil
                local animDictMiner = 'amb@world_human_const_drill@male@drill@base'
                local animNameMiner = 'base'
                local minerObj = GetHashKey('prop_tool_jackham')
        
                RegisterNetEvent('ev0x4HgmE8SUVa:minerev1xsv9gR1WhwC')
                AddEventHandler('ev0x4HgmE8SUVa:minerev1xsv9gR1WhwC',function()
                    workingAsMiner = true
                    RequestAnimDict(animDictMiner)
                    RequestModel(minerObj)
                    while not HasAnimDictLoaded(animDictMiner) and not HasModelLoaded(minerObj) do
                        Wait(10)
                    end
                    startMinerEmp()
                end)
        
                RegisterNetEvent('ev0x4HgmE8SUVa:minerev1xETKFkm5XSz')
                AddEventHandler('ev0x4HgmE8SUVa:minerev1xETKFkm5XSz',function()
                    workingAsMiner = false
                    RemoveAnimDict(animDictMiner)
                    SetModelAsNoLongerNeeded(minerObj)
                end)
        
                CreateThread(function()
                    cfgMiner = module("nyo_module","cfg/jobs/nyo_emp_miner_cfg")
                end)
        
                function startMinerEmp()
                    activeWorkingMinerLocation = math.random(#cfgMiner.mineLocations)
                    CreateThread(function()
                        while workingAsMiner do
                            local nyoSleep = 1000
                            ped = PlayerPedId()
                            local distance = #(GetEntityCoords(ped) - cfgMiner.mineLocations[activeWorkingMinerLocation])
                            if distance <= 50.0 then 
                                nyoSleep = 4
                                DrawMarker(cfgMiner.markerConfig.markerId,cfgMiner.mineLocations[activeWorkingMinerLocation].x,cfgMiner.mineLocations[activeWorkingMinerLocation].y,cfgMiner.mineLocations[activeWorkingMinerLocation].z+0.20,0,0,0,cfgMiner.markerConfig.markerRotationXYZ[1],cfgMiner.markerConfig.markerRotationXYZ[2],cfgMiner.markerConfig.markerRotationXYZ[3],cfgMiner.markerConfig.markerScale[1],cfgMiner.markerConfig.markerScale[2],cfgMiner.markerConfig.markerScale[3],cfgMiner.markerConfig.markerColor[1],cfgMiner.markerConfig.markerColor[2],cfgMiner.markerConfig.markerColor[3],cfgMiner.markerConfig.markerColor[4],cfgMiner.markerConfig.markerUpDown,cfgMiner.markerConfig.markerFace,0,cfgMiner.markerConfig.markerRotation)
                                if distance <= 1.0 then 
                                    if IsControlJustPressed(0,38) then
                                        if cfgMiner.jobVehicles[GetEntityModel(GetPlayersLastVehicle())] then 
                                            playMinerAnim()
                                            nyoModuleS.g7xtcjckxpGqN('empMiner')
                                            activeWorkingMinerLocation = math.random(#cfgMiner.mineLocations)
                                        end
                                    end
                                end
                            end 
                            Wait(nyoSleep)
                        end
                    end)
                    
                end
        
                function playMinerAnim()
                    ped = PlayerPedId()
                    local prop = CreateObject(minerObj,GetEntityCoords(ped),true,true,false)
                    AttachEntityToEntity(prop,ped,GetPedBoneIndex(ped,28422),0.0,0.0,0.0,0.0,0.0,0.0,false,false,false,false,2,true)
                    TaskPlayAnim(ped,animDictMiner,animNameMiner,8.0,8.0,-1,15,1.0,0,0,0)
                    Wait(cfgMiner.timerMining)
                    ClearPedTasks(ped)
                    DeleteEntity(prop)
                end
        
        
                ------------- START EMP GARBAGE
                local workingAsGarbageMan = false
                local activeGarbageLocation = 1
                local cfgGarbage = {}
        
                CreateThread(function()
                    cfgGarbage = module("nyo_module","cfg/jobs/nyo_emp_garbage_cfg")
                end)
        
                RegisterNetEvent('ev0x4HgmE8SUVa:garbageev1xsv9gR1WhwC')
                AddEventHandler('ev0x4HgmE8SUVa:garbageev1xsv9gR1WhwC',function()
                    workingAsGarbageMan = true
                    startGarbageEmp()
                end)
        
                RegisterNetEvent('ev0x4HgmE8SUVa:garbageev1xETKFkm5XSz')
                AddEventHandler('ev0x4HgmE8SUVa:garbageev1xETKFkm5XSz',function()
                    workingAsGarbageMan = false
                    activeGarbageLocation = 1
                    removerBlipEmprego()
                end)
        
                function startGarbageEmp()
                    criarBlipEmprego(cfgGarbage.garbageLocations[activeGarbageLocation].x,cfgGarbage.garbageLocations[activeGarbageLocation].y,cfgGarbage.garbageLocations[activeGarbageLocation].z,cfgGarbage.garbageCollectBlipConfig.sprite,cfgGarbage.garbageCollectBlipConfig.colour,cfgGarbage.garbageCollectBlipConfig.scale,cfgGarbage.garbageCollectBlipConfig.routeColor,cfgGarbage.garbageCollectBlipConfig.text)
                    CreateThread(function()
                        while workingAsGarbageMan do
                            local nyoSleep = 1000
                            ped = PlayerPedId()
                            local pedcds = GetEntityCoords(ped)
                            local distance = #(pedcds - cfgGarbage.garbageLocations[activeGarbageLocation])
                            if distance <= 20.0 then
                                nyoSleep = 4
                                DrawMarker(cfgGarbage.markerConfig.markerId,cfgGarbage.garbageLocations[activeGarbageLocation].x,cfgGarbage.garbageLocations[activeGarbageLocation].y,cfgGarbage.garbageLocations[activeGarbageLocation].z+0.20,0,0,0,cfgGarbage.markerConfig.markerRotationXYZ[1],cfgGarbage.markerConfig.markerRotationXYZ[2],cfgGarbage.markerConfig.markerRotationXYZ[3],cfgGarbage.markerConfig.markerScale[1],cfgGarbage.markerConfig.markerScale[2],cfgGarbage.markerConfig.markerScale[3],cfgGarbage.markerConfig.markerColor[1],cfgGarbage.markerConfig.markerColor[2],cfgGarbage.markerConfig.markerColor[3],cfgGarbage.markerConfig.markerColor[4],cfgGarbage.markerConfig.markerUpDown,cfgGarbage.markerConfig.markerFace,0,cfgGarbage.markerConfig.markerRotation)
                                
                                if distance <= 3.0 then 
                                        if IsControlJustPressed(0,38) then
                                            if cfgGarbage.jobVehicles[GetEntityModel(GetVehiclePedIsIn(ped))] then 
                                                removerBlipEmprego()
                                                activeGarbageLocation = activeGarbageLocation + 1
                                                if activeGarbageLocation > #cfgGarbage.garbageLocations then
                                                    activeGarbageLocation = 1
                                                end
                                                nyoModuleS.g7xtcjckxpGqN('empGarbage')
                                                criarBlipEmprego(cfgGarbage.garbageLocations[activeGarbageLocation].x,cfgGarbage.garbageLocations[activeGarbageLocation].y,cfgGarbage.garbageLocations[activeGarbageLocation].z,cfgGarbage.garbageCollectBlipConfig.sprite,cfgGarbage.garbageCollectBlipConfig.colour,cfgGarbage.garbageCollectBlipConfig.scale,cfgGarbage.garbageCollectBlipConfig.routeColor,cfgGarbage.garbageCollectBlipConfig.text)
                                            end
                                        end
                                    end
                            end
                            Wait(nyoSleep)
                        end
                    end)    
                end
        
        
                ------------ START EMP FISHER 
                local workingAsFisher = false
                local remainingFishingSeconds = 0
                local animDictFisher = 'amb@world_human_stand_fishing@idle_a'
                local animNameFisher = 'idle_c'
                local fisherPr = GetHashKey('prop_fishing_rod_01')
                local cfgFisher = {}
                local fisherBlips = {}
        
        
                CreateThread(function()
                    cfgFisher = module("nyo_module","cfg/jobs/nyo_emp_fisher_cfg")
                end)
        
                RegisterNetEvent('ev0x4HgmE8SUVa:fisherev1xsv9gR1WhwC')
                AddEventHandler('ev0x4HgmE8SUVa:fisherev1xsv9gR1WhwC',function()
                    workingAsFisher = true
                    RequestAnimDict(animDictFisher)
                    RequestModel(fisherPr)
                    while not HasAnimDictLoaded(animDictFisher) and not HasModelLoaded(fisherPr) do
                        Wait(10)
                    end
                    startFisherEmp()
                end)
        
                RegisterNetEvent('ev0x4HgmE8SUVa:fisherev1xETKFkm5XSz')
                AddEventHandler('ev0x4HgmE8SUVa:fisherev1xETKFkm5XSz',function()
                    workingAsFisher = false    
                    deleteFisherBlips()
                end)
        
                function startFisherEmp()
                    createFisherBlips()
                    CreateThread(function()
                        while workingAsFisher do
                            local nyoSleep = 1000
                            ped = PlayerPedId()
                            local cds = GetEntityCoords(ped)
                            for k,v in pairs(cfgFisher.locations) do
                                local distance = #(cds - v[1])
                                if distance <= (v[2] + 50) then 
                                    nyoSleep = 4
                                    DrawMarker(cfgFisher.markerConfig.markerId,v[1]-1.0,0,0,0,cfgFisher.markerConfig.markerRotationXYZ[1],cfgFisher.markerConfig.markerRotationXYZ[2],cfgFisher.markerConfig.markerRotationXYZ[3],v[2],v[2],v[2],cfgFisher.markerConfig.markerColor[1],cfgFisher.markerConfig.markerColor[2],cfgFisher.markerConfig.markerColor[3],cfgFisher.markerConfig.markerColor[4],cfgFisher.markerConfig.markerUpDown,cfgFisher.markerConfig.markerFace,0,cfgFisher.markerConfig.markerRotation)
                                    if distance <= v[2] then 
                                        if IsControlJustPressed(0,38) and not IsPedInAnyVehicle(ped) and not IsPedSwimming(ped) and not IsPedSwimmingUnderWater(ped) then
                                            local liberaPesca = true 
                                            if cfgFisher.requestItem.require then 
                                                liberaPesca = nyoModuleS.i1xqC9bSMGyPU(cfgFisher.requestItem.item, tonumber(cfgFisher.requestItem.qtd))
                                            end
                                            if liberaPesca then 
                                                local prop = CreateObject(fisherPr,GetEntityCoords(ped),true,true,false)
                                                AttachEntityToEntity(prop,ped,GetPedBoneIndex(ped,60309),0.0,0.0,0.0,0.0,0.0,0.0,false,false,false,false,2,true)
                                                TaskPlayAnim(ped,animDictFisher,animNameFisher,8.0,8.0,-1,15,1.0,0,0,0)
                                                local fishReward = false
                                                if cfgFisher.fishingTipe == 2 then 
                                                    local exp = exports['skillbar']:skillBarStart()
                                                    if exp then 
                                                        fishReward = true
                                                    end
                                                else 
                                                    remainingFishingSeconds = cfgFisher.fishingTime
                                                    TriggerEvent('progress', tonumber(cfgFisher.fishingTime * 1000), 'Pescando')
                                                    repeat
                                                        remainingFishingSeconds = remainingFishingSeconds - 1
                                                        Wait(1000)
                                                    until remainingFishingSeconds == 0
                                                    fishReward = true
                                                end                                            
                                                DetachEntity(prop)
                                                DeleteEntity(prop)
                                                ClearPedTasks(ped)
                                                if fishReward then                                                 
                                                    nyoModuleS.g7xtcjckxpGqN('empFisher')
                                                end
                                            end                                    
                                        end
                                    end
                                end
                            end
                            Wait(nyoSleep)
                        end
                    end)
                end
        
                function createFisherBlips()
                    for k,v in pairs(cfgFisher.locations) do
                        local blip = AddBlipForCoord(v[1].x,v[1].y,v[1].z)
                        SetBlipCoords(blip,v[1].x,v[1].y,v[1].z)
                        SetBlipSprite(blip,cfgFisher.fisherBlipConfig.sprite)
                        SetBlipColour(blip,cfgFisher.fisherBlipConfig.colour)
                        SetBlipScale(blip,cfgFisher.fisherBlipConfig.scale)
                        BeginTextCommandSetBlipName("STRING")
                        AddTextComponentString(cfgFisher.fisherBlipConfig.text)
                        EndTextCommandSetBlipName(blip)
                        SetBlipAsShortRange(blip,cfgFisher.fisherBlipConfig.shortRange)
                        SetBlipRoute(blip,false)
                        table.insert(fisherBlips,blip)
                    end
                end
        
                function deleteFisherBlips()
                    for k,v in pairs(fisherBlips) do
                        RemoveBlip(v)
                    end
                    fisherBlips = {}
                end     
            end
            


            if configModule['job2'] then
                ------------ START EMP MERGULHADOR
                local workingAsScubaDiver = false
                local sonarActive = false
                local cfgScuba = nil
                local activeKScuba = 1
                local animDictScuba = 'amb@world_human_gardener_plant@female@base'
                local animNameScuba = 'base_female'
                local hashObjScuba = GetHashKey('prop_buck_spade_09')
                local cdsScuba = nil
                local pedScuba = nil

                CreateThread(function()
                    cfgScuba = module("nyo_module","cfg/jobs/nyo_emp_mergulhador_cfg")
                end)

                RegisterNetEvent("nyoEmp:scubaSonar")
                AddEventHandler("nyoEmp:scubaSonar", function()
                    if not sonarActive then
                        if cfgScuba['jobVehicles'][GetEntityModel(GetVehiclePedIsIn(PlayerPedId(),false))] then
                            sonarActive = true
                            SetMinimapSonarEnabled(true)
                        end
                    else
                        sonarActive = false
                    end
                end)    
                
                AddEventHandler('ev0x4HgmE8SUVa:scubaDiverev1xsv9gR1WhwC',function()
                    workingAsScubaDiver = true
                    initScubaDiver()
                    if cfgScuba['sonarType'] == 2 then 
                        sonarActive = true
                        SetMinimapSonarEnabled(true)
                    end
                end)
                
                AddEventHandler('ev0x4HgmE8SUVa:scubaDiverev1xETKFkm5XSz',function()
                    workingAsScubaDiver = false
                    stopScubaDiver()
                    if sonarActive then 
                        sonarActive = false 
                        SetMinimapSonarEnabled(false)
                    end
                end)

                RegisterNetEvent('nyo_modules:scubaDiver/updateConfig')
                AddEventHandler('nyo_modules:scubaDiver/updateConfig',function(k,status)
                    cfgScuba['collectLocations'][k][2] = status
                end)

                function initScubaDiver()
                    ped = PlayerPedId()
                    TriggerServerEvent('nyo_modules:scubaDiver/addPlayerToScubaDiverEmp')
                    cfgScuba = module("nyo_module","cfg/jobs/nyo_emp_mergulhador_cfg")
                    AllowSonarBlips(true)
                    RequestAnimDict(animDictScuba)
                    while not HasAnimDictLoaded(animDictScuba) do
                        Wait(10)
                    end
                    RequestModel(hashObjScuba)
                    while not HasModelLoaded(hashObjScuba) do
                        Wait(10)
                    end
                    initScubaBlips()
                    Wait(1000)
                    CreateThread(function()
                        while workingAsScubaDiver do
                            local sleepScubaDiver = 1000
                            for k,v in pairs(cfgScuba['collectLocations']) do
                                local dist = #(cds - v[1])
                                if dist <= 5.0 and not v[2] then
                                    sleepScubaDiver = 4
                                    DrawMarker(cfgScuba.scubaDiverMarker.type,v[1],0.0,0.0,0.0,0.0,0.0,0.0,cfgScuba.scubaDiverMarker.scalex,cfgScuba.scubaDiverMarker.scaley,cfgScuba.scubaDiverMarker.scalez,cfgScuba.scubaDiverMarker.r,cfgScuba.scubaDiverMarker.g,cfgScuba.scubaDiverMarker.b,cfgScuba.scubaDiverMarker.a,cfgScuba.scubaDiverMarker.bobUpAndDown,false,2,cfgScuba.scubaDiverMarker.rotate,false,false,false)
                                    if dist <= 1.0 and IsControlJustPressed(0,38) then
                                        FreezeEntityPosition(ped,true)
                                        local obj = CreateObject(hashObjScuba,v[1],true,true,true)
                                        AttachEntityToEntity(obj,ped,GetPedBoneIndex(ped,28422),0.00,0.01,-0.1,110.0,180.0,-25.0,false,false,false,false,0,true)
                                        TaskPlayAnim(ped,animDictScuba,animNameScuba,8.0,8.0,-1,49,0.0,false,false,false)
        
                                        local initScuba = false 
                                        if cfgScuba.skillBar then 
                                            local exp = exports['skillbar']:skillBarStart()
                                            if exp then 
                                                initScuba = true
                                            end
                                        else                                                                     
                                            Wait(5000)
                                            initScuba = true
                                        end
                                        
                                        if initScuba then     
                                            ClearPedTasks(ped)
                                            DetachEntity(obj, true, true)
                                            DeleteEntity(obj)
                                            FreezeEntityPosition(ped,false)
                                            TriggerServerEvent('nyo_modules:scubaDiver/upCheckCoords',k)
                                            nyoModuleS.g7xtcjckxpGqN('empScuba')
                                        end
                                        
                                    end
                                end
                            end
                            Wait(sleepScubaDiver)
                        end                    
                        RemoveAnimDict(animDictScuba)
                        SetModelAsNoLongerNeeded(hashObj)
                    end)
                    
                end

                function createBlipScuba(k)
                    local blip = AddBlipForCoord(cfgScuba['collectLocations'][k][1])
                    SetBlipSprite(blip,148)
                    SetBlipScale(blip,1.0)
                    SetBlipColour(blip,1)
                    SetBlipAlpha(blip,70)
                    BeginTextCommandSetBlipName('STRING')
                    AddTextComponentString('Localização para vasculhar')
                    EndTextCommandSetBlipName(blip)
                    SetBlipAsShortRange(blip,true)
                    return blip
                end

                function initScubaBlips()
                    ped = PlayerPedId()
                    CreateThread(function()
                        while workingAsScubaDiver do
                            cds = GetEntityCoords(ped)
                            local retval = IsPauseMenuActive()
                            for k,v in pairs(cfgScuba['collectLocations']) do
                                local dist = #(cds - v[1])
                                if dist <= 200.0 and not v[2] and not retval and sonarActive then
                                    if not v[5] then
                                        v[5] = createBlipScuba(k)
                                    end
                                else
                                    if v[5] then
                                        RemoveBlip(v[5])
                                        v[5] = nil
                                    end
                                end
                            end
                            Wait(1000)
                        end
                    end)
                end

                function stopScubaDiver()
                    sonarActive = false
                    SetMinimapSonarEnabled(false)
                    AllowSonarBlips(false)
                    TriggerServerEvent('nyo_modules:scubaDiver/remPlayerFromScubaDiverEmp')
                    for k,v in pairs(cfgScuba['collectLocations']) do
                        if v[5] then
                            RemoveBlip(v[5])
                        end
                    end
                end
                
            ------------ START EMP FAZENDEIRO
                local cfgFarmer = nil
                local workingAsFarmer = false
                local pedFarmer = nil
                
                RegisterNetEvent('ev0x4HgmE8SUVa:farmerev1xsv9gR1WhwC')
                AddEventHandler('ev0x4HgmE8SUVa:farmerev1xsv9gR1WhwC',function ()
                    workingAsFarmer = true
                    initFarmer()
                end)

                RegisterNetEvent('ev0x4HgmE8SUVa:farmerev1xETKFkm5XSz')
                AddEventHandler('ev0x4HgmE8SUVa:farmerev1xETKFkm5XSz',function()
                    workingAsFarmer = false
                    stopFarmer()
                end)
                
                RegisterNetEvent('nyo_modules:syncFarmerCoords')
                AddEventHandler('nyo_modules:syncFarmerCoords',function(k,status)
                    cfgFarmer['collectFarmerLocations'][k].status = status
                end)
                
                RegisterNetEvent('nyo_modules:freezePeds')
                AddEventHandler('nyo_modules:freezePeds',function(peds)
                    for k,v in pairs(peds) do
                        local pedFarmer = NetToPed(v)
                        SetBlockingOfNonTemporaryEvents(pedFarmer, true)
                        SetEntityInvincible(pedFarmer, false)
                    end
                end)
                
                RegisterNetEvent('nyo_modules:farmer/updateConfig')
                AddEventHandler('nyo_modules:farmer/updateConfig',function(k,status)
                    cfgFarmer['collectFarmerLocations'][k]['status'] = status
                end)
                
                function initFarmer()
                    ped = PlayerPedId()
                    cfgFarmer = nyoModuleS.g6xX40sFkSjoj('empFarmer')  
                    TriggerServerEvent('nyo_modules:farmer/addPlayerTofarmerEmp')
                    cfgFarmer['farmerAnimationsByIndex'] = {
                        ['cow'] = function(ped)
                            local dict = 'anim@amb@business@weed@weed_inspecting_lo_med_hi@'
                            local anim = 'weed_crouch_checkingleaves_idle_01_inspector'
                            RequestAnimDict(dict)
                            while not HasAnimDictLoaded(dict) do
                                Wait(10)
                            end
                            TaskPlayAnim(ped,dict,anim,8.0,8.0,-1,15,0.0,0,0,0)
                            Wait(5000)
                            ClearPedTasks(ped)
                        end,
                        ['tomato'] = function(ped)
                            local dict = 'anim@amb@business@weed@weed_inspecting_lo_med_hi@'
                            local anim = 'weed_crouch_checkingleaves_idle_01_inspector'
                            RequestAnimDict(dict)
                            while not HasAnimDictLoaded(dict) do
                                Wait(10)
                            end
                            TaskPlayAnim(ped,dict,anim,8.0,8.0,-1,15,0.0,0,0,0)
                            Wait(5000)
                            ClearPedTasks(ped)
                        end,
                        ['orange'] = function(ped)
                            local dict = 'amb@prop_human_movie_bulb@base'
                            local anim = 'base'
                            RequestAnimDict(dict)
                            while not HasAnimDictLoaded(dict) do
                                Wait(10)
                            end
                            TaskPlayAnim(ped,dict,anim,8.0,8.0,-1,15,0.0,0,0,0)
                            Wait(5000)
                            ClearPedTasks(ped)
                        end,
                        ['apple'] = function(ped)
                            local dict = 'amb@prop_human_movie_bulb@base'
                            local anim = 'base'
                            RequestAnimDict(dict)
                            while not HasAnimDictLoaded(dict) do
                                Wait(10)
                            end
                            TaskPlayAnim(ped,dict,anim,8.0,8.0,-1,15,0.0,0,0,0)
                            Wait(5000)
                            ClearPedTasks(ped)
                        end,
                    }
                    local qtd = {
                        ['orange'] = 0,
                        ['apple'] = 0,
                        ['cow'] = 0,
                        ['tomato'] = 0,
                    }
                    
                    for k,v in pairs(cfgFarmer['collectFarmerLocations']) do
                        qtd[v.type] = qtd[v.type] + 1
                    end

                    CreateThread(function()
                        while workingAsFarmer do
                            local sleepFarmer = 1000
                            local cds = GetEntityCoords(ped)
                            for k,v in pairs(cfgFarmer['collectFarmerLocations']) do
                                local dist = #(cds - v.cds)
                                if dist <= 25.0 and not v.status then
                                    sleepFarmer = 4
                                    DrawMarker(cfgFarmer.farmerMarker.type,v.cds,0.0,0.0,0.0,0.0,0.0,0.0,cfgFarmer.farmerMarker.scalex,cfgFarmer.farmerMarker.scaley,cfgFarmer.farmerMarker.scalez,cfgFarmer.farmerMarker.r,cfgFarmer.farmerMarker.g,cfgFarmer.farmerMarker.b,cfgFarmer.farmerMarker.a,cfgFarmer.farmerMarker.bobUpAndDown,false,2,cfgFarmer.farmerMarker.rotate,false,false,false)
                                    if dist <= 1.0 and IsControlJustPressed(0,38) then
                                        farmerIni = false 
                                        cfgPayment = cfgFarmer.requirePayment[v.type]
                                        if cfgPayment.requireItem then 
                                            farmerIni = true
                                            for k2,v2 in pairs(cfgPayment.requireItemData) do 
                                                if not nyoModuleS.i8xYlH4i60JlN(v2.item, v2.qtd) then 
                                                    farmerIni = false
                                                end
                                            end

                                            if farmerIni then 
                                                for k2,v2 in pairs(cfgPayment.requireItemData) do 
                                                    nyoModuleS.i1xqC9bSMGyPU(v2.item, v2.qtd)
                                                end
                                            end
                                        else 
                                            farmerIni = true
                                        end
                                        
                                        if farmerIni then 
                                            TriggerServerEvent('nyo_modules:checkFarmerCoords',k)
                                            cfgFarmer['farmerAnimationsByIndex'][v.type](ped)
                                            SetEntityCoords(ped,cds.x,cds.y,cds.z-0.9)   
                                            nyoModuleS.i7xE1zZxE6ki7(v.type) 
                                        end
                                    end
                                end
                            end
                            Wait(sleepFarmer)
                        end
                    end) 
                end
                
                function stopFarmer()
                    TriggerServerEvent('nyo_modules:farmer/remPlayerFromfarmerEmp')
                end

                
                CreateThread(function()
                    local peds = nyoModuleS.i6xWZiMHi8iNW()
                    RequestModel(`a_c_cow`)
                    while not HasModelLoaded(`a_c_cow`) do
                        Wait(10)
                    end
                    for k,v in pairs(peds) do
                        local ped = CreatePed(5,`a_c_cow`,v.x,v.y,v.z-0.95,v.w,false,false)
                        FreezeEntityPosition(ped,true)
                        SetBlockingOfNonTemporaryEvents(ped,true)
                        SetEntityInvincible(ped,false)
                    end
                    SetModelAsNoLongerNeeded(`a_c_cow`)
                end)




            ------------ START EMP GARBAGE V2
                local workingAsGarbageManV2 = false
                local gamePoolGarbage = {}
                local pedGarbage = nil
                local cdsGarbage = nil
                local coordsGarbageV2 = {}
                local cfgGarbage = nil
                
                RegisterNetEvent('ev0x4HgmE8SUVa:garbagev2ev1xsv9gR1WhwC')
                AddEventHandler('ev0x4HgmE8SUVa:garbagev2ev1xsv9gR1WhwC',function()
                    workingAsGarbageManV2 = true
                    startGarbageV2Emp()
                end)
                
                RegisterNetEvent('ev0x4HgmE8SUVa:garbagev2ev1xETKFkm5XSz')
                AddEventHandler('ev0x4HgmE8SUVa:garbagev2ev1xETKFkm5XSz',function()
                    workingAsGarbageManV2 = false
                    stopGarbageV2Emp()
                end)
                
                RegisterNetEvent('nyo_modules:garbagev2/updateCoords')
                AddEventHandler('nyo_modules:garbagev2/updateCoords',function(array)
                    coordsGarbageV2 = array
                end)
                
                function findDumpsterProps()
                    CreateThread(function()
                        while workingAsGarbageManV2 do
                            local pool = GetGamePool('CObject')
                            local insertPool = {}
                            for k,v in pairs(pool) do
                                if cfgGarbage['garbageProps'][GetEntityModel(v)] then
                                    table.insert(insertPool,GetEntityCoords(v))
                                end
                            end
                            gamePoolGarbage = insertPool
                            Wait(1000)
                        end
                    end)
                end
                
                function checkCoords(l)
                    for k,v in pairs(coordsGarbageV2) do
                        if #(v - l) <= 1.5 then
                            return false
                        end
                    end
                    return true
                end
                
                function getGarbageProp()
                    local dict = 'mini@repair'
                    local anim = 'fixing_a_ped'
                    RequestAnimDict(dict)
                    while not HasAnimDictLoaded(dict) do
                        Wait(10)
                    end
                    TaskPlayAnim(pedGarbage, dict, anim, 8.0, 8.0, -1, 15, 0.0, 0, 0, 0)
                    Wait(2500)
                    ClearPedTasks(pedGarbage)
                    RemoveAnimDict(dict)
                end
                
                
                RegisterCommand('limparprops',function()
                    for k,v in pairs(GetGamePool('CObject')) do
                        if GetEntityModel(v) == `prop_cs_rub_binbag_01` then
                            NetworkRequestControlOfEntity(v)
                            DetachEntity(v, false, false)
                            SetEntityCoords(v,-330.03, -1537.86, 36.03)
                        end
                    end
                end)
                
                
                function startGarbageV2Emp()
                    pedGarbage = PlayerPedId()
                    cfgGarbage = nyoModuleS.g6xX40sFkSjoj('empGarbagev2')  
                    TriggerServerEvent('nyo_modules:garbagev2/addPlayerToEmp')
                    findDumpsterProps()
                    CreateThread(function()
                        while workingAsGarbageManV2 do   
                            local sleepGarbageV2 = 1000
                            cdsGarbage = GetEntityCoords(pedGarbage)
                            for k,v in pairs(gamePoolGarbage) do
                                local dist = #(cdsGarbage - v)
                                if dist <= 5.0 and checkCoords(v) then
                                    sleepGarbageV2 = 4
                                    DrawMarker(cfgGarbage.garbageV2Marker.type,v.x,v.y,v.z+1.5,0.0,0.0,0.0,0.0,0.0,0.0,cfgGarbage.garbageV2Marker.scalex,cfgGarbage.garbageV2Marker.scaley,cfgGarbage.garbageV2Marker.scalez,cfgGarbage.garbageV2Marker.r,cfgGarbage.garbageV2Marker.g,cfgGarbage.garbageV2Marker.b,cfgGarbage.garbageV2Marker.a,cfgGarbage.garbageV2Marker.bobUpAndDown,false,2,cfgGarbage.garbageV2Marker.rotate,false,false,false)
                                    if dist <= 2.0 and IsControlJustPressed(0,38) then
                                        getGarbageProp()
                                        TriggerServerEvent('nyo_modules:garbagev2/UpCheckCoords',v)
                                        TriggerEvent("Notify",'negado','Lixeira vasculhada!')
                                        nyoModuleS.g7xtcjckxpGqN("empGarbagev2")
                                    end
                                end
                            end
                            Wait(sleepGarbageV2)
                        end
                    end)               
                end
                
                function stopGarbageV2Emp()
                    TriggerServerEvent("nyo_modules:garbagev2/remPlayerFromEmp")
                    gamePoolGarbage = {}
                end
            end
        end


        
    
        -- Start Module NavShop functions
        if configModule['navShop'] then
            local navShopConfig = {} 
            function openNavShop(config)
                navShopConfig = config
                SetNuiFocus(true, true)
                SendNUIMessage({acao = 'navShop', config = config})
            end
    
            RegisterNUICallback("navShopClose",function(data,cb)
                ped = PlayerPedId()
                inShop = false
                SetNuiFocus(false, false)
                ClearPedTasks(ped)
            end)
    
            RegisterNUICallback("navShopNuiAction", function(data,cb)
                nyoModuleS.g9xpix9JlzlEG(navShopConfig, data.index, data.item)
            end)
            
        end 

         -- Start Module Garagem Functions
        if configModule['garagem'] then

            local vehicleClasses = {
                [0] = "carro",
                [1] = "carro",
                [2] = "carro",
                [3] = "carro",
                [4] = "carro",
                [5] = "carro",
                [6] = "carro",
                [7] = "carro",
                [8] = "carro",
                [9] = "carro",
                [10] = "carro",
                [11] = "carro",
                [12] = "carro",
                [13] = "carro",
                [14] = "barco",
                [15] = "helicoptero",
                [16] = "helicoptero",
                [17] = "carro",
                [18] = "carro",
                [19] = "carro",
                [20] = "carro",
                [21] = "carro",
            }
            
            local activeGarage, spawnCoordinates, activeVehicles, currentGarageConfig

            local garageTypesNames = {
                home = 'Garagem de Casa',
                public = 'Garagem Pública',
                work = 'Garagem de Trabalho'
            }

            function openNuiGarage(garageId,garageConfig,spawnCoords)
                local vehicles = nyoModuleS.i5xXTrdqnvl3z(garageId)

                if vehicles then
                    activeGarage = garageId
                    currentGarageConfig = garageConfig
                    spawnCoordinates = spawnCoords

                    local filteredVehicles   = {}
                    local categoryTypes      = {}
                    local selectedCategories = {}

                    for k,v in pairs(vehicles) do
                        if k ~= 'garage' then
                            local vehicleClass = GetVehicleClassFromName(v.hash)
                            local className = vehicleClasses[vehicleClass]

                            if garageConfig.garagemMenu[className] then

                                if not selectedCategories[className] then
                                    categoryTypes[#categoryTypes  + 1] = className
                                    selectedCategories[className] = true
                                end

                                v.category = className
                                v.maxSpeed = math.floor(GetVehicleModelEstimatedMaxSpeed(v.hash) * 3.6)
                                v.maxBraking = GetVehicleModelMaxBraking(v.hash)
                                v.maxTraction = GetVehicleModelMaxTraction(v.hash)
                                v.class = GetLabelText('VEH_CLASS_'..vehicleClass)

                                filteredVehicles[v.vehicle] = v

                            end
                        end

                    end

                    activeVehicles = filteredVehicles
                    
                    SendNUIMessage({
                        acao = 'garagemOpen',
                        vehicles = filteredVehicles,
                        categoryTypes = categoryTypes,
                        garageType = garageTypesNames[garageConfig.garagemType],
                    })
                    SetNuiFocus(true,true)

                else
                    inShop = false
                end

            end

            RegisterNUICallback('garageClose', function(data,cb)
                inShop = false
                activeGarage, spawnCoordinates, activeVehicles, currentGarageConfig = nil,nil,nil,nil
                SetNuiFocus(false,false)

                TriggerServerEvent('nyo_module:close_garage')

                cb({})
            end)

            RegisterNUICallback('garage_pay_tax', function(data,cb)
                local success = nyoModuleS.taskPayVehicleTax(data.vehicle)
                cb({
                    success = success
                })
                if not success then
                    notify("#FF0000", "Negado", "Dinheiro insuficiente", 8000, "fa-heartbeat")
                end
            end)

            RegisterNUICallback('garage_pay_insurance', function(data,cb)
                local success = nyoModuleS.taskPayInsurance(data.vehicle)
                cb({
                    success = success
                })
                if not success then
                    notify("#FF0000", "Negado", "Dinheiro insuficiente", 8000, "fa-heartbeat")
                end
            end)

            RegisterNUICallback('garage_remove_detention', function(data,cb)
                local success = nyoModuleS.taskRemoveFromDetention(data.vehicle)
                cb({
                    success = success
                })
                if not success then
                    notify("#FF0000", "Negado", "Dinheiro insuficiente", 8000, "fa-heartbeat")
                end
            end)

            RegisterNUICallback('spawn_vehicle', function(data,cb)
                local spawnCoords

                for k,v in pairs(spawnCoordinates) do
                    if GetClosestVehicle(v.x, v.y, v.z, 3.0, 0, 71) == 0 then
                        spawnCoords = v
                        break
                    end
                end

                if spawnCoords then
                    local success, error = nyoModuleS.spawnVehicle(data.vehicle,spawnCoords)
                    cb({ success = success })
                    if success and error then
                        activeVehicles[data.vehicle].spawned = error
                    end
                    if not success and error then
                        notify("#FF0000", "Negado", error, 8000, "fa-heartbeat")
                    end
                else
                    notify("#FF0000", "Negado", "Todas as vagas estão ocupadas.", 8000, "fa-heartbeat")
                    cb({ success = false })
                end
            end)

            RegisterNUICallback('store_vehicle', function(data,cb)

                local ped = PlayerPedId()
                local cds = GetEntityCoords(ped)

                local success, error, body, engine, fuel, damage = nyoModuleS.deleteVehicle(data.vehicle, currentGarageConfig.garagemType == 'work', cds, currentGarageConfig.deleteVehicleDistance or 30.0)

                cb({ 
                    success = success,
                    engine = engine,
                    body = body,
                    fuel = fuel,
                    exploded = damage and damage.exploded or false
                })

                if not success then
                    notify("#FF0000", "Negado", error, 8000, "fa-heartbeat")
                end

            end)

            RegisterNetEvent('nyo_module:applyVehInfo', function(netVeh, custom, damage, extras, livery, plate, engine, body, fuel, modelName)

                while not NetworkDoesEntityExistWithNetworkId(netVeh) do Wait(100) end
                local veh = NetToVeh(netVeh)
                while not DoesEntityExist(veh) do Wait(100) end

                SetVehicleNumberPlateText(veh, plate)
                SetVehicleEngineHealth(veh, engine + 0.0)
                SetVehicleBodyHealth(veh, body + 0.0)
                SetVehicleFuelLevel(veh, fuel + 0.0)

                SetVehicleIsConsideredByPlayer(veh, true)
                SetVehicleIsStolen(veh, false)
                SetVehicleHasBeenOwnedByPlayer(veh, true)
				SetVehicleNeedsToBeHotwired(veh,false)
				SetVehicleOnGroundProperly(veh)
				SetEntityAsMissionEntity(veh,true,true)
				SetVehRadioStation(veh,"OFF")
                SetVehicleEngineOn(veh, false, true, false)

                if extras then
                    for k,v in pairs(extras) do
                        SetVehicleExtra(veh, k, not v)
                    end
                end

                if livery then
                    SetVehicleLivery(veh, livery)
                end

                if configModule['bennys'] then
                    if custom then
                        TriggerEvent('nyo_modules:applyVehicleCustomization', netVeh, custom)
                    end
                else
                    applyVehModifications(veh, netVeh, custom, modelName, plate)
                end
                
                if damage then

                    if damage.doors then
                        for i = 0, 5 do
                            if damage.doors[tostring(i)] then
                                SetVehicleDoorBroken(veh,i,true)
                            end
                        end
                    end

                    if damage.windows then
                        for i = 0, 7 do
                            if damage.windows[tostring(i)] then
                                SmashVehicleWindow(veh, i)
                            end
                        end
                    end

                    if damage.tyres then

                        for i = 0, 5 do
                            if damage.tyres[tostring(i)] then
                                SetVehicleTyreBurst(veh, i, true, 1000)
                            end
                        end
    
                        if damage.tyres[45] then
                            SetVehicleTyreBurst(veh, 45, true, 1000)
                        end
    
                        if damage.tyres[47] then
                            SetVehicleTyreBurst(veh, 47, true, 1000)
                        end

                    end

                    SetVehicleDirtLevel(veh, damage.dirtLevel)
                    SetVehiclePetrolTankHealth(veh, damage.petrolTankHealth)
                    SetVehicleOilLevel(veh, damage.oilLevel)
                    
                end
            
            end)

            function nyoModuleC.i3xy5psAXAV8Z(netid)
                local veh = NetToVeh(netid)
                local damage = { doors = {}, windows = {}, tyres = {}}

                for i = 0, 5 do
                    damage.doors[i] = IsVehicleDoorDamaged(veh,i)
                end

                if not AreAllVehicleWindowsIntact(veh) then
                    for i = 0, 7 do
                        damage.windows[tostring(i)] = IsVehicleWindowIntact(veh, i)
                    end
                end

                for i = 0, 5 do
                    damage.tyres[i] = IsVehicleTyreBurst(veh,i,false)
                end

                damage.tyres[45] = IsVehicleTyreBurst(veh,45,false)
                damage.tyres[47] = IsVehicleTyreBurst(veh,47,false)

                local engine = math.floor(GetVehicleEngineHealth(veh))
                local body = math.floor(GetVehicleBodyHealth(veh))
                local fuel = math.floor(GetVehicleFuelLevel(veh))

                damage.exploded = engine <= -100
                damage.dirtLevel = GetVehicleDirtLevel(veh)
                damage.petrolTankHealth = GetVehiclePetrolTankHealth(veh)
                damage.oilLevel = GetVehicleOilLevel(veh)

                return engine, body, fuel, damage
            end

            RegisterCommand("nyo_module:vehicleLock", function()
                local ped = PlayerPedId()
                local cds = GetEntityCoords(ped)
                local veh = getNearestVehicle(5.0)
                if veh and veh ~= 0 then
                    if GetVehicleNumberPlateText(veh) == vRP.getRegistrationNumber() then
                        local vehLock = GetVehicleDoorLockStatus(veh)
                        if vehLock == 2 then
                            TriggerServerEvent("nyo_module:setVehicleLock", VehToNet(veh), 1)
                            notify("#ffffff","Importante", "Veículo destrancado com sucesso!", 8000)
                        elseif vehLock == 1 then
                            TriggerServerEvent("nyo_module:setVehicleLock", VehToNet(veh), 2)
                            notify("#ffffff","Importante", "Veículo trancado com sucesso!", 8000)
                        else
                            TriggerServerEvent("nyo_module:setVehicleLock", VehToNet(veh), 1)
                            notify("#ffffff","Importante", "Veículo destrancado com sucesso!", 8000)
                        end
                        TriggerEvent('vrp_sound:source', 'lock', 0.5)
                        SetVehicleLights(veh, 2)
                        Wait(200)
                        SetVehicleLights(veh, 0)
                        Wait(200)
                        SetVehicleLights(veh, 2)
                        Wait(200)
                        SetVehicleLights(veh, 0)
                    end
                end
            end)

            RegisterKeyMapping("nyo_module:vehicleLock", 'Trancar / Destrancar veículos', 'KEYBOARD', "l")

        end

          -- Start Module Conce Functions
        if configModule['conce'] then
            function openConce(config)
                SetNuiFocus(true, true)
                SendNUIMessage({
                    acao = 'conceOpen',
                    config = config
                })
            end
        end

        -- Start Module Bennys Functions
        if configModule['bennys'] then

            local bennysCamera,gameplaycam,inBennys,bennysFocusInput
            local modTypes = {
                [0]  = { name = 'Aerofólio', category = 'customization' },
                [1]  = { name = 'Parachoque Frontal', category = 'customization' },
                [2]  = { name = 'Parachoque Traseiro', category = 'customization' },
                [3]  = { name = 'Saia Lateral', category = 'customization' },
                [4]  = { name = 'Escapamento', category = 'performance' },
                [5]  = { name = 'Chassi', category = 'customization' },
                [6]  = { name = 'Grade Frontal', category = 'customization' },
                [7]  = { name = 'Capô', category = 'customization' },
                [8]  = { name = 'Paralamas', category = 'customization' },
                [9]  = { name = 'Paralama Direita', category = 'customization' },
                [10] = { name = 'Teto', category = 'customization' },
                [11] = { name = 'Motor', category = 'performance' },
                [12] = { name = 'Freio', category = 'performance' },
                [13] = { name = 'Transmissão', category = 'performance' },
                [14] = { name = 'Buzina', category = 'customization' },
                [15] = { name = 'Suspensão', category = 'performance' },
                [16] = { name = 'Resistência', category = 'performance' },
                [17] = { name = 'Nitro', category = 'performance' },
                [18] = { name = 'Turbo', category = 'performance' },
                [19] = { name = 'Som', category = 'customization' },
                [20] = { name = 'Fumaça da Roda', category = 'wheels' },
                [21] = { name = 'Hidráulica', category = 'performance' },
                [22] = { name = 'Faróis Xenson', category = 'appearance' },
                [23] = { name = 'Rodas', category = 'wheels' },
                [24] = { name = 'Inclinação das Rodas', category = 'wheels' },
                [25] = { name = 'Decoração de Placa', category = 'customization' },
                [26] = { name = 'Placa Customizada', category = 'customization' },
                [27] = { name = 'Painel', category = 'interior' },
                [28] = { name = 'Gaiola de Proteção', category = 'interior' },
                [29] = { name = 'Interior 3', category = 'interior' },
                [30] = { name = 'Velocímetro', category = 'interior' },
                [31] = { name = 'Portas', category = 'interior' },
                [32] = { name = 'Assentos', category = 'interior' },
                [33] = { name = 'Volante', category = 'interior' },
                [34] = { name = 'Decoração Interna', category = 'interior' },
                [35] = { name = 'Decoração', category = 'customization' },
                [36] = { name = 'Alto Falantes', category = 'customization' },
                [37] = { name = 'Porta Malas', category = 'customization' },
                [38] = { name = 'Suspensão a ar', category = 'performance' },
                [39] = { name = 'Motor', category = 'customization' },
                [40] = { name = 'Customização de Motor 1', category = 'performance' },
                [41] = { name = 'Customização de Motor 2', category = 'performance' },
                [42] = { name = 'Cobertura Frontal', category = 'customization' },
                [43] = { name = 'Antenas', category = 'customization' },
                [44] = { name = 'Chassi 4', category = 'customization' },
                [45] = { name = 'Armas', category = 'customization' },
                [46] = { name = 'Porta Esquerda', category = 'customization' },
                [47] = { name = 'Porta Direita', category = 'customization' },
                [48] = { name = 'Pintura', category = 'appearance' },
                [49] = { name = 'Luz', category = 'appearance' },
            }

            local bennysConfig = {}
            local playerVeh,vehModifications,newModifications,avaiableModifications

            function GetVehicleMods()
                local vehicleMods = {}
                return vehicleMods
            end

            function openBennys(config)
                local ped = PlayerPedId()
                playerVeh = GetVehiclePedIsIn(ped,false)
                if playerVeh == 0 then
                    inShop = false
                    return
                end

                inBennys = true

                bennysConfig = config
                newModTypes = modTypes

                gameplaycam = GetRenderingCam()
                GetVehicleExtraColours(playerVeh,0)

                local r1,g1,b1 = GetVehicleCustomPrimaryColour(playerVeh)
                local r2,g2,b2 = GetVehicleCustomSecondaryColour(playerVeh)
                local r3,g3,b3 = GetVehicleTyreSmokeColor(playerVeh)
                local r4,g4,b4 = GetVehicleNeonLightsColour(playerVeh)
                local wheelType = GetVehicleWheelType(playerVeh)
                local pearlescentColour, wheelColour = GetNumVehicleMods(playerVeh)

                vehModifications = {}
                availableModifications = {}

                for i = 0,49 do
                    local numMods = GetNumVehicleMods(playerVeh,i)
                    local modSlotName = GetModSlotName(playerVeh,i)
                    if modSlotName and modSlotName ~= "" then
                        local labelName = GetLabelText(modSlotName)
                        if labelName and labelName ~= 'NULL' then
                            newModTypes[i].name = labelName
                        else
                            newModTypes[i].name = modSlotName
                        end
                    end
                    newModTypes[i].price = config[i] and config[i].price or 1000
                    local modsNames = {}
                    if i == 9 then
                        goto restart
                    end
                    if i == 23 then
                        for j = 0, 12 do
                            SetVehicleWheelType(playerVeh,j)
                            numMods = GetNumVehicleMods(playerVeh,i)
                            modsNames[j] = {}
                            for r = 0, numMods - 1 do
                                modsNames[j][r] = GetLabelText(GetModTextLabel(playerVeh,23,r))
                            end
                            modsNames[j].numMods = numMods
                        end
                        availableModifications[i] = {1,modsNames}
                    else
                        for j = -1, numMods -1 do
                            local modTextLabel = GetModTextLabel(playerVeh,i,j)
                            if modTextLabel then
                                local label = GetLabelText(modTextLabel)
                                if label and label ~= "NULL" then
                                    modsNames[j] = label
                                end
                            end
                        end
                        availableModifications[i] = {numMods,modsNames}
                    end
                    vehModifications[i] = GetVehicleMod(playerVeh,i)
                    ::restart::
                end

                SetVehicleWheelType(playerVeh,wheelType)

                vehModifications.primaryPaintType   = GetVehicleModColor_1(playerVeh)
                vehModifications.secondaryPaintType = GetVehicleModColor_2(playerVeh)
                -- vehModifications.dashboardColour    = GetVehicleDashboardColor(playerVeh)
                -- vehModifications.interiorColour     = GetVehicleInteriorColour(playerVeh)
                vehModifications[20]                = IsToggleModOn(playerVeh, 20)
                vehModifications[18]                = IsToggleModOn(playerVeh, 18)
                vehModifications[22]                = IsToggleModOn(playerVeh, 22)
                vehModifications.windowTint         = GetVehicleWindowTint(playerVeh)
                vehModifications.xenonColour        = GetVehicleXenonLightsColor(playerVeh)
                vehModifications.wheelType          = wheelType
                vehModifications.pearlescentColour  = pearlescentColour
                vehModifications.wheelColour        = wheelColour
                vehModifications.primaryColour      = {r = r1,g = g1, b = b1}
                vehModifications.secondaryColour    = {r = r2,g = g2, b = b2}
                vehModifications.tyreSmokeColour    = {r = r3,g = g3, b = b3}
                vehModifications.neon               = { color = { r = r4, g = g4, b = b4} }
                vehModifications.plate              = GetVehicleNumberPlateTextIndex(playerVeh)

                if vehModifications.primaryPaintType == 6 then
                    vehModifications.primaryPaintType = 0
                    SetVehicleModColor_1(playerVeh, 0, 0, vehModifications.pearlescentColour)
                    SetVehicleCustomPrimaryColour(playerVeh, vehModifications.primaryColour.r, vehModifications.primaryColour.g, vehModifications.primaryColour.b)
                end

                if vehModifications.secondaryPaintType == 6 then
                    vehModifications.secondaryPaintType = 0
                    SetVehicleModColor_2(playerVeh, 0, 0)
                    SetVehicleCustomSecondaryColour(playerVeh, vehModifications.secondaryColour.r, vehModifications.secondaryColour.g, vehModifications.secondaryColour.b)
                end

                if vehModifications.windowTint == -1 then
                    vehModifications.windowTint = 0
                    SetVehicleWindowTint(playerVeh,0)
                end

                for i = 0, 3 do
                    vehModifications.neon[i] = IsVehicleNeonLightEnabled(playerVeh,i)
                end

                newModifications = {}

                for k,v in pairs(vehModifications) do
                    newModifications[k] = v
                end

                local vehicle, netvehicle, plate, vname = getNearestVehicleWithInfo( 2.0)

                FreezeEntityPosition(playerVeh,true)
                SetNuiFocus(true, true)
                SendNUIMessage({
                    acao = 'bennysOpen',
                    config = config,
                    vehModifications = vehModifications,
                    availableModifications = availableModifications,
                    modTypes = newModTypes,
                    vname = vname,
                    isBike = IsThisModelABike(GetEntityModel(playerVeh))
                })

            end

            RegisterNUICallback('bennysClose', function(data,cb)
                inShop,inBennys,bennysFocusInput = false, false, false

                SetNuiFocus(false, false)
                SetNuiFocusKeepInput(false)
                FreezeEntityPosition(playerVeh,false)

                GetVehicleExtraColours(veh,0)
                local veh = playerVeh
                local data = vehModifications
            
                SetVehicleWheelType(veh,data.wheelType)

                for i = 0, 49 do
                    if type(data[i]) == "boolean" then
                        ToggleVehicleMod(veh,i,data[i])
                    else
                        SetVehicleMod(veh,i,data[i])
                    end
                end

                for i = 0, 3 do
                    SetVehicleNeonLightEnabled(veh, i, data.neon[i])
                end

                SetVehicleModColor_1(veh, data.primaryPaintType, 0, data.pearlescentColour)
                SetVehicleModColor_2(veh, data.secondaryPaintType, 0)
                SetVehicleCustomPrimaryColour(veh, data.primaryColour.r, data.primaryColour.g, data.primaryColour.b)
                SetVehicleCustomSecondaryColour(veh, data.secondaryColour.r, data.secondaryColour.g, data.secondaryColour.b)
                -- SetVehicleDashboardColor(veh, data.dashboardColour)
                -- SetVehicleInteriorColour(veh, data.interiorColour)
                SetVehicleTyreSmokeColor(veh, data.tyreSmokeColour.r, data.tyreSmokeColour.g, data.tyreSmokeColour.b)
                SetVehicleExtraColours(veh, data.pearlescentColour, data.wheelColour)
                SetVehicleWindowTint(veh, data.windowTint)
                SetVehicleNeonLightsColour(veh,data.neon.color.r,data.neon.color.g,data.neon.color.b)
                SetVehicleXenonLightsColor(veh, data.xenonColour)
                SetVehicleNumberPlateTextIndex(veh, data.plate)

                vehModifications,newModifications,availableModifications = nil,nil,nil

                cb({})
            end)

            RegisterNUICallback("bennysSave",function(data,cb)
                inShop,inBennys,bennysFocusInput = false, false, false

                SetNuiFocus(false, false)
                SetNuiFocusKeepInput(false)
                FreezeEntityPosition(playerVeh,false)

                local payPrice = 0
                local vehicle, netvehicle, plate, vname = getNearestVehicleWithInfo( 2.0)

                if not vname then return end

                local success, error = nyoModuleS.i4xjIR5pRTrQg(vname, vehModifications, newModifications, bennysConfig, plate)

                if not success then
                    TriggerEvent("nyo_notify", "#FF0000", "Negado:", error, 8000, "fa-heartbeat")

                    GetVehicleExtraColours(veh,0)
                    local veh = playerVeh
                    local data = vehModifications
                
                    SetVehicleWheelType(veh,data.wheelType)
    
                    for i = 0, 49 do
                        if type(data[i]) == "boolean" then
                            ToggleVehicleMod(veh,i,data[i])
                        else
                            SetVehicleMod(veh,i,data[i])
                        end
                    end
    
                    for i = 0, 3 do
                        SetVehicleNeonLightEnabled(veh, i, data.neon[i])
                    end
    
                    SetVehicleModColor_1(veh, data.primaryPaintType, 0, data.pearlescentColour)
                    SetVehicleModColor_2(veh, data.secondaryPaintType, 0)
                    SetVehicleCustomPrimaryColour(veh, data.primaryColour.r, data.primaryColour.g, data.primaryColour.b)
                    SetVehicleCustomSecondaryColour(veh, data.secondaryColour.r, data.secondaryColour.g, data.secondaryColour.b)
                    -- SetVehicleDashboardColor(veh, data.dashboardColour)
                    -- SetVehicleInteriorColour(veh, data.interiorColour)
                    SetVehicleTyreSmokeColor(veh, data.tyreSmokeColour.r, data.tyreSmokeColour.g, data.tyreSmokeColour.b)
                    SetVehicleExtraColours(veh, data.pearlescentColour, data.wheelColour)
                    SetVehicleWindowTint(veh, data.windowTint)
                    SetVehicleNeonLightsColour(veh,data.neon.color.r,data.neon.color.g,data.neon.color.b)
                    SetVehicleXenonLightsColor(veh, data.xenonColour)
                    SetVehicleNumberPlateTextIndex(veh, data.plate)

                else
                    TriggerEvent("nyo_notify", "#00FF00", "Sucesso:", "Tunagens aplicadas com sucesso", 8000)
                end

                vehModifications,newModifications,availableModifications = nil,nil,nil

                cb({})
            end)

            RegisterNUICallback("bennysSetVehMod",function(data,cb)
                newModifications[data.modType] = data.modIndex
                SetVehicleMod(playerVeh, data.modType, data.modIndex)
                cb({})
            end)

            RegisterNUICallback('bennysSetWheel', function(data,cb)
                newModifications.wheelType = data.wheelType
                newModifications[data.rearWheel and 24 or 23] = data.wheelIndex
                SetVehicleWheelType(playerVeh,data.wheelType)
                SetVehicleMod(playerVeh, data.rearWheel and 24 or 23, data.wheelIndex, true)
                cb({})
            end)

            RegisterNUICallback('bennysSetColor', function(data,cb)
                newModifications[(data.type == 1 and 'primary' or 'secondary')..'Colour'] = { r = data.r,g = data.g,b = data.b}
                _G['SetVehicleCustom'..(data.type == 1 and 'Primary' or 'Secondary')..'Colour'](playerVeh,data.r,data.g,data.b)
                cb({})
            end)

            RegisterNUICallback('bennysSetPaintType',function(data,cb)
                newModifications[(data.type == 1 and 'primary' or 'secondary')..'PaintType'] = data.paintType
                local rgb = newModifications[(data.type == 1 and 'primary' or 'secondary')..'Colour']
                _G['SetVehicleModColor_'..data.type](playerVeh,data.paintType,0,newModifications.pearlescentColour)
                _G['SetVehicleCustom'..(data.type == 1 and 'Primary' or 'Secondary')..'Colour'](playerVeh,rgb.r,rgb.g,rgb.b)
                cb({})
            end)

            RegisterNUICallback('bennysSetPearlescentColour', function(data,cb)
                newModifications.pearlescentColour = data.colourIndex
                SetVehicleExtraColours(playerVeh, newModifications.pearlescentColour, data.colourIndex)
                cb({})
            end)

            RegisterNUICallback('bennysSetWheelColour', function(data,cb)
                newModifications.wheelColour = data.colourIndex
                SetVehicleExtraColours(playerVeh, newModifications.pearlescentColour, data.colourIndex)
                cb({})
            end)

            RegisterNUICallback('bennysSetTyreSmokeColour', function(data,cb)
                newModifications.tyreSmokeColour = data
                SetVehicleTyreSmokeColor(playerVeh, data.r, data.g, data.b)
                cb({})
            end)

            RegisterNUICallback('bennysToogleMod',function(data,cb)
                newModifications[data.mod] = data.state
                ToggleVehicleMod(playerVeh,data.mod,data.state)
                cb({})
            end)

            RegisterNUICallback('bennysSetWindowTint', function(data,cb)
                newModifications.windowTint = data.value
                SetVehicleWindowTint(playerVeh, data.value)
                cb({})
            end)

            RegisterNUICallback('bennysToggleNeon', function(data,cb)
                newModifications.neon[data.index] = data.state
                SetVehicleNeonLightEnabled(playerVeh,data.index,data.state)
                cb({})
            end)

            RegisterNUICallback('bennysChangeNeonColor', function(data,cb)
                newModifications.neon.color = data
                SetVehicleNeonLightsColour(playerVeh,data.r,data.g,data.b)
            end)

            RegisterNUICallback('bennysSetXenonColor', function(data,cb)
                newModifications.xenonColour = data.value
                SetVehicleXenonLightsColor(playerVeh, data.value)
            end)

            RegisterNUICallback('bennysSetFocus', function(data,cb)
                if inBennys then
                    bennysFocusInput = not bennysFocusInput
                    SetNuiFocusKeepInput(bennysFocusInput)
                    while bennysFocusInput do
                        DisableControlAction(0,200,true)
                        DisableControlAction(0,263,true)
                        DisableControlAction(0,264,true)
                        DisableControlAction(0,257,true)
                        DisableControlAction(0,140,true)
                        DisableControlAction(0,141,true)
                        DisableControlAction(0,142,true)
                        DisableControlAction(0,121,true)
                        DisableControlAction(0,114,true)
                        DisableControlAction(0,92,true)
                        DisableControlAction(0,70,true)
                        DisableControlAction(0,69,true)
                        DisableControlAction(0,24,true)
                        DisableControlAction(0,25,true)
                        Wait(4)
                    end
                end
                cb({})
            end)

            RegisterNUICallback('bennysSetPlateIndex', function(data,cb)
                newModifications.plate = data.plate
                SetVehicleNumberPlateTextIndex(playerVeh, data.plate)
            end)

            RegisterNetEvent('nyo_modules:applyVehicleCustomization',function(netid,data)
                local veh = NetToVeh(netid)

                GetVehicleExtraColours(veh,0)
                
                SetVehicleWheelType(veh,data.wheelType)

                for i = 0, 49 do
                    local index = tostring(i)
                    if type(data[index]) == "boolean" then
                        ToggleVehicleMod(veh,i,data[index])
                    else
                        SetVehicleMod(veh,i,data[index])
                    end
                end

                for i = 0, 3 do
                    SetVehicleNeonLightEnabled(veh, i, data.neon[tostring(i)])
                end

                SetVehicleModColor_1(veh, data.primaryPaintType, 0, data.pearlescentColour)
                SetVehicleModColor_2(veh, data.secondaryPaintType, 0)
                SetVehicleCustomPrimaryColour(veh, data.primaryColour.r, data.primaryColour.g, data.primaryColour.b)
                SetVehicleCustomSecondaryColour(veh, data.secondaryColour.r, data.secondaryColour.g, data.secondaryColour.b)
                -- SetVehicleDashboardColor(veh, data.dashboardColour)
                -- SetVehicleInteriorColour(veh, data.interiorColour)
                SetVehicleTyreSmokeColor(veh, data.tyreSmokeColour.r, data.tyreSmokeColour.g, data.tyreSmokeColour.b)
                SetVehicleExtraColours(veh, data.pearlescentColour, data.wheelColour)
                SetVehicleWindowTint(veh, data.windowTint)
                SetVehicleNeonLightsColour(veh,data.neon.color.r,data.neon.color.g,data.neon.color.b)
                SetVehicleXenonLightsColor(veh, data.xenonColour)
                SetVehicleNumberPlateTextIndex(veh, data.plate)

            end)

        end
        
        -- Start Module Car Damage System Functions
        if configModule['carDamageSystem'] then

            local ignore = vec3(0,0,0)

            local lastDamage = 1000.0
            local damages = {}
            
            function getDamage()
                while true do
                    local ped = PlayerPedId()
                    local veh = GetVehiclePedIsIn(ped,false)
                    if veh ~= 0 then
                        local vehCoords = GetEntityCoords(veh)
                        local vehBodyHealth = GetVehicleBodyHealth(veh)
                        local lastCollNormalVec = GetCollisionNormalOfLastHitForEntity(veh)
                        local damage = lastDamage - vehBodyHealth
                        if lastCollNormalVec ~= vec3(0.0,0.0,0.0) and damage > 0 then
                            local lastCollVec = GetOffsetFromEntityGivenWorldCoords(veh, vehCoords + lastCollNormalVec)
                            damages[#damages + 1] = { offset = lastCollVec, damage = damage * 10 }
                            lastDamage = vehBodyHealth
                            print '-------------------------------\n'
                            print()
                            print(lastCollNormalVec)
                            print(lastCollVec)
                            print(damage)
                            print(veh)
                            print '\n-------------------------------'
                        end
                    end
                    Wait(0)
                end
            end

            RegisterCommand('setdamage', function()
                local ped = PlayerPedId()
                local veh = GetVehiclePedIsIn(ped,false)
                if veh ~= 0 then
                    print(#damages)
                    for k,v in pairs(damages) do
                        print(v.offset, v.damage)
                        SetVehicleDamage(veh, v.offset.x, v.offset.y, v.offset.z, v.damage, 80.0, nil)
                    end
                end
                print(#json.encode(damages))
                print(json.encode(damages))
            end)

            CreateThread(getDamage)
        end
    
        -- Start Module CarSystem functions
        if configModule['carSystem'] then 
            RegisterNetEvent("nyoModule:CarSystem")
            AddEventHandler("gameEventTriggered", function(eventName, args)
                if eventName == "CEventNetworkPlayerEnteredVehicle" then
                    TriggerEvent("nyoModule:CarSystem", tonumber(args[2]))
                end
            end)

            CreateThread(function()
                Wait(5000)
                local ped = PlayerPedId()
                if IsPedInAnyVehicle(ped) then 
                    local vehicle = GetVehiclePedIsIn(ped)
                    TriggerEvent("nyoModule:CarSystem",vehicle)
                end
            end)
            
        end

        -- Start Module Robbery functions 
        if configModule['robbery'] then 
            function startRobberyKey()
                CreateThread(function()            
                    while timeRoubo > 0 do 
                        Wait(4)
                        drawTxt2D("APERTE ~r~M~w~ PARA CANCELAR O ROUBO EM ANDAMENTO",4,0.5,0.91,0.36,255,255,255,180)
                        drawTxt2D("RESTAM ~g~"..timeRoubo.." SEGUNDOS ~w~PARA TERMINAR",4,0.5,0.93,0.50,255,255,255,180)
                        if IsControlJustPressed(0, 244) then 
                            timeRoubo = 0
                        end
                    end
                end)
            end
        end

        -- Start Module Fuel functions 
        if configModule['fuel'] then
            local cfg = {}           
            
            pumpOffSet = {
                [-2007231801] = {
                    0.0,0.0,2.11
                },
                [1339433404] = {
                    0.0,0.0,2.11
                },
                [1933174915] = {
                   0.0,0.0,2.21  
                },
                [1694452750] = {
                    0.0,0.0,2.21
                }
            }

            configFuelI = {}
            CreateThread(function()                
                configFuelI = nyoModuleS.g6xX40sFkSjoj('fuel')
                DecorRegister(configFuelI.FuelDecor,1)
            end)

            if configModule['carSystem'] then                
                AddEventHandler("nyoModule:CarSystem", function(vehicle)
                    CreateThread(function()	
                        ped = PlayerPedId()
                        while IsPedInAnyVehicle(ped) do
                            ped = PlayerPedId()
                            Wait(1000)
                            local vehicle = GetVehiclePedIsIn(ped)
                            if GetPedInVehicleSeat(vehicle,-1) == ped then
                                fuelUsage(vehicle)     
                            else 
                                updateSyncFuel(vehicle)            
                            end
                        end
                    end)
                    
                    CreateThread(function()
                        ped = PlayerPedId()
                        while IsPedInAnyVehicle(ped) do 
                            ped = PlayerPedId()
                            sleep = 4
                            local vehicle = GetVehiclePedIsIn(ped)
                            if GetPedInVehicleSeat(vehicle,-1) == ped then
                                local fuel = GetVehicleFuelLevel(vehicle)    
                                if fuel <= 0.0 then 
                                    SetVehicleUndriveable(vehicle,true)
                                end 
                            end
                            Wait(sleep)
                        end
                    end)
                end)
            else 
                CreateThread(function()	
                    ped = PlayerPedId()
                    while true do
                        ped = PlayerPedId()
                        Wait(1000)
                        if IsPedInAnyVehicle(ped) then 
                            local vehicle = GetVehiclePedIsIn(ped)
                            if GetPedInVehicleSeat(vehicle,-1) == ped then
                                fuelUsage(vehicle)
                            else 
                                updateSyncFuel(vehicle)                
                            end
                        end                        
                    end
                end)
                
                CreateThread(function()
                    ped = PlayerPedId()
                    while true do 
                        ped = PlayerPedId()
                        sleep = 1000
                        if IsPedInAnyVehicle(ped) then 
                            sleep = 4
                            local vehicle = GetVehiclePedIsIn(ped)
                            if GetPedInVehicleSeat(vehicle,-1) == ped then
                                local fuel = GetVehicleFuelLevel(vehicle)    
                                if fuel <= 0.0 then 
                                    SetVehicleUndriveable(vehicle,true)
                                end 
                            end
                        end                        
                        Wait(sleep)
                    end
                end)
            end
            
            function updateSyncFuel(vehicle)
                -- sync player
            end

            function fuelUsage(vehicle)
                if IsVehicleEngineOn(vehicle) then
                    local atualFuel = nyoModuleS.h5xaz6FCRmWsM(VehToNet(vehicle))
                        if atualFuel == false then 
                            atualFuel = GetVehicleFuelLevel(vehicle)
                        end
                    local newFuel = atualFuel - configFuelI.FuelUsage[Round(GetVehicleCurrentRpm(vehicle),1)] * (configFuelI.Classes[GetVehicleClass(vehicle)] or 1.0) / 10
                    if newFuel > 100.00 then 
                        newFuel = 99.99
                    end
                      
                    nyoModuleS.i2xfoyl3W239L(VehToNet(vehicle), newFuel)           
                    SetVehicleFuelLevel(vehicle,newFuel)
                    DecorSetFloat(vehicle,configFuelI.FuelDecor,GetVehicleFuelLevel(vehicle))
                else                    
                    local atualFuel = nyoModuleS.h5xaz6FCRmWsM(VehToNet(vehicle))
                  
                    if atualFuel == false then 
                        atualFuel = GetVehicleFuelLevel(vehicle)
                    end
                    SetVehicleFuelLevel(vehicle,atualFuel)
                    DecorSetFloat(vehicle,configFuelI.FuelDecor,GetVehicleFuelLevel(vehicle))
                end
            end

            function startFuelPumps(config,x,y,z)
                local fuelPumps = {}
                CreateThread(function()
                    while fuelConfig.index ~= nil do                        
                        local pool = {}
                        dataVehicle2,dataVnetId2,dataVPlaca2,dataVName2 = getNearestVehicleWithInfo(3) 
                        for k,v in pairs(GetGamePool('CObject')) do
                            for k2,v2 in pairs(config.fuelPumps) do 
                                if GetEntityModel(v) == v2.hash then
                                    table.insert(pool,{
                                        GetOffsetFromEntityInWorldCoords(v,0.0,-1.0,0.0),
                                        GetOffsetFromEntityInWorldCoords(v,0.0,1.0,0.0),
                                        GetEntityCoords(v),
                                        v,
                                        v2.type,
                                        v2.price
                                    })
                                end
                            end                            
                        end
                        fuelPumps = pool
                        Wait(2000)
                    end
                end)


                CreateThread(function()
                    while fuelConfig.index ~= nil do
                        local ped = PlayerPedId()
                        local cds = GetEntityCoords(ped)
                        local nyoSleep = 1000
                        if configFuelI.vehicleEletrical ~= nil then 
                            if not fuelConfig.canFuel then  
                                fuelConfig.abastecer = false
                                local dataVehicle = GetPlayersLastVehicle()
                                local vehicleCoords = GetEntityCoords(dataVehicle)   
                                for k,v in pairs(fuelPumps) do
                                    nyoSleep = 4
                                    local pumpType = v[5]
    
                                    local abType = 0
                                    local pumpDist = 3.0
                                    if dataVehicle ~= nil then 
                                        if pumpType == 'eletrical' and checkVehicleClass(GetVehicleClass(dataVehicle),pumpType) then                                             
                                            if configFuelI.vehicleEletrical[dataVName2] then 
                                                fuelConfig.abastecer = true
                                                pumpDist = 3.0
                                                abType = 1
                                            end
                                        elseif pumpType == 'car' and checkVehicleClass(GetVehicleClass(dataVehicle),pumpType) then 
                                            if not configFuelI.vehicleEletrical[dataVName2] then 
                                                fuelConfig.abastecer = true
                                                pumpDist = 3.0
                                                abType = 1
                                            end
                                        elseif pumpType == 'heli' and checkVehicleClass(GetVehicleClass(dataVehicle),pumpType) then 
                                            fuelConfig.abastecer = true
                                            pumpDist = 8.0
                                            abType = 1
                                        elseif pumpType == 'plane' and checkVehicleClass(GetVehicleClass(dataVehicle),pumpType) then 
                                            fuelConfig.abastecer = true
                                            pumpDist = 8.0
                                            abType = 1
                                        elseif pumpType == 'boat' and checkVehicleClass(GetVehicleClass(dataVehicle),pumpType) then 
                                            fuelConfig.abastecer = true
                                            pumpDist = 8.0
                                            abType = 1
                                        end
                                    else 
                                        fuelConfig.abastecer = true
                                        pumpDist = 1.5 
                                    end
                                    
                                    local distance = #(cds - v[3])
                                    if distance <= pumpDist then 
                                        if fuelConfig.abastecer then   
                                            if abType == 1 then 
                                                if IsPedInAnyVehicle(ped) and GetPedInVehicleSeat(GetVehiclePedIsIn(ped),-1) == ped then  
                                                    if pumpType == 'eletrical' then 
                                                        DrawText3Ds(v[3].x,v[3].y,v[3].z + 1.2,"SAIA DO ~y~VEÍCULO ~w~PARA RECARREGAR")
                                                    else 
                                                        DrawText3Ds(v[3].x,v[3].y,v[3].z + 1.2,"SAIA DO ~y~VEÍCULO ~w~PARA ABASTECER")
                                                    end                                                            
                                                else
                                                    distAnalise = 3.5 
                                                    if pumpType == 'heli' then 
                                                        distAnalise = 4.0
                                                    end
                                                    if DoesEntityExist(dataVehicle) and (#(cds - vehicleCoords) < distAnalise) then
                                                        if not DoesEntityExist(GetPedInVehicleSeat(dataVehicle,-1)) then
                                                            local vFuel = GetVehicleFuelLevel(dataVehicle)
                                                            if vFuel < 99 then
                                                                if pumpType == 'eletrical' then 
                                                                    DrawText3Ds(v[3].x,v[3].y,v[3].z + 1.2,"PRESSIONE ~g~E ~w~PARA RECARREGAR")
                                                                else
                                                                    DrawText3Ds(v[3].x,v[3].y,v[3].z + 1.2,"PRESSIONE ~g~E ~w~PARA ABASTECER")
                                                                end                                                                        
                                                                if IsControlJustPressed(0, 38) then 
                                                                    fuelConfig.pumpId = v[4]
                                                                    fuelConfig.canFuel = true
                                                                    fuelConfig.pumpPrice = v[6]
                                                                    fuelConfig.pumpBrand = config.fuelBrand
                                                                    fuelConfig.vehicleId = dataVehicle
                                                                    fuelConfig.vehicleFuel = vFuel
                                                                    fuelConfig.userMoney = nyoModuleS.h6xJypIjUstGO()
                                                                    Wait(50)
                                                                    SetNuiFocus(true, true)
                                                                    TriggerEvent('cancelando',true)
                                                                    SendNUIMessage({acao = 'fuel', brand = config.fuelBrand, type = pumpType, price = fuelConfig.pumpPrice, vFuel = vFuel})
                                                                end
                                                            end                                   
                                                        end
                                                    end
                                                end
                                            else 
                                                -- caso não for AB1
                                            end
                                        end
                                    end
                                end  
                            end                 
                        end                               
                        Wait(nyoSleep)
                    end
                end)
            end

            function checkVehicleClass(vehicle, type)
                local valid = false
                if type == 'car' or type == 'eletrical' or type == 'bike' then 
                    if vehicle <= 7 or vehicle == 8 or vehicle == 9 or vehicle == 10 or vehicle == 11 or vehicle == 12 or vehicle == 17 or vehicle == 18 or vehicle == 20 then 
                        valid = true
                    end
                elseif type == 'boat' then 
                    if vehicle == 14 then
                        valid = true 
                    end
                elseif type == 'heli' then 
                    if vehicle == 15 then
                        valid = true 
                    end
                elseif type == 'plane' then 
                    if vehicle == 16 then
                        valid = true
                    end
                end

                return valid
            end

            
            RegisterNUICallback("fuelClose",function(data,cb)
                ped = PlayerPedId()
                if fuelConfig.isFueling then 
                    stopFuel()
                    fuelConfig.isFueling = false
                end 
                fuelConfig.isFueling = false 
                fuelConfig.index = nil
                fuelConfig.canFuel = nil
                fuelConfig.pumpId = nil
                TriggerEvent('cancelando',false)
                SetNuiFocus(false, false)
                ClearPedTasks(ped)
            end)

            RegisterNUICallback("fuelSet",function(data,cb)
                if data == 'start' then 
                    fuelConfig.isFueling = true 
                    startFuel()
                elseif data == 'stop' then 
                    stopFuel()
                    if fuelConfig.isFueling then 
                        fuelConfig.isFueling = false
                    end 
                    fuelConfig.canFuel = false                    
                    fuelConfig.totalFuel = 0
                    fuelConfig.totalPrice = 0
                    fuelConfig.vehicleId = nil
                    fuelConfig.vehicleFuel = 0
                end
            end)

            function startFuel()
                ped = PlayerPedId()
                if pumpOffSet[GetEntityModel(fuelConfig.pumpId)] ~= nil then                     
                    startFuelRope()
                end
                TaskTurnPedToFaceEntity(ped,fuelConfig.vehicleId,5000)
                CreateThread(function()
                    while fuelConfig.isFueling do                
                        local fuelAdd = math.random(20,20) / 100.0
                        fuelConfig.totalFuel = fuelConfig.totalFuel + fuelAdd
                        fuelConfig.currentFuel = (fuelConfig.vehicleFuel + fuelConfig.totalFuel) + 0.0000001
                        fuelConfig.totalPrice = fuelConfig.totalPrice + (fuelAdd * fuelConfig.pumpPrice)
    
                        if fuelConfig.currentFuel >= 100 then 
                            fuelConfig.currentFuel = 99.9999
                            SetVehicleFuelLevel(fuelConfig.vehicleId,fuelConfig.currentFuel)
                            stopFuel()                            
                        else   
                            if fuelConfig.totalPrice < fuelConfig.userMoney then 
                                SetVehicleFuelLevel(fuelConfig.vehicleId,fuelConfig.currentFuel)
                                SendNUIMessage({ 
                                    acao = 'fuelUpdate',
                                    vehicleFuel = fuelConfig.currentFuel,
                                    totalPrice = fuelConfig.totalPrice,
                                    totalFuel = fuelConfig.totalFuel
                                })
                            else 
                                stopFuel()
                            end
                        end  
                        Wait(100)
                    end
                end)
                CreateThread(function()
                    ped = PlayerPedId()
                    TaskTurnPedToFaceEntity(ped,vehicleId,5000)
                    if not HasAnimDictLoaded("timetable@gardener@filling_can") then
                        RequestAnimDict("timetable@gardener@filling_can")
                        while not HasAnimDictLoaded("timetable@gardener@filling_can") do
                            Wait(10)
                        end
                    end
                    TaskPlayAnim(ped,"timetable@gardener@filling_can","gar_ig_5_filling_can",2.0,8.0,-1,50,0,0,0,0)
                    while true do 
                        local nyoSleep = 300
                        if fuelConfig.isFueling then 
                            nyoSleep = 1               
                            for k,v in pairs(configFuelI.DisableKeys) do
                                DisableControlAction(0,v)
                            end
                        else 
                            ClearPedTasks(ped)
                            RemoveAnimDict("timetable@gardener@filling_can")
                            break
                        end
                        Wait(nyoSleep)
                    end
                end)
            end

            function stopFuel() 
                if pumpOffSet[GetEntityModel(fuelConfig.pumpId)] ~= nil then                  
                    stopFuelRope()
                end
                ped = PlayerPedId()   
                fuelConfig.isFueling = false 
                fuelConfig.index = nil
                fuelConfig.canFuel = nil
                fuelConfig.pumpId = nil                
                SetNuiFocus(false, false)    
                SendNUIMessage({ 
                    acao = 'fuelClose'
                })
                TriggerEvent('cancelando',false)
                ClearPedTasks(ped)
                RemoveAnimDict("timetable@gardener@filling_can")
                local h7xPH9PKQwd5hVar = nyoModuleS.h7xPH9PKQwd5h(VehToNet(fuelConfig.vehicleId), fuelConfig.vehicleFuel, fuelConfig.totalFuel, fuelConfig.totalPrice)
                if not h7xPH9PKQwd5hVar then 
                    SetVehicleFuelLevel(fuelConfig.vehicleId,fuelConfig.vehicleFuel)
                end
                fuelConfig.totalFuel = 0
            end

            fuelRope = nil
            fuelProp = nil
            fuelModel = GetHashKey('prop_cs_fuel_nozle')
           

            function startFuelRope()
                local ped = PlayerPedId()
                local plycds = GetEntityCoords(ped)
                local obj = fuelConfig.pumpId
                local objcds = GetEntityCoords(obj)
                local offset = pumpOffSet[GetEntityModel(obj)]
                RequestModel(fuelModel)
                RopeLoadTextures()
                while not RopeAreTexturesLoaded() do
                    Wait(10)
                end
                while not HasModelLoaded(fuelModel) do
                    Wait(10)
                end
                fuelProp = CreateObject(fuelModel,plycds,true,true)
                AttachEntityToEntity(fuelProp,ped,GetPedBoneIndex(ped,60309),0.03,0.05,0.03,95.0,0.0,170.0,false,false,false,false,0,true)
                local propcds = GetEntityCoords(fuelProp)
                fuelRope = AddRope(objcds,0.0,0.0,0.0,0.0,4,0.0,0.0, 0.0, 0, 0, 0, 0.0, false)
                AttachEntitiesToRope(fuelRope, fuelProp, obj, GetOffsetFromEntityInWorldCoords(fuelProp,0.0,0.0,-0.2),GetOffsetFromEntityInWorldCoords(obj, offset[1], offset[2], offset[3]), 0.0, 0, 0, nil, nil)
                StartRopeWinding(fuelRope)
                RopeForceLength(fuelRope, #(GetOffsetFromEntityInWorldCoords(fuelProp,0.0,0.0,-0.2) - GetOffsetFromEntityInWorldCoords(obj, offset[1], offset[2], offset[3])))
            end

            function stopFuelRope()
                local ped = PlayerPedId()
                DeleteEntity(fuelProp)
                DeleteRope(fuelRope)
                RopeUnloadTextures()
                SetModelAsNoLongerNeeded(fuelModel)
            end
            

        end


         -- Start Module DoorsGates functions 
         if configModule['doorGates'] then 
            doorsGeneral = nyoModuleS.g6xX40sFkSjoj('doorsGates')  

            local enableDoorDebug = false
            RegisterCommand("debugdoor", function(source, args)
                enableDoorDebug = true
            end)

            for k,v in pairs(doorsGeneral) do 
                AddDoorToSystem('door_'..k, tonumber(v.model), v.coord)
                local doorLock = 1
                if v.lock then 
                    doorLock = 1 
                else 
                    doorLock = 0
                end 
                DoorSystemSetDoorState('door_'..k, doorLock)
            end

            RegisterNetEvent('nyoModule:UpdateDoorStatus')
            AddEventHandler('nyoModule:UpdateDoorStatus', function(id, typeClose, lock)               
                if doorsGeneral[id] then 
                    local newStatus = true

                    if typeClose then                         
                        newStatus = lock
                    else                         
                        newStatus = true
                    end

                    local group = doorsGeneral[id].group
                    doorsGeneral[id].lock = newStatus 
                    if enableDoorDebug then print('------ I ------') print(id, newStatus) end
                    DoorSystemSetDoorState('door_'..id, newStatus)

                    if typeClose then 
                        for k,v in pairs(doorsGeneral) do 
                            if v.group == group and group ~= '' then 
                                if k ~= id then 
                                    doorsGeneral[k].lock = newStatus 
                                    if enableDoorDebug then print('D', k, newStatus) end
                                    DoorSystemSetDoorState('door_'..k, newStatus) 
                                end
                            end
                        end
                    end
                    
                    if enableDoorDebug then print('------ F ------') end
                end
            end)
         end

        -- Start Module Anim Functions
        if configModule['anim'] then
            local cfgAnim = load(LoadResourceFile('nyo_module', 'cfg/outros/nyo_anim_cfg.lua'))()
                       
            local animObject = nil

            -- RegisterCommand("countAnim", function(source, args)
            --     local acount = 0
            --     for k,v in pairs(cfgAnim.anim) do 
            --         acount = acount + 1
            --     end
            --     print(acount)
            -- end)
            
            RegisterNetEvent("nyo_module:playAnim")
            AddEventHandler("nyo_module:playAnim", function(anim)
                local ped = PlayerPedId()
                local dAnim = cfgAnim.anim[anim]
                if dAnim then 
                    local ped = PlayerPedId()
                    if GetEntityHealth(ped) > 100 then
                        deletarObj()
                        if not IsPedInAnyVehicle(ped) and not dAnim.carros then
                            if dAnim.extra then dAnim.extra() end
                            if dAnim.pos then
                                carregaObj("","",dAnim.prop,dAnim.flag,dAnim.hand,dAnim.pos[1],dAnim.pos[2],dAnim.pos[3],dAnim.pos[4],dAnim.pos[5],dAnim.pos[6])
                            elseif dAnim.prop then
                                carregaObj(dAnim.dict,dAnim.anim,dAnim.prop,dAnim.flag,dAnim.hand)
                            elseif dAnim.dict then
                                playAnim(dAnim.andar,{{dAnim.dict,dAnim.anim}},dAnim.loop)
                            else
                                playAnim(false,{task=dAnim.anim},false)
                            end
                        else 
                            -- anim em carro??
                        end
                    end
                else 
                    print('animação '..anim..' não localizada')
                end
            end)
        end

        -- Start Module DoorsGates functions 
        if configModule['cloakRoom'] then
            local cloakRoomConfig = {} 
            function openNuiCloakRoom(config) 
                local ped = PlayerPedId()
                cloakRoomConfig = config
                SetNuiFocus(true, true)

                local pedModel = GetEntityModel(ped)
                local sexo = ''
                local prefix = ''

                if pedModel == GetHashKey("mp_m_freemode_01") then
                    sexo = 'Male'
                    prefix = 'M'                
                elseif pedModel == GetHashKey("mp_f_freemode_01") then 
                    sexo = 'Female'
                    prefix = 'F'
                end

                SendNUIMessage({ 
                    acao = 'cloakRoomOpen',
                    sexo = prefix,
                    config = config
                })
            end

            RegisterNUICallback("cloakRoomClose", function(data, cb)
                inShop = false
                SetNuiFocus(false, false)
            end)

            RegisterNUICallback("changeClothe",function(data,cb)
                nyoModuleS.changeCloakClothe(data.id, cloakRoomConfig, data.sexo, getCustomization())
            end)

            function nyoModuleC.setUserCloth(cloth)
                setCustomization(cloth)
            end
            
        end
    end
    
    
    function parse_part(key)
        if type(key) == "string" and string.sub(key,1,1) == "p" then
            return true,tonumber(string.sub(key,2))
        else
            return false,tonumber(key)
        end
    end
    
    function setCustomization(custom)
        ped = PlayerPedId()
        for k,v in pairs(custom) do
            if k ~= "model" and k ~= "modelhash" then
                local isprop, index = parse_part(k)
                if isprop then
                    if v[1] < 0 then
                        ClearPedProp(ped,index)
                    else
                        SetPedPropIndex(ped,index,v[1],v[2],v[3] or 2)
                    end
                else
                    SetPedComponentVariation(ped,index,v[1],v[2],v[3] or 2)
                end
            -- TriggerEvent("reloadtattos")
            end
        end
    end 
    
    function getCustomization()
        ped = PlayerPedId()
        local custom = {}
        custom.modelhash = GetEntityModel(ped)
    
        for i = 0,20 do
            custom[i] = { GetPedDrawableVariation(ped,i),GetPedTextureVariation(ped,i),GetPedPaletteVariation(ped,i) }
        end
    
        for i = 0,10 do
            custom["p"..i] = { GetPedPropIndex(ped,i),math.max(GetPedPropTextureIndex(ped,i),0) }
        end
        return custom
    end
    
   
    RegisterNUICallback("shopRotation",function(data,cb)
        ped = PlayerPedId()
        local newH = data + 0.00
        SetEntityHeading(ped, newH)
    end)
    
    RegisterNUICallback("shopCam",function(data,cb)
        SetCameraCoords(data, false)
    end)
    
    
    
    CreateThread(function()
        ped = PlayerPedId()
        TriggerEvent("cancelando", false)
        ClearPedTasks(ped)
        FreezeEntityPosition(ped, false)
        SetEntityInvincible(ped, false)
    end)
    
    --- Core do Blip
    local blipEmprego = nil
    function criarBlipEmprego(x,y,z,type,color,scale,routeColor,text)
        blipEmprego = AddBlipForCoord(x,y,z)
        SetBlipSprite(blipEmprego,type)
        SetBlipColour(blipEmprego,color)
        SetBlipScale(blipEmprego,scale)
        SetBlipAsShortRange(blipEmprego,false)
        SetBlipRoute(blipEmprego,true)
        SetBlipRouteColour(blipEmprego, routeColor)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(text)
        EndTextCommandSetBlipName(blipEmprego)
    end
    
    function removerBlipEmprego()
        RemoveBlip(blipEmprego)
    end

    -- Core do Text 
    function drawTxt2D(text,font,x,y,scale,r,g,b,a)
        SetTextFont(font)
        SetTextScale(scale,scale)
        SetTextColour(r,g,b,a)
        SetTextOutline()
        SetTextCentre(1)
        SetTextEntry("STRING")
        AddTextComponentString(text)
        DrawText(x,y)
    end

    function DrawText3Ds(x,y,z,text)
        SetDrawOrigin(x, y, z, 0);
        SetTextFont(0)
        SetTextProportional(0)
        SetTextScale(0.25,0.25)
        SetTextColour(255,255,255,150)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(0.0, 0.0)
        ClearDrawOrigin()
    end
end)



