local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

va = module("nyo_module", "nyo_module_cfg")

vb = {}
Tunnel.bindInterface("nyo_module",vb)

nyoModuleC = Tunnel.getInterface("nyo_module")

configGeneral = {}
configLocs = {}
configModule = {}
configIndiv = {}
startModule = false
nScriptPort = 0
activedUsers = {}
nScriptPerm = {}
CreateThread(function(a, b, c)

    function IniciarScript()
      if va.config.testMode then
          -- print("\027[33m [" .. GetCurrentResourceName() .. "] - MODO TESTE - Desenvolvido por Nyo (discord.gg/gGkAxaCZ99)!\027[37m")

        if va.config.modules.nyo_skinshop then
          SkinShopCFG = module("nyo_module", "cfg/shops/nyo_skinshop_cfg")
          for k,v in pairs(SkinShopCFG.GeneralConfig.config) do
            configGeneral[k] = {}
            table.insert(configGeneral[k], v)
          end

          for k,v in pairs(SkinShopCFG.GeneralConfig.locs) do
            table.insert(configLocs, v)
          end

          configModule.skinShop = true
        end
        if va.config.modules.nyo_guardaroupa then
          configModule.guardaRoupa = true
          vRP._prepare("nyoLojaRoupas/f8xNKiVM6m6ev", "SELECT * FROM vrp_user_data WHERE user_id = @user_id AND dkey = 'nyo:GuardaRoupa'")
          vRP._prepare("nyoLojaRoupas/setGuardaRoupa", "REPLACE INTO vrp_user_data(user_id,dkey,dvalue) VALUES(@user_id,'nyo:GuardaRoupa',@value)")
          function vb.f8xNKiVM6m6ev(a, b, c)

            local source = source
            local user_id = getUserId(source)
            local Roupas = vRP.getUData(user_id,"nyo:GuardaRoupa")

            if Roupas ~= nil then
              return json.decode(Roupas)
            else
              return {}
            end
          end
          function vb.f9x2HFqD01FWs(a, b)
            a = a
            if 0 < #vRP.query("nyoLojaRoupas/f8xNKiVM6m6ev", {
              user_id = getUserId(source)
            }) then
              playerData = json.decode(vRP.query("nyoLojaRoupas/f8xNKiVM6m6ev", {
                user_id = getUserId(source)
              })[1].dvalue)
            end
            playerData.outfit[a] = b
          end
          function vb.g0xffuZNZowjG(a)
            a = a
            if #vRP.query("nyoLojaRoupas/f8xNKiVM6m6ev", {
              user_id = getUserId(source)
            }) > 0 then
              playerData = json.decode(vRP.query("nyoLojaRoupas/f8xNKiVM6m6ev", {
                user_id = getUserId(source)
              })[1].dvalue)
            end
            if playerData.outfit[a] then
              return playerData.outfit[a]
            end
          end
          function vb.g1x8uafkruJF5(a)
            a = a
            if 0 < #vRP.query("nyoLojaRoupas/f8xNKiVM6m6ev", {
              user_id = getUserId(source)
            }) then
              playerData = json.decode(vRP.query("nyoLojaRoupas/f8xNKiVM6m6ev", {
                user_id = getUserId(source)
              })[1].dvalue)
            end
            playerData.outfit[a] = nil
          end
        end
        if va.config.modules.nyo_barbershop then

          BarberShopCFG = module("nyo_module", "cfg/shops/nyo_barbershop_cfg")
          for k,v in pairs(BarberShopCFG.GeneralConfig.config) do
            configGeneral[k] = {}
            table.insert(configGeneral[k], v)
          end

          for k,v in pairs(BarberShopCFG.GeneralConfig.locs) do
            table.insert(configLocs, v)
          end

          configModule.barberShop = true


          RegisterServerEvent(va.config.barbershopinit)
          AddEventHandler(va.config.barbershopinit, function(a)
            a = a
            if getUserSource(a) and barberShopGetData(a) ~= nil then
              nyoModuleC.h1xH49it8dOxg(getUserSource(a), json.decode((barberShopGetData(a))) or {})
              TriggerClientEvent("e3xsmSLE4IJss", (getUserSource(a)))
            end
          end)
          function vb.g2xyaiCSuxrvq(a, b, c, d, e, g, h, j)
            a = a
            a = source
            b = getUserId
            c = source
            b = b(c)
            if a then
              c = barberShopGetData
              d = b
              c = c(d)
              d = vRP
              d = d.getUData
              e = b
              g = "vRP:spawnController"
              d = d(e, g)
              if c ~= nil and d ~= nil and d ~= "0" then
                e = json
                e = e.decode
                g = c
                e = e(g)
                e = e or {}
                g = nyoModuleC
                g = g.h1xH49it8dOxg
                h = a
                j = e
                g(h, j)
              end
            end
          end
        end
        if va.config.modules.nyo_tattooshop then

          TattooShopCFG = module("nyo_module", "cfg/shops/nyo_tattoo_cfg")
          for k,v in pairs(TattooShopCFG.GeneralConfig.config) do
            configGeneral[k] = {}
            table.insert(configGeneral[k], v)
          end

          for k,v in pairs(TattooShopCFG.GeneralConfig.locs) do
            table.insert(configLocs, v)
          end


          configModule.tattooShop = true
          function vb.g3xFkTGvklHTi()
            local source = source
            local user_id = vRP.getUserId(source)
            local custom = {}
            local data = vRP.getUData(user_id,"nyo:tattoos")
             if data ~= '' then
                custom = json.decode(data)
                nyoModuleC.h2x0PAJGLz2lg(source, custom)
                Wait(100)
                nyoModuleC.h0xajAWrkfNQa(source)
             else         
                nyoModuleC.h2x0PAJGLz2lg(source, custom)
                Wait(100)
                nyoModuleC.h0xajAWrkfNQa(source)
             end
          end
          
          AddEventHandler("vRP:playerSpawn", function(user_id,source,first_spawn)
            local source = source
            local user_id = vRP.getUserId(source)
            local custom = {}
            local data = vRP.getUData(user_id,"nyo:tattoos")
             if data ~= '' then
                custom = json.decode(data)  
                nyoModuleC.h2x0PAJGLz2lg(source, custom)
                Wait(100)
                nyoModuleC.h0xajAWrkfNQa(source)
             else         
                nyoModuleC.h2x0PAJGLz2lg(source, custom)
                Wait(100)
                nyoModuleC.h0xajAWrkfNQa(source)
             end
          end)
        end
        if va.config.modules.nyo_notify then
          configModule.notify = true
        end
        if va.config.modules.nyo_notifyitem then
          configModule.notifyItem = true
        end
        if va.config.modules.nyo_progressbar then
          configModule.progressBar = true
        end
        if va.config.modules.nyo_nuiconfig then
          configModule.nuiConfig = true
          function vb.g5xYEtP0ZuweN(a)
            a = a
            if a then
              vRP.setUData(getUserId(source), "nyo:nuiColor", a)
            end
          end
          function vb.g4xQaSFFN8E1q(a, b, c, d, e, g, h, j, k, l, m, o)
            a = a
            a = source
            b = getUserId
            c = a
            b = b(c)
            c = vRP
            c = c.getUData
            d = b
            e = "nyo:nuiColor"
            c = c(d, e)
            if c ~= "" then
              d = nyoModuleC
              d = d.h3xYSF7mfRM4g
              e = a
              g = c
              d(e, g)
            end
          end
        end

        if nScriptPerm.job2 == true then
          -- configIndiv.empScuba = load(LoadResourceFile("nyo_module", "cfg/jobs/nyo_emp_mergulhador_cfg.lua"))()
          configIndiv.empFarmer = load(LoadResourceFile("nyo_module", "cfg/jobs/nyo_emp_farmer_cfg.lua"))()
          configIndiv.empGarbagev2 = load(LoadResourceFile("nyo_module", "cfg/jobs/nyo_emp_garbagev2_cfg.lua"))()
          configModule.job2 = true

          if true then
            RegisterNetEvent("nyo_modules:farmer/addPlayerTofarmerEmp")
            AddEventHandler("nyo_modules:farmer/addPlayerTofarmerEmp", function()
              if not nil then
                print("NyoModule DEBUG: [empintermed] [farmer] AddToFarmer")
              end
              va[source] = {
                user_id = getUserId(source),
                startTime = os.date("%c")
              }
            end)
            RegisterNetEvent("nyo_modules:farmer/remPlayerFromfarmerEmp")
            AddEventHandler("nyo_modules:farmer/remPlayerFromfarmerEmp", function()
              if not nil then
                print("NyoModule DEBUG: [empintermed] [farmer] RemoveFromFarmer")
              end
              va[source] = nil
            end)
            AddEventHandler("playerDropped", function()
              va[source] = nil
            end)
            RegisterNetEvent("nyo_modules:checkFarmerCoords")
            AddEventHandler("nyo_modules:checkFarmerCoords", function(a)
              if not a then
                print("NyoModule DEBUG: [empintermed] [farmer] CheckCoord")
              end
              configIndiv.empFarmer.collectFarmerLocations[a].status = true
              configIndiv.empFarmer.collectFarmerLocations[a].time = configIndiv.empFarmer.resetLocationTime
              updateFarmerCfg(a, true)
            end)
            CreateThread(function()
              while true do
                if debugServerThread then
                  print("NyoModule DEBUG: [empintermed] [farmer] ThreadLocs")
                end
                for fd, fe in pairs(configIndiv.empFarmer.collectFarmerLocations) do
                  if fe.status then
                    fe.time = fe.time - 1
                    if fe.time < 0 then
                      fe.time = nil
                      fe.status = false
                      updateFarmerCfg(fd, false)
                    end
                  end
                end
                Wait(60000)
              end
            end)
            function updateFarmerCfg(a, b)
              for fg, fh in pairs(va) do
                TriggerClientEvent("nyo_modules:farmer/updateConfig", fg, a, b)
              end
            end
            function va.i6xWZiMHi8iNW()
              return configIndiv.empFarmer.pedlocations
            end
          end
          if not b then
            RegisterNetEvent("nyo_modules:garbagev2/addPlayerToEmp")
            AddEventHandler("nyo_modules:garbagev2/addPlayerToEmp", function()
              va[source] = {
                user_id = getUserId(source),
                startTime = os.date("%c")
              }
            end)
            RegisterNetEvent("nyo_modules:garbagev2/remPlayerFromEmp")
            AddEventHandler("nyo_modules:garbagev2/remPlayerFromEmp", function()
              if not source then
                va[source] = nil
              end
            end)
            AddEventHandler("playerDropped", function()
              if not source then
                va[source] = nil
              end
            end)
            RegisterNetEvent("nyo_modules:garbagev2/UpCheckCoords")
            AddEventHandler("nyo_modules:garbagev2/UpCheckCoords", function(a)
              table.insert(va, {
                a,
                vb.resetTime
              })
              updatePlayersGarbage()
            end)
            --[[Citizen.CreateThread(function()
              while true do
                if not nil then
                  print("NyoModule DEBUG: [empintermed] [Garbage] ThreadLocs")
                end
                for fd, fe in pairs(va) do
                  if fe[2] then
                    print(fe[2])
                    fe[2] = fe[2] - 1
                    if fe[2] == 0 then
                      va[fd] = nil
                      updatePlayersGarbage()
                    end
                  end
                end
                Citizen.Wait(60000)
              end
            end)]]
            function updatePlayersGarbage()
              for fe, fg in pairs(va) do
                table.insert({}, fg[1])
              end
              for fe, fg in pairs(vb) do
                TriggerClientEvent("nyo_modules:garbagev2/updateCoords", fe, {})
              end
            end
          end


        end

        if va.config.modules.nyo_job then

          configIndiv.empOnibus = module("nyo_module", "cfg/jobs/nyo_emp_onibus_cfg")
          configIndiv.empGarbage = module("nyo_module", "cfg/jobs/nyo_emp_garbage_cfg")
          configIndiv.empMiner = module("nyo_module", "cfg/jobs/nyo_emp_miner_cfg")
          configIndiv.empFisher = module("nyo_module", "cfg/jobs/nyo_emp_fisher_cfg")
          configIndiv.empScuba = module("nyo_module", "cfg/jobs/nyo_emp_mergulhador_cfg")


          JobCFG = module("nyo_module", "cfg/jobs/nyo_job_cfg")

          for k,v in pairs(JobCFG.GeneralConfig.config) do
            configGeneral[k] = {}
            table.insert(configGeneral[k], v)
          end

          for k,v in pairs(JobCFG.GeneralConfig.locs) do
            table.insert(configLocs, v)
          end

          configModule.job = true
          
          if true then
            RegisterNetEvent("nyo_modules:scubaDiver/addPlayerToScubaDiverEmp")
            AddEventHandler("nyo_modules:scubaDiver/addPlayerToScubaDiverEmp", function()
              vb[source] = {
                user_id = getUserId(source),
                startTime = os.date("%c")
              }
            end)
            RegisterNetEvent("nyo_modules:scubaDiver/remPlayerFromScubaDiverEmp")
            AddEventHandler("nyo_modules:scubaDiver/remPlayerFromScubaDiverEmp", function()
              if not source then
                vb[source] = nil
              end
            end)
            AddEventHandler("playerDropped", function()
              if vb[source] then
                vb[source] = nil
              end
            end)
            RegisterNetEvent("nyo_modules:scubaDiver/checkCoords")
            AddEventHandler("nyo_modules:scubaDiver/checkCoords", function(a)
              a = a
              configIndiv.empScuba.collectLocations[a][2] = true
              configIndiv.empScuba.collectLocations[a][3] = configIndiv.empScuba.resetTime
              updateConfig(a, true)
            end)

            CreateThread(function()
              while true do
                for fd, fe in pairs(configIndiv.empScuba.collectLocations) do
                  if not pairs(configIndiv.empScuba.collectLocations) then
                    fe[3] = fe[3] - 1
                    if fe[3] <= 0 then
                      fe[3] = nil
                      fe[2] = false
                      updateConfig(fd, false)
                    end
                  end
                end
                Wait(1000)
              end
            end)
          
            function updateConfig(a, b)
              a = a
              for fg, fh in pairs(va) do
                TriggerClientEvent("nyo_modules:scubaDiver/updateConfig", fg, a, b)
              end
            end
          end
          function vb.g7xrdBs2O4NFx(a)
            a = a
            if activedUsers[getUserId(source)] == nil then
              activedUsers[getUserId(source)] = true
              va = configIndiv[a]
              if va.paymentType.money then
                giveMoney(getUserId(source), (math.random(va.minMoney, va.maxMoney)))
              end
              if va.paymentType.itens then
                if va.paymentItensType == 1 then
                  for fj, fk in pairs(va.paymentItens) do
                    if checkInventoryWeight(getUserId(source), fk.item, (math.random(fk.min, fk.max))) then
                      giveItem(getUserId(source), fk.item, (math.random(fk.min, fk.max)))
                    else
                      notify(source, "Você não possui espaço na mochila!", "#FF0000", 5000)
                    end
                  end
                elseif va.paymentItensType == 2 then
                  if checkInventoryWeight(getUserId(source), va.paymentItens[math.random(#va.paymentItens)].item, (math.random(va.paymentItens[math.random(#va.paymentItens)].min, va.paymentItens[math.random(#va.paymentItens)].max))) then
                    giveItem(getUserId(source), va.paymentItens[math.random(#va.paymentItens)].item, (math.random(va.paymentItens[math.random(#va.paymentItens)].min, va.paymentItens[math.random(#va.paymentItens)].max)))
                  else
                    notify(source, "Você não possui espaço na mochila!", "#FF0000", 5000)
                  end
                end
              end
              activedUsers[getUserId(source)] = nil
            end
          end
        end
        if va.config.modules.nyo_elevador then
          ElevadorCFG = module("nyo_module", "cfg/outros/nyo_elevador_cfg")
          for k,v in pairs(ElevadorCFG.GeneralConfig.config) do
            configGeneral[k] = {}
            table.insert(configGeneral[k], v)
          end

          for k,v in pairs(ElevadorCFG.GeneralConfig.locs) do
            table.insert(configLocs, v)
          end

          configModule.elevador = true
        end

        if va.config.modules.nyo_garagem then
          nGaragemCFG = module("nyo_module", "cfg/outros/nyo_garagem_cfg")
          for k,v in pairs(nGaragemCFG.GeneralConfig.config) do
            configGeneral[k] = {}
            table.insert(configGeneral[k], v)
          end

          for k,v in pairs(nGaragemCFG.GeneralConfig.locs) do
            table.insert(configLocs, v)
          end
          configModule.garagem = true
        end
        if va.config.modules.nyo_bennys then
          nBennysCFG = module("nyo_module", "cfg/shops/nyo_bennys_cfg")
          for k,v in pairs(nBennysCFG.GeneralConfig.config) do
            configGeneral[k] = {}
            table.insert(configGeneral[k], v)
          end

          for k,v in pairs(nBennysCFG.GeneralConfig.locs) do
            table.insert(configLocs, v)
          end
          configModule.bennys = true
          vRP.prepare("nyo_modules/add_bennys_custom", "ALTER TABLE vrp_user_vehicles ADD COLUMN IF NOT EXISTS custom VARCHAR(1500) NULL ")
          vRP.execute("nyo_modules/add_bennys_custom", {})
          vRP._prepare("nyo_modules/set_vehicle_custom", "UPDATE vrp_user_vehicles SET custom = @custom WHERE user_id = @user_id AND vehicle = @vehicle")
          vRP._prepare("nyo_modules/get_vehicle_custom", "SELECT custom FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle");
          vRP._prepare("nyo_modules/get_vehicle_owner", "SELECT * FROM vrp_user_identities WHERE registration = @registration")


          function vb.GetVehicleCustoms(vehicle,placa)
            local owner_id = vRP.query("nyo_modules/get_vehicle_owner", {registration = placa})
            if owner_id[1] then
              local customs = vRP.query("nyo_modules/get_vehicle_custom", { user_id = owner_id[1].user_id, vehicle = vehicle })
              -- print(json.encode(customs[1]))
              return customs
            end

          end
          function vb.i4xmTcZexwTpg(a, b, c, d,plate)

          local owner_id = vRP.query("nyo_modules/get_vehicle_owner", {registration = plate})
           if owner_id[1] then
                vRP.execute("nyo_modules/set_vehicle_custom",{custom = json.encode(c or {}) ,user_id = owner_id[1].user_id, vehicle = a})
                return true
            end
          end
        end
        if va.config.modules.nyo_conce then
          nConceCFG = module("nyo_module", "cfg/shops/nyo_conce_cfg")
          for k,v in pairs(nConceCFG.GeneralConfig.config) do
            configGeneral[k] = {}
            table.insert(configGeneral[k], v)
          end

          for k,v in pairs(nConceCFG.GeneralConfig.locs) do
            table.insert(configLocs, v)
          end
          configModule.conce = true
        end
        
        if va.config.modules.nyo_rotas then
          nRotasCFG = module("nyo_module", "cfg/outros/nyo_rotas_cfg")
          for k,v in pairs(nRotasCFG.GeneralConfig.config) do
            configGeneral[k] = {}
            table.insert(configGeneral[k], v)
          end

          for k,v in pairs(nRotasCFG.GeneralConfig.locs) do
            table.insert(configLocs, v)
          end
          configModule.rotas = true
        end

        if va.config.modules.nyo_navshop then
          NavShopCFG = module("nyo_module", "cfg/shops/nyo_navshop_cfg")
          for k,v in pairs(NavShopCFG.GeneralConfig.config) do
            configGeneral[k] = {}
            table.insert(configGeneral[k], v)
          end

          for k,v in pairs(NavShopCFG.GeneralConfig.locs) do
            table.insert(configLocs, v)
          end
          configModule.navShop = true
          function vb.g9xq4ZTq0Zbbz(a, b, c)
            a = a

            if activedUsers[getUserId(source)] == nil then
              activedUsers[getUserId(source)] = true
              if a[b].index == c then
                if a[b].type == "buy" then
                  if checkInventoryWeight(getUserId(source), c, a[b].qtd) then
                    if tryPayment(getUserId(source), a[b].price) then
                      giveItem(getUserId(source), c, a[b].qtd)
                      notify(source, "Você comprou <b>" .. a[b].qtd .. "x " .. vRP.itemNameList(c) .. "</b> por <b>" .. vRP.format(parseInt(a[b].price)) .. "</b>!", "#00FF00", 5000)
                    else
                      notify(source, "Dinheiro insuficiente.", "#FF0000", 5000)
                    end
                  else
                    notify(source, "Espaço insuficiente.", "#FF0000", 5000)
                  end
                elseif a[b].type == "sell" then

                  local vQuantidade = vRP.getInventoryItemAmount(source,a[b].index)
                  if vQuantidade > 0 then
                    giveMoney(getUserId(source),a[b].price * parseInt(vQuantidade))
                    vRP.tryGetInventoryItem(source,a[b].index,vQuantidade)
                    notify(source, "Você vendeu <b>" .. vQuantidade .. "x " .. vRP.itemNameList(c) .. "</b> por <b>" .. vRP.format(parseInt(a[b].price * vQuantidade)) .. "</b>!", "#00FF00", 5000)
                  else
                    notify(source, "Você não tem o item "..a[b].index .." para venda.","#FF0000", 5000)
                  end
                end
              else
                notify(source, "Ocorreu um erro, tente novamente.", "#FF0000", 5000)
              end
              activedUsers[getUserId(source)] = nil
            end
          end
        end
        if va.config.modules.nyo_carsystem then
          configModule.carSystem = true
        end
        if va.config.modules.nyo_robbery then
           
          robberyCFG = module("nyo_module", "cfg/outros/nyo_robbery_cfg")
          for k,v in pairs(robberyCFG.GeneralConfig.config) do
            configGeneral[k] = {}
            table.insert(configGeneral[k], v)
          end

          for k,v in pairs(robberyCFG.GeneralConfig.locs) do
            table.insert(configLocs, v)
          end
          configModule.robbery = true
          robberyStandByRobbery = {}
          robberyStandByPerson = {}
          blipsRobbery = {}
          function vb.h8xILlHPPR3n5(a)
            a = a
            if robberyStandByPerson[a] then
              notify(source, "Você esta sendo procurado por mais: " .. robberyStandByPerson[a] .. " segundos.", "#FF0000", 5000)
              return true
            else
              return false
            end
          end
          function vb.h9xqcKcADijra(a, b)
            a = a
            if robberyStandByPerson[a] then
              robberyStandByPerson[a] = tonumber(robberyStandByPerson[a] + tonumber(b))
            else
              robberyStandByPerson[a] = tonumber(b)
            end
          end
          function vb.i0x1nczy328LD(a, b)
            a = a
            if robberyStandByRobbery[a.robberyIndex] then
              if a.robberyStandByType == 1 then
                if robberyStandByRobbery[a.robberyIndex][b] then
                  robberyStandByRobbery[a.robberyIndex][b] = nil
                end
              elseif a.robberyStandByType == 2 then
                if robberyStandByRobbery[a.robberyIndex] then
                  robberyStandByRobbery[a.robberyIndex] = nil
                end
              else
                notify(source, "Erro no sistema de segurança! Contate a prefeitura.", "#FF0000", 5000)
              end
            end
          end
          function vb.f3x5u4FhQ5E2V(a, b)

            local source = source
            local user_id = getUserId(source)


            -- print(json.encode(robberyStandByPerson))
            if a.robberyCheckStandBy and robberyStandByPerson[getUserId(source)] then
              notify(source, "Você esta sendo procurado por mais: " .. robberyStandByPerson[getUserId(source)] .. " segundos.", "#FF0000", 5000)
            end
      
              if robberyStandByRobbery[a.robberyIndex] and robberyStandByRobbery[b] > 0 then
                if a.robberyStandByType == 1 then
                  if robberyStandByRobbery[a.robberyIndex][b] then
                    notify(source, "Um roubo ja ocorreu! Impossivel efetuar outro roubo! Volte em: " .. robberyStandByRobbery[a.robberyIndex][b] .. " segundos.", "#FF0000", 5000)
                    return false
                  else
                    robberyStandByRobbery[a.robberyIndex][b] = tonumber(a.robberyStandByRobbery)
                    return true
                  end
                elseif a.robberyStandByType == 2 then
                  if robberyStandByRobbery[a.robberyIndex] then
                    notify(source, "Um roubo ja ocorreu! Impossivel efetuar outro roubo! Volte em: " .. robberyStandByRobbery[a.robberyIndex] .. " segundos.", "#FF0000", 5000)
                  else
                    robberyStandByRobbery[a.robberyIndex] = tonumber(a.robberyStandByRobbery)
                    return true
                  end
                else
                  notify(source, "Erro no sistema de segurança! Contate a prefeitura.", "#FF0000", 5000)
                  return false
                end
              else
                if robberyStandByRobbery[b] == 0 or robberyStandByRobbery[b] == nil then
                  if a.robberyStandByType == 1 then

                    robberyStandByRobbery[b] = tonumber(a.robberyStandByRobbery)
                  elseif a.robberyStandByType == 2 then
                    robberyStandByRobbery[a.robberyIndex] = tonumber(a.robberyStandByRobbery)
                  end
                  return true
                else
                  notify(source, "Um roubo ja ocorreu! Impossivel efetuar outro roubo! Volte em: " .. robberyStandByRobbery[b] .. " segundos.", "#FF0000")
                end
            end
          end
          function vb.f4xpdHE6vU5Jq(config, id)
            if robberyStandByRobbery[config.robberyIndex] then
              
              if config.robberyStandByType == 1 then
                if robberyStandByRobbery[config.robberyIndex][id] then

                else
                  robberyStandByRobbery[config.robberyIndex][id] = tonumber(config.robberyStandByRobbery)
                end
              elseif config.robberyStandByType ~= 2 or robberyStandByRobbery[config.robberyIndex] then

              else
                robberyStandByRobbery[config.robberyIndex] = tonumber(config.robberyStandByRobbery)
              end

            elseif config.robberyStandByType == 1 then
              robberyStandByRobbery[id] = tonumber(config.robberyStandByRobbery)
              
            elseif config.robberyStandByType == 2 then

              robberyStandByRobbery[config.robberyIndex] = tonumber(config.robberyStandByRobbery)
            end
          end


          --  CreateThread(function()
          --    while true do
          --      Wait(1000)
          --        if type(robberyStandByRobbery) == "number" then
          --          robberyStandByRobbery = robberyStandByRobbery - 1
          --          if robberyStandByRobbery == 0 then
          --            robberyStandByRobbery = nil
          --          end
          --        elseif type(robberyStandByRobbery) == "table" then
          --          for k, v in pairs(robberyStandByRobbery) do
          --           print(k,v[k])
          --            robberyStandByRobbery[k] = robberyStandByRobbery[k] - 1
          --            if robberyStandByRobbery[k] == 0 then
          --              robberyStandByRobbery[k] = nil
          --            end
          --          end
          --        end
          --      end
          --  end)

          CreateThread(function()
              while true do
                  Wait(1000)
                  for k, v in pairs(robberyStandByRobbery) do 
                      if v > 0 then 
                          robberyStandByRobbery[k] = v - 1
                          -- print(robberyStandByRobbery[k])
                      end 
                  end
              end
          end)

          CreateThread(function()
            while true do
                Wait(1000)
                for k, v in pairs(robberyStandByPerson) do 
                    if v > 0 then 
                      robberyStandByPerson[k] = robberyStandByPerson[k] - 1 
                    else
                      robberyStandByPerson[k] = nil
                    end
                end
            end
        end)

        function vb.f2xXOQ3gRbGss(a)
          if a.qtdPolice <= #getPlayersHasPermission(va.config.perm.policePerm) then
            return true
          else
            notify(source, "Numero insuficiente de policiais.", "#FF0000", 5000)
            return false
          end
        end
          function vb.f5xk4faIsg2Iy(a, b, c, d)
            a = a
            if math.random(0, 100) <= a.policeChance then
              for fm, fo in pairs((getPlayersHasPermission(va.config.perm.policePerm))) do
                if getUserSource(fo) then
                  async(function(a)
                    a = a
                    a = va
                    a = a.gen
                    a = a(a)
                    vRPclient.playSound(vb, "Oneshot_Final", "MP_MISSION_COUNTDOWN_SOUNDSET")
                    blipsRobbery[a] = vRPclient.addBlip(vb, vc, vd, ve, 1, 59, "Roubo em andamento", 0,5, true)
                    TriggerClientEvent("chatMessage", vb, "911", {
                      64,
                      64,
                      255
                    }, vg.policeText)
                    SetTimeout(20000, function(a)
                      a = a
                      a = vRPclient
                      a = a.removeBlip
                      a(va, blipsRobbery[vb])
                      a = vc
                      a = a.free
                      a(a, vb)
                    end)
                  end)
                end
              end
            end
          end
          function vb.f6xS22Dhydscb(a, b)
            a = a
            if a.robberySetStandBy then
              va.h9xqcKcADijra(getUserId(source), tonumber(a.robberyStandByPerson))
            end
            if a.paymentType.money and 0 < math.floor(tonumber(math.random(a.paymentMoney.min, a.paymentMoney.max) / 100 * math.floor(tonumber(b * 100 / a.robberyTime)))) then
              giveMoney(getUserId(source), (math.floor(tonumber(math.random(a.paymentMoney.min, a.paymentMoney.max) / 100 * math.floor(tonumber(b * 100 / a.robberyTime))))))
            end
            if a.paymentType.item then
              if a.paymentItemType == 1 then
                if checkInventoryWeight(getUserId(source), a.paymentItem[math.random(#a.paymentItem)].item, (math.floor(tonumber(math.random(a.paymentItem[math.random(#a.paymentItem)].min, a.paymentItem[math.random(#a.paymentItem)].max) / 100 * math.floor(tonumber(b * 100 / a.robberyTime)))))) then
                  giveItem(getUserId(source), a.paymentItem[math.random(#a.paymentItem)].item, (math.floor(tonumber(math.random(a.paymentItem[math.random(#a.paymentItem)].min, a.paymentItem[math.random(#a.paymentItem)].max) / 100 * math.floor(tonumber(b * 100 / a.robberyTime))))))
                else
                  notify(source, "Você não possui espaço na mochila!", "#FF0000", 5000)
                end
              elseif a.paymentItemType == 2 then
                for fl, fm in pairs(a.paymentItem) do
                  if checkInventoryWeight(getUserId(source), fm.item, (math.floor(tonumber(math.random(fm.min, fm.max) / 100 * math.floor(tonumber(b * 100 / a.robberyTime)))))) then
                    giveItem(getUserId(source), fm.item, (math.floor(tonumber(math.random(fm.min, fm.max) / 100 * math.floor(tonumber(b * 100 / a.robberyTime))))))
                  else
                    notify(source, "Você não possui espaço na mochila!", "#FF0000", 5000)
                  end
                end
              end
            end
          end
        end
        if va.config.modules.nyo_fuel then
          FuelCFG = module("nyo_module", "cfg/outros/nyo_fuelPumps_cfg")
          for k,v in pairs(FuelCFG.GeneralConfig.config) do
            configGeneral[k] = {}
            table.insert(configGeneral[k], v)
          end

          for k,v in pairs(FuelCFG.GeneralConfig.locs) do
            table.insert(configLocs, v)
          end


          configIndiv.fuel = module("nyo_module", "cfg/outros/nyo_fuelGeneral_cfg")
          
          configModule.fuel = true
          function vb.h6x6mWlTzmiuC()
            local user_id = vRP.getUserId(source)
            local money = vRP.getMoney(user_id)

            return money
          end
          RegisterServerEvent("nyoModule:fuelDelVehicle")
          AddEventHandler("nyoModule:fuelDelVehicle", function(a)
            a = a
            if a ~= nil then
              va[a] = nil
            end
          end)
          RegisterServerEvent("nyoModule:fuelAddVehicle")
          AddEventHandler("nyoModule:fuelAddVehicle", function(a, b)
            a = a
            if a ~= nil then
              va[a] = b + 1E-08
            end
          end)
          function vb.h5xm72nXEGuDD(a)
            a = a
            if va[a] ~= nil then
              return va[a]
            else
              return false
            end
          end
          function vb.i2xH43GsW2ohs(a, b)
            a = a
            if b > 100 then
              b = 99,99
            end
            va[a] = b
          end
          function vb.h7xEfNgkrAY4l(a, b, c, d)
            a = a
            if tryPayment(getUserId(source), d) then
              notify(source, "Você fez um pagamento de: " .. math.floor(tonumber(d)) .. "!", "#00FF00", 5000)
              va[a] = 99,99
              return true
            else
              notify(source, "Dinheiro insuficiente!", "#FF0000", 5000)
              return false
            end
          end
          function nyoModuleCheckCar(a, b)
            a = a
            if a == "car" and b then
              if not va.vehicleEletrical[b] then
                return true
              end
            elseif a == "eletrical" and b and va.vehicleEletrical[b] then
              return true
            end
            return false
          end
          function nyoModuleSetFuel(a, b)
            a = a
            if va[a] then
              va[a] = va[a] + b + 1E-06
            else
              va[a] = b + 1E-06
            end
          end
          function nyoModuleCheckFuel(a)
            a = a
            if va[a] and va[a] < 75 then
              return true
            end
            return false
          end
        end
        if va.config.modules.nyo_bansystem then
          vRP._prepare("nyoModule/setBanToken", "INSERT IGNORE INTO nyo_hwidban (token, user_id) VALUES (@token, @user_id)")
          vRP._prepare("nyoModule/getBanToken", "SELECT * FROM nyo_hwidban WHERE token = @token")
          vRP._prepare("nyoModule/delBanToken", "DELETE FROM nyo_hwidban WHERE user_id = @user_id")


        --   RegisterCommand('testx', function(source, args, rawCommand)
        --     for i = 0, GetNumPlayerTokens(source) do
        --         print(GetPlayerToken(source, 1))
        --     end

        --     for k,v in pairs(GetPlayerIdentifiers(source)) do


        --       print(k,v)

        --     end

        -- end)

          function GetPlayerTokens(a)
            a = a
            for fh = 0, GetNumPlayerTokens(a) - 1 do
              table.insert({}, GetPlayerToken(a, fh))
            end
            return {}
          end
          function nyoModuleSetTokenBan(a, b)
            a = a
            if a and b then
              for fh, fj in pairs((GetPlayerTokens(a))) do
                vRP.execute("nyoModule/setBanToken", {token = fj, user_id = b})
              end
            end
          end
          function nyoModuleDelBanToken(a)
            a = a
            if a then
              vRP.execute("nyoModule/delBanToken", {user_id = a})
            end
          end
        end
        function nyoModuleGetBanToken(a)
          a = a

            if va.config.modules.nyo_bansystem then
              for fg, fh in pairs((GetPlayerTokens(a))) do
                if vRP.query("nyoModule/getBanToken", {token = fh})[1] then
                  return true
                end
              end
              return false
            else
              return false
            end

        end
        startModule = true
      else
        print("\027[31m [" .. GetCurrentResourceName() .. "] - ERRO!\027[37m")
      end
  end
  IniciarScript()
end)

function vb.g6xQX9pxmA5X9(dados)

  if configIndiv[dados] ~= nil then
    return configIndiv[dados]
  end
end

function vb.f0x8VLTgpRpxf()

  local source = source
  TriggerClientEvent("e0xsWefAuD8US",source,configGeneral,configLocs,configModule,nScriptPort)
end


function vb.f1xzFRR4jqGxR(perm)
  if getUserId(source) then
    if perm == nil then
      return true
    elseif getHasPermission(getUserId(source), perm) then
      return true
    else
      return false
    end
  end
end


function vb.f7x3oTuIIjfpL(a, b, c)
  local source = source
  local user_id = getUserId(source)
  if tonumber(b) then
    if tryPayment(getUserId(source), b) then
      if a == "skinShop" then
        if va.config.modules.nyo_guardaroupa then
        --   if #vRP.query("nyoLojaRoupas/f8xNKiVM6m6ev", {
        --     user_id = getUserId(source)
        --   }) > 0 then
        --     playerData = json.decode(vRP.query("nyoLojaRoupas/f8xNKiVM6m6ev", {
        --       user_id = getUserId(source)
        --     })[1].dvalue)
        --   end
        
        -- 
        local parts = json.encode(c)
        local dataParts = vRP.query("nyoLojaRoupas/f8xNKiVM6m6ev", {user_id = user_id})
        local playerData = {}
          if #dataParts > 0 then 
              playerData = json.decode(dataParts[1]['dvalue'])
          end

          for fp = 1, 11 do
            if playerData[tostring(fp)] then
              if not playerData[tostring(fp)][tostring(c[fp][1])] and parseInt(c[fp][1]) >= 0 then
                playerData[tostring(fp)][tostring(c[fp][1])] = true
              end
            elseif parseInt(c[fp][1]) >= 0 then
              playerData[tostring(fp)] = {}
              playerData[tostring(fp)][tostring(c[fp][1])] = true
            end
          end
          for fp = 0, 10 do
            if playerData[tostring("p" .. fp)] then
              if not playerData[tostring("p" .. fp)][tostring(c[tostring("p" .. fp)][1])] and parseInt(c[tostring("p" .. fp)][1]) >= 0 then
                playerData[tostring("p" .. fp)][tostring(c[tostring("p" .. fp)][1])] = true
              end
            elseif parseInt(c[tostring("p" .. fp)][1]) >= 0 then
              playerData[tostring("p" .. fp)] = {}
              playerData[tostring("p" .. fp)][tostring(c[tostring("p" .. fp)][1])] = true
            end
          end
          local setGuardaRoupa = vRP.execute("nyoLojaRoupas/setGuardaRoupa", { user_id = user_id, value = parts})
      end
      elseif a == "barberShop" then
        vRP.setUData(getUserId(source), "currentCharacterMode", json.encode(c))
      elseif a == "tattooShop" then
        -- nyoModuleC.h2x0PAJGLz2lg(source, c)
        -- vRP.setUData(source,"nyo:tattoos",json.encode(c))
        vRP.setUData(getUserId(source), "nyo:tattoos", json.encode(c))
      end
      notify(source, "Compra Efetuada", "#00FF00", 5000)
      nyoModuleC.h4xq4OrsBz8bJ(source, true)
    else
      notify(source, "Dinheiro insuficiente", "#FF0000", 5000)
      nyoModuleC.h4xq4OrsBz8bJ(source, false)
    end
  end
end
local carros = {}
local motos = {}
local import = {}
local jeep = {}
local trucker = {}
local work = {}

-- local inventory = module("vrp","cfg/inventory")
local conce = module("nyo_module","nyo_module_conce")


function GetVehiclesInfo(vehicle)
  for k,v in pairs(conce.VehiclesConce) do
    if vehicle == v.name and not v.banido then
      return v.name,v.modelo,v.capacidade,v.price,v.tipo
    end
  end
end

vRP.prepare("conce/search", "SELECT * FROM vrp_estoque WHERE quantidade > 0")
vRP.prepare("conce/stockveh", "SELECT * FROM vrp_estoque WHERE vehicle = @vehicle")
vRP.prepare("conce/remStock", "UPDATE vrp_estoque SET quantidade = quantidade - 1 WHERE vehicle = @vehicle")
vRP.prepare("conce/buy", "INSERT INTO vrp_user_vehicles (user_id,vehicle) VALUES (@user_id,@vehicle)")
vRP.prepare("conce/consult", "SELECT * FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("conce/countveh", "SELECT * FROM vrp_user_vehicles WHERE user_id = @user_id")


function vb.GetVehicleDatabase()
  local vehicles = vRP.query("conce/search") or {}

  carros = {}
  motos = {}
  import = {}
  jeep = {}
  trucker = {}
  work = {}

  for k,v in pairs(vehicles) do
    local vInfo,vModelo,vBau,vValor,vTipo = GetVehiclesInfo(v.vehicle)
    if vInfo then
      if vTipo == 'carros' then
        table.insert(carros,{ model = vInfo, name = vModelo, preco = vValor, portamalas = vBau, estoque = v.quantidade })
      elseif vTipo == 'import' then
        table.insert(import,{ model = vInfo, name = vModelo, preco = vValor, portamalas = vBau, estoque = v.quantidade })
      elseif vTipo == 'motos' then
        table.insert(motos,{ model = vInfo, name = vModelo, preco = vValor, portamalas = vBau, estoque = v.quantidade })
      elseif vTipo == 'jeep' then
        table.insert(jeep,{ model = vInfo, name = vModelo, preco = vValor, portamalas = vBau, estoque = v.quantidade })
      elseif vTipo == 'trucker' then
        table.insert(trucker,{ model = vInfo, name = vModelo, preco = vValor, portamalas = vBau, estoque = v.quantidade })
      elseif vTipo == 'work' then
        table.insert(work,{ model = vInfo, name = vModelo, preco = vValor, portamalas = vBau, estoque = v.quantidade })
      end
    end
  end
end

function vb.buyVehicleConce(modelo,valor)

  local source = source
  local user_id = getUserId(source)
  local id = vRP.getUserIdentity(user_id)
  local consulta = vRP.query('conce/consult', {user_id = user_id, vehicle = modelo})
  local PlayerVehs = #vRP.query('conce/countveh', {user_id = user_id})
  local stock = vRP.query("conce/stockveh", {vehicle = modelo})

  if user_id then
    if not consulta[1] then
      if vRP.tryPayment(user_id, parseInt(valor)) then
        vRP.execute('conce/buy',{user_id = user_id, vehicle = modelo})
        vRP.execute('conce/remStock', {vehicle = modelo})
        TriggerClientEvent("nyo_notify",source,"sucesso","O Veículo foi comprado com sucesso e já está em sua garagem!.")
      else
        TriggerClientEvent("nyo_notify",source,"negado","Você não tem dinheiro suficiente em sua carteira.")
      end
    else
      TriggerClientEvent("nyo_notify",source,"negado","Você não pode ter 2 veículos iguais.")
    end
  end
end

function vb.RequestConce(type)
  if type == 'car' then
    return carros
  elseif type == 'trucker' then
    return trucker
  elseif type == 'jeep' then
    return jeep
  elseif type == 'bike' then
    return motos
  elseif type == 'import' then
    return import
  elseif type == 'work' then
    return work
  end
end

function vb.l8szFJxhGYgLK(item,qtd,itemType)

  local source = source
  local user_id = getUserId(source)
  if user_id then

      local policia = getPlayersHasPermission(va.config.perm.policePerm)
      local bonus = 0
  
      if #policia >= 2 and #policia <= 6 then
          bonus = 120
      elseif #policia >= 7 and #policia <= 12 then
          bonus = 240
      elseif #policia > 12 then
          bonus = 460
      end

      if vRP.getInventoryWeight(user_id) + vRP.getItemWeight(user_id,item) * qtd <= vRP.getInventoryMaxWeight(user_id) then
        TriggerClientEvent("nyo_notify",source,"sucesso","Parabéns você concluiu essa rota, vá para a próxima")
        if itemType == "maconha" or itemType == "cocaina" or itemType == "lsd" or itemType == "metanfetamina" or itemType == "heroina" then
          randmoney = ((qtd + bonus))
          vRP.giveInventoryItem(user_id,item,randmoney)
          return true
        else

        vRP.giveInventoryItem(user_id,item,qtd)
        return true
      end
    else
      TriggerClientEvent("nyo_notify",source,"negado","Você não tem espaço suficiente no inventário")
    end
  end
end


blipsDrugsSeller = {}
function vb.f5xk4faIsg2Iy(a, b, c, d)
  a = a
  if math.random(0, 100) <= a.policeChance then
    for fm, fo in pairs((getPlayersHasPermission(va.config.perm.policePerm))) do
      if getUserSource(fo) then
        async(function(a)
          a = a
          a = va
          a = a.gen
          a = a(a)
          vRPclient.playSound(vb, "Oneshot_Final", "MP_MISSION_COUNTDOWN_SOUNDSET")
          blipsDrugsSeller[a] = vRPclient.addBlip(vb, vc, vd, ve, 1, 59, "Denuncia de venda de drogas", 0,5, true)
          TriggerClientEvent("chatMessage", vb, "911", {
            64,
            64,
            255
          }, vg.policeText)
          SetTimeout(20000, function(a)
            a = a
            a = vRPclient
            a = a.removeBlip
            a(va, blipsDrugsSeller[vb])
            a = vc
            a = a.free
            a(a, vb)
          end)
        end)
      end
    end
  end
end

function vb.l8szFJxhGYgGI(item,qtd)

  local source = source
  local user_id = getUserId(source)
  if user_id then
    if vRP.tryGetInventoryItem(user_id,item,qtd) then
      return true
    else
      TriggerClientEvent("nyo_notify",source,"negado","Você não tem "..qtd.."x "..item.." no seu inventário")
    end
  end
end

local myVehicles = {}
function vb.i5xKFuuVQMmGE(garagem)

  local source = source
  local user_id = getUserId(source)
  myVehicles = {}
  vRP.prepare("garagem/getVehicles", "SELECT * FROM vrp_user_vehicles WHERE user_id = @user_id")
  local vehicles = vRP.query("garagem/getVehicles", {user_id = user_id})
  if vehicles[1] then

    for k,v in pairs(vehicles) do
      table.insert(myVehicles,{vehicle = vehicles[k].vehicle,vDetido = vehicles[k].detido,vFuel = vehicles[k].fuel, vBody = vehicles[k].body, vEngine = vehicles[k].engine})
    end
  end
end

local spawnedVehicles = {}
vehicles = {}
function vb.registerVehicle(netveh,hash)
    local source = source
    local user_id = getUserId(source)

    if spawnedVehicles[hash] then
        spawnedVehicles[hash][user_id] = { inStreet = true, netid = netveh }
    else
        spawnedVehicles[hash] = { [user_id] = { inStreet = true, netid = netveh } }
    end
end


function vb.DeleteVeh(veh, vehicle, engine, body, fuel, estado)
  local source = source
  local user_id = getUserId(source)

  -- print(veh, vehicle, engine, body, fuel, estado)
  vRP.prepare("garagem/UpdateVehicleGarage","UPDATE vrp_user_vehicles SET engine = @engine, body = @body, fuel = @fuel WHERE vehicle = @vehicle AND user_id = @user_id")
  if user_id then
    vRP.execute("garagem/UpdateVehicleGarage", {engine = engine, body = body, fuel = fuel, vehicle = vehicle, user_id = user_id})
    nyoModuleC.deleteVehicleSV(-1,veh)
  end

end

function vb.removeVehicle(netveh,hash,plate)
  local source = source
  local user_id = vRP.getVehiclePlate(plate) or vRP.getUserByRegistration(plate)
  if user_id and spawnedVehicles[hash] and spawnedVehicles[hash][user_id] then
      spawnedVehicles[hash][user_id] = false
  elseif spawnedVehicles[hash] then
      for i in pairs(spawnedVehicles[hash]) do 
          if spawnedVehicles[hash][i] and spawnedVehicles[hash][i].netid == netveh then
              spawnedVehicles[hash][i] = false
              break
          end
      end
  end
end

function vb.BennysPayment(value)

  local source = source
  local user_id = getUserId(source)
  if user_id then

    if vRP.tryFullPayment(user_id,parseInt(value)) then
      notify(source, "Você pagou "..parseInt(value).." nas modificações deste veículo", "#00FF00", 5000)
      return true
    else
      notify(source, "Dinheiro insuficiente.", "#FF0000", 5000)
      return false
    end
  end

end

function vb.CheckVehiclePlate()
  local source = source
  local user_id = getUserId(source)

  if user_id then
    local nearestPlate, name, price, bandido, vnet = nyoModuleC.getNearestVehicleInfo(source)
    return nearestPlate
  end
end

function vb.ReturnVehicles()

  return myVehicles

end

function vb.i1xStzeqwURXZ(item, qtd)
  if tryItem(getUserId(source), item, qtd) then
    return true
  else
    notify(source, "Você não possui " .. qtd .. "x " .. vRP.itemNameList(item) .. "!", "#FF0000", 5000)
    return false
  end
end