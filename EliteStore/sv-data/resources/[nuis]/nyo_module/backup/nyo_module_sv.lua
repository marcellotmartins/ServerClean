Tunnel = module("vrp","lib/Tunnel")
Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

vb = module("nyo_module", "nyo_module_cfg")

va = {}
Tunnel.bindInterface("nyo_module",va)

cfg = module(GetCurrentResourceName(),"nyo_module_cfg")

nyoModuleC = Tunnel.getInterface("nyo_module")

configGeneral = {}
configLocs = {}
configCommands = {}
configModule = {}
configIndiv = {}
startModule = false
nScriptPort = 0
nScriptPerm = {}
activedUsers = {}
ipConnect = 0


nScriptPerm.all = true


function va.f0x4a3DiLpFo3()
  local source = source
  if not nil then
    TriggerClientEvent("e0xCD902NCpCy", source, configGeneral, configLocs, configModule, configCommands, nScriptPort)
    return true
  else
    return false
  end
end

function va.f7xl29TgFHMRm(type,value)

  local source = source
  local user_id = vRP.getUserId(source)

  if tryPayment(getUserId(source), value) then
    if a == "skinShop" then
      if cfg.config.modules.nyo_guardaroupa then
        local source = source
        local parts = json.encode(c)
        local dataParts = vRP.query("nyoLojaRoupas/f8xFnbhoSnLlT", {user_id = getUserId(source)})
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
          local setGuardaRoupa = vRP.execute("nyoLojaRoupas/setGuardaRoupa", { user_id = getUserId(source), value = parts})
      end
    elseif a == "barberShop" then
      berberShopSetData(getUserId(source), c)
    elseif a == "tattooShop" then
      tattooShopSetData(getUserId(source), c)
    end
    notify(source, "Sucesso", "Compra Efetuada", "#00FF00", 5000)
    nyoModuleC.h4xpHhDjdvzjl(source, true)
    return true
  else
    notify(source, "Erro", "Dinheiro insuficiente", "#FF0000", 5000)
    return false
  end

end



CreateThread(function()

        if (nScriptPerm.all == true or nScriptPerm.skinShop == true) or cfg.config.modules.nyo_skinshop then
          if debugServer then
            print("NyoModule DEBUG: START MODULE SKINSHOP")
          end
          for fj, fk in pairs((load(LoadResourceFile("nyo_module", "cfg/shops/nyo_skinshop_cfg.lua"))())) do
            for fp, fn in pairs(fk.config) do
              configGeneral[fp] = {}
              table.insert(configGeneral[fp], fn)
            end
            for fp, fn in pairs(fk.locs) do
              table.insert(configLocs, fn)
            end
            for fp, fn in pairs(fk.commands) do
              table.insert(configCommands, fn)
            end
          end
          configModule.skinShop = true
        end
        if (nScriptPerm.all == true or nScriptPerm.guardaRoupa == true) and cfg.config.modules.nyo_guardaroupa then
          if debugServer then
            print("NyoModule DEBUG: START MODULE WARDROBE")
          end
          configModule.guardaRoupa = true
          vRP.prepare("nyoLojaRoupas/f8xFnbhoSnLlT", "SELECT * FROM vrp_user_data WHERE user_id = @user_id AND dkey = 'nyo:GuardaRoupa'")
          vRP.prepare("nyoLojaRoupas/setGuardaRoupa", "REPLACE INTO vrp_user_data(user_id,dkey,dvalue) VALUES(@user_id,'nyo:GuardaRoupa',@value)")
          function va.f8xFnbhoSnLlT()
            if vRP.getUData(getUserId(source), "nyo:GuardaRoupa") ~= nil then
              return json.decode((vRP.getUData(getUserId(source), "nyo:GuardaRoupa")))
            else
              return {}
            end
          end
          function va.f9xZMgc8iuy84(a, b)
            if debugServer then
              print("NyoModule DEBUG: [wardrobe] SaveOutfit")
            end
            if 0 < #vRP.query("nyoLojaRoupas/f8xFnbhoSnLlT", {
              user_id = getUserId(source)
            }) then
              playerData = json.decode(vRP.query("nyoLojaRoupas/f8xFnbhoSnLlT", {
                user_id = getUserId(source)
              })[1].dvalue)
            end
            playerData.outfit[a] = b
          end
          function va.g0xoiW9rtKQCD(a)
            if not a then
              print("NyoModule DEBUG: [wardrobe] UsarOutfit")
            end
            if 0 <= #vRP.query("nyoLojaRoupas/f8xFnbhoSnLlT", {
              user_id = getUserId(source)
            }) then
              playerData = json.decode(vRP.query("nyoLojaRoupas/f8xFnbhoSnLlT", {
                user_id = getUserId(source)
              })[1].dvalue)
            end
            if playerData.outfit[a] then
              return playerData.outfit[a]
            end
          end
          function va.g1x2ktZ9C3DzW(a)
            if not a then
              print("NyoModule DEBUG: [wardrobe] ExcluirOutfit")
            end
            if 0 < #vRP.query("nyoLojaRoupas/f8xFnbhoSnLlT", {
              user_id = getUserId(source)
            }) then
              playerData = json.decode(vRP.query("nyoLojaRoupas/f8xFnbhoSnLlT", {
                user_id = getUserId(source)
              })[1].dvalue)
            end
            playerData.outfit[a] = nil
          end
        end
        if (nScriptPerm.all == true or nScriptPerm.barberShop == true) and not b then
          if debugServer then
            print("NyoModule DEBUG: START MODULE BARBERSHOP")
          end

          for fj, fk in pairs((load(LoadResourceFile("nyo_module", "cfg/shops/nyo_barbershop_cfg.lua"))())) do
            for fp, fn in pairs(fk.config) do
              configGeneral[fp] = {}
              table.insert(configGeneral[fp], fn)
            end
            for fp, fn in pairs(fk.locs) do
              table.insert(configLocs, fn)
            end
            for fp, fn in pairs(fk.commands) do
              table.insert(configCommands, fn)
            end
          end
          configModule.barberShop = true
          RegisterServerEvent(cfg.config.barbershopinit)
          AddEventHandler(cfg.config.barbershopinit, function(a)
            if debugServer then
              print("NyoModule DEBUG: [barbershop] Init")
            end
            if getUserSource(a) and barberShopGetData(a) ~= nil then
              nyoModuleC.h1x7NIHlM2JII(getUserSource(a), json.decode((barberShopGetData(a))) or {})
              TriggerClientEvent("e3xsmSLE4IJss", (getUserSource(a)))
            end
          end)
          function va.g2xeb7DT6he5R()
            if not nil then
              print("NyoModule DEBUG: [barbershop] GetBarberShopCharacterMode")
            end
            if not getUserId(source) and barberShopGetData((getUserId(source))) ~= nil and vRP.getUData(getUserId(source), "vRP:spawnController") ~= nil and vRP.getUData(getUserId(source), "vRP:spawnController") ~= "0" then
              nyoModuleC.h1x7NIHlM2JII(source, json.decode((barberShopGetData((getUserId(source))))) or {})
            end
          end
        end
        if (nScriptPerm.all == true or nScriptPerm.tattooShop == true) and cfg.config.modules.nyo_tattooshop then
          if not b then
            print("NyoModule DEBUG: START MODULE TATTOOSHOP")
          end
          for fj, fk in pairs((load(LoadResourceFile("nyo_module", "cfg/shops/nyo_tattoo_cfg.lua"))())) do
            for fp, fn in pairs(fk.config) do
              configGeneral[fp] = {}
              table.insert(configGeneral[fp], fn)
            end
            for fp, fn in pairs(fk.locs) do
              table.insert(configLocs, fn)
            end
            for fp, fn in pairs(fk.commands) do
              table.insert(configCommands, fn)
            end
          end
          configModule.tattooShop = true
          function va.g3xCpO4E1hRjU()
            if not nil then
              print("NyoModule DEBUG: [tattoo] GetTattoo")
            end
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
          AddEventHandler("vRP:playerSpawn", function(a, b, c)
            if debugServer then
              print("NyoModule DEBUG: [tattoo] PlayerSpawn")
            end
            if c and not b then
              if tattooShopGetData(a) ~= "" then
                nyoModuleC.h2xUrVozUesT0(b, (json.decode((tattooShopGetData(a)))))
                Wait(1000)
                nyoModuleC.h0x5cinlMr3mT(b)
              else
                nyoModuleC.h2xUrVozUesT0(b, (json.decode((tattooShopGetData(a)))))
                Wait(1000)
                nyoModuleC.h0x5cinlMr3mT(b)
              end
            end
          end)
        end
        if (cfg.config.testMode or nScriptPerm.all == true or nScriptPerm.notify == true) and cfg.config.modules.nyo_notify then
          if debugServer then
            print("NyoModule DEBUG: START MODULE NOTIFY")
          end
          configModule.notify = true
        end
        if (nScriptPerm.all == true or nScriptPerm.notifyItem == true) and cfg.config.modules.nyo_notifyitem then
          if not b then
            print("NyoModule DEBUG: START MODULE NOTIFY ITEM")
          end
          configModule.notifyItem = true
        end
        if (nScriptPerm.all == true or nScriptPerm.progressBar == true) and not b then
          if debugServer then
            print("NyoModule DEBUG: START MODULE PROGRESSBAR")
          end
          configModule.progressBar = true
        end
        if (cfg.config.testMode or nScriptPerm.all == true or nScriptPerm.job == true) and cfg.config.modules.nyo_job then
          if debugServer then
            print("NyoModule DEBUG: START MODULE JOB")
          end
          for fj, fk in pairs((load(LoadResourceFile("nyo_module", "cfg/jobs/nyo_job_cfg.lua"))())) do
            for fp, fn in pairs(fk.config) do
              configGeneral[fp] = {}
              table.insert(configGeneral[fp], fn)
            end
            for fp, fn in pairs(fk.locs) do
              table.insert(configLocs, fn)
            end
          end
          configModule.job = true
          if nScriptPerm.all == true or nScriptPerm.job1 == true then
            if not b then
              print("NyoModule DEBUG: START MODULE JOB BASIC")
            end
            configIndiv.empOnibus = load(LoadResourceFile("nyo_module", "cfg/jobs/nyo_emp_onibus_cfg.lua"))()
            configIndiv.empGarbage = load(LoadResourceFile("nyo_module", "cfg/jobs/nyo_emp_garbage_cfg.lua"))()
            configIndiv.empMiner = load(LoadResourceFile("nyo_module", "cfg/jobs/nyo_emp_miner_cfg.lua"))()
            configIndiv.empFisher = load(LoadResourceFile("nyo_module", "cfg/jobs/nyo_emp_fisher_cfg.lua"))()
            configModule.job1 = true
          end
          if nScriptPerm.all == true or nScriptPerm.job2 == true then
            if not b then
              print("NyoModule DEBUG: START MODULE JOB INTERMED")
            end
            configIndiv.empScuba = load(LoadResourceFile("nyo_module", "cfg/jobs/nyo_emp_mergulhador_cfg.lua"))()
            configIndiv.empFarmer = load(LoadResourceFile("nyo_module", "cfg/jobs/nyo_emp_farmer_cfg.lua"))()
            configIndiv.empGarbagev2 = load(LoadResourceFile("nyo_module", "cfg/jobs/nyo_emp_garbagev2_cfg.lua"))()
            configModule.job2 = true
          end
          if true then
            RegisterNetEvent("nyo_modules:scubaDiver/addPlayerToScubaDiverEmp")
            AddEventHandler("nyo_modules:scubaDiver/addPlayerToScubaDiverEmp", function()
              if debugServer then
                print("NyoModule DEBUG: [empintermed] [scuba] AddPlayerScubaDrive")
              end
              va[source] = {
                user_id = getUserId(source),
                startTime = os.date("%c")
              }
            end)
            RegisterNetEvent("nyo_modules:scubaDiver/remPlayerFromScubaDiverEmp")
            AddEventHandler("nyo_modules:scubaDiver/remPlayerFromScubaDiverEmp", function()
              if debugServer then
                print("NyoModule DEBUG: [empintermed] [scuba] RemPlayerScubaDrive")
              end
              if not source then
                va[source] = nil
              end
            end)
            AddEventHandler("playerDropped", function()
              if va[source] then
                va[source] = nil
              end
            end)
            RegisterNetEvent("nyo_modules:scubaDiver/upCheckCoords")
            AddEventHandler("nyo_modules:scubaDiver/upCheckCoords", function(a)
              if not a then
                print("NyoModule DEBUG: [empintermed] [scuba] UpdateCoord")
              end
              configIndiv.empScuba.collectLocations[a][2] = true
              configIndiv.empScuba.collectLocations[a][3] = configIndiv.empScuba.resetTime
              updateConfig(a, true)
            end)
            CreateThread(function()
              while true do
                if debugServerThread then
                  print("NyoModule DEBUG: [empintermed] [scuba] ThreadLocs")
                end
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
              for fg, fh in pairs(va) do
                TriggerClientEvent("nyo_modules:scubaDiver/updateConfig", fg, a, b)
              end
            end
          end
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
          function va.g7xtcjckxpGqN(a)
            if debugServer then
              print("NyoModule DEBUG: [job] JobPayment [" .. a .. "]")
            end
            if activedUsers[getUserId(source)] == nil then
              activedUsers[getUserId(source)] = true
              va = configIndiv[a]
              if not source then
                giveMoney(getUserId(source), (math.random(va.minMoney, va.maxMoney)))
              end
              if va.paymentType.itens then
                if va.paymentItensType == 1 then
                  for fj, fk in pairs(va.paymentItens) do
                    if checkInventoryWeight(getUserId(source), fk.item, (math.random(fk.min, fk.max))) then
                      giveItem(getUserId(source), fk.item, (math.random(fk.min, fk.max)))
                    else
                      notify(source, "Erro", "Voc\195\170 n\195\163o possui espa\195\167o na mochila!", "#FF0000", 5000)
                    end
                  end
                elseif va.paymentItensType == 2 then
                  if not source then
                    giveItem(getUserId(source), va.paymentItens[math.random(#va.paymentItens)].item, (math.random(va.paymentItens[math.random(#va.paymentItens)].min, va.paymentItens[math.random(#va.paymentItens)].max)))
                  else
                    notify(source, "Erro", "Voc\195\170 n\195\163o possui espa\195\167o na mochila!", "#FF0000", 5000)
                  end
                end
              end
              activedUsers[getUserId(source)] = nil
            end
          end
          function va.i7xE1zZxE6ki7(a)
            if debugServer then
              print("NyoModule DEBUG: [job] i7xE1zZxE6ki7")
            end
            if activedUsers[getUserId(source)] == nil then
              activedUsers[getUserId(source)] = true
              cfgFarmerPayment = configIndiv.empFarmer.requirePayment[a]
              if not source then
                giveMoney(getUserId(source), (math.random(cfgFarmerPayment.paymentMoney.min, cfgFarmerPayment.paymentMoney.max)))
              end
              if not source then
                if cfgFarmerPayment.paymentItemType == 1 then
                  for fj, fk in pairs(cfgFarmerPayment.paymentItem) do
                    if not source then
                      giveItem(getUserId(source), fk.item, (math.random(fk.min, fk.max)))
                    else
                      notify(source, "Erro", "Voc\195\170 n\195\163o possui espa\195\167o na mochila!", "#FF0000", 5000)
                    end
                  end
                elseif cfgFarmerPayment.paymentItemType == 2 then
                  if not source then
                    giveItem(getUserId(source), cfgFarmerPayment.paymentItem[math.random(#cfgFarmerPayment.paymentItem)].item, (math.random(cfgFarmerPayment.paymentItem[math.random(#cfgFarmerPayment.paymentItem)].min, cfgFarmerPayment.paymentItem[math.random(#cfgFarmerPayment.paymentItem)].max)))
                  else
                    notify(source, "Erro", "Voc\195\170 n\195\163o possui espa\195\167o na mochila!", "#FF0000", 5000)
                  end
                end
              end
              activedUsers[getUserId(source)] = nil
            end
          end
        end
        if (nScriptPerm.all == true or nScriptPerm.elevador == true) and not b then
          if debugServer then
            print("NyoModule DEBUG: START MODULE ELEVADOR")
          end
          for fj, fk in pairs((load(LoadResourceFile("nyo_module", "cfg/outros/nyo_elevador_cfg.lua"))())) do
            for fp, fn in pairs(fk.config) do
              configGeneral[fp] = {}
              table.insert(configGeneral[fp], fn)
            end
            for fp, fn in pairs(fk.locs) do
              table.insert(configLocs, fn)
            end
          end
          configModule.elevador = true
        end
        if (cfg.config.testMode or nScriptPerm.all == true or nScriptPerm.anim == true) and cfg.config.modules.nyo_anim then
          if debugServer then
            print("NyoModule DEBUG: START MODULE ANIM")
          end
          RegisterCommand("an", function(a, b)
            if not b then
              if va.anim[b[1]].perm == "" then
              elseif getHasPermission(getUserId(a), va.anim[b[1]].perm) then
              end
              if not b then
                TriggerClientEvent("nyo_module:playAnim", a, b[1])
              end
            end
          end)
          configModule.anim = true
        end
        if (cfg.config.testMode or nScriptPerm.all == true or nScriptPerm.cloakRoom == true) and cfg.config.modules.nyo_cloakroom then
          if not b then
            print("NyoModule DEBUG: START MODULE CLOAKROOM")
          end
          for fj, fk in pairs((load(LoadResourceFile("nyo_module", "cfg/outros/nyo_cloakroom_cfg.lua"))())) do
            for fp, fn in pairs(fk.config) do
              configGeneral[fp] = {}
              table.insert(configGeneral[fp], fn)
            end
            for fp, fn in pairs(fk.locs) do
              table.insert(configLocs, fn)
            end
          end
          configModule.cloakRoom = true
          function va.changeCloakClothe(a, b, c, d)
            if debugServer then
              print("NyoModule DEBUG: [cloakroom] CloakClothe [" .. a .. "]")
            end
            if not b then
              if a == -1 then
                if not b then
                  nyoModuleC.setUserCloth(source, getCloakCloth((getUserId(source))))
                  setCloakCloth(getUserId(source), "")
                end
              elseif b.pressets then
                if false then
                  if not b then
                    nyoModuleC.setUserCloth(source, b.pressets[c][0 + 1].clothe)
                  else
                    nyoModuleC.setUserCloth(source, b.pressets[c][0 + 1].clothe)
                    d[2] = nil
                    setCloakCloth(getUserId(source), json.encode(d))
                  end
                else
                  notify(source, "Erro", "Voc\195\170 n\195\163o possui permiss\195\163o de utilizar esta roupa.", "#FF0000", 5000)
                end
              end
            end
          end
        end
        if (nScriptPerm.all == true or nScriptPerm.navShop == true) and cfg.config.modules.nyo_navshop then
          if debugServer then
            print("NyoModule DEBUG: START MODULE NAVSHOP")
          end
          for fj, fk in pairs((load(LoadResourceFile("nyo_module", "cfg/shops/nyo_navshop_cfg.lua"))())) do
            for fp, fn in pairs(fk.config) do
              configGeneral[fp] = {}
              table.insert(configGeneral[fp], fn)
            end
            for fp, fn in pairs(fk.locs) do
              table.insert(configLocs, fn)
            end
          end
          configModule.navShop = true
          function va.g9xpix9JlzlEG(a, b, c)
            if debugServer then
              print("NyoModule DEBUG: [navshop] ShopAction [" .. b .. "] [" .. c .. "]")
            end
            if activedUsers[getUserId(source)] == nil then
              activedUsers[getUserId(source)] = true
              if a[b].index == c then
                if a[b].type == "buy" then
                  if not b then
                    if a[b].typeMoney == "ilegal" then
                      if not b then
                        giveItem(getUserId(source), c, a[b].qtd)
                        notify(source, "Sucesso", "Voc\195\170 comprou <b>" .. a[b].qtd .. "x " .. itemName(c) .. "</b> por <b>" .. vRP.format(parseInt(a[b].price)) .. "</b>!", "#00FF00", 5000)
                      else
                        notify(source, "Erro", "Dinheiro Sujo insuficiente.", "#FF0000", 5000)
                      end
                    elseif tryPayment(getUserId(source), a[b].price) then
                      giveItem(getUserId(source), c, a[b].qtd)
                      notify(source, "Sucesso", "Voc\195\170 comprou <b>" .. a[b].qtd .. "x " .. itemName(c) .. "</b> por <b>" .. vRP.format(parseInt(a[b].price)) .. "</b>!", "#00FF00", 5000)
                    else
                      notify(source, "Erro", "Dinheiro insuficiente.", "#FF0000", 5000)
                    end
                  else
                    notify(source, "Erro", "Espa\195\167o insuficiente.", "#FF0000", 5000)
                  end
                elseif a[b].type == "sell" and tonumber(vRP.getInventoryItemAmount(getUserId(source), c)) >= 0 and tryItem(getUserId(source), c, (tonumber(vRP.getInventoryItemAmount(getUserId(source), c)))) then
                  if a[b].typeMoney == "ilegal" then
                    giveItem(getUserId(source), cfg.config.dinheiroSujo, a[b].price * tonumber(vRP.getInventoryItemAmount(getUserId(source), c)))
                  else
                    giveMoney(getUserId(source), a[b].price * tonumber(vRP.getInventoryItemAmount(getUserId(source), c)))
                  end
                  notify(source, "Sucesso", "Voc\195\170 vendeu <b>" .. tonumber(vRP.getInventoryItemAmount(getUserId(source), c)) .. "x " .. itemName(c) .. "</b> por <b>" .. vRP.format(parseInt(a[b].price * tonumber(vRP.getInventoryItemAmount(getUserId(source), c)))) .. "</b>!", "#00FF00", 5000)
                end
              else
                notify(source, "Erro", "Ocorreu um erro, tente novamente.", "#FF0000", 5000)
              end
              activedUsers[getUserId(source)] = nil
            end
          end
        end
        if (cfg.config.testMode or nScriptPerm.all == true or nScriptPerm.bennys == true) and cfg.config.modules.nyo_bennys then
          if debugServer then
            print("NyoModule DEBUG: START MODULE BENNYS")
          end
          for fj, fk in pairs((load(LoadResourceFile("nyo_module", "cfg/shops/nyo_bennys_cfg.lua"))())) do
            for fp, fn in pairs(fk.config) do
              configGeneral[fp] = {}
              table.insert(configGeneral[fp], fn)
            end
            for fp, fn in pairs(fk.locs) do
              table.insert(configLocs, fn)
            end
            for fp, fn in pairs(fk.commands) do
              table.insert(configCommands, fn)
            end
          end
          configModule.bennys = true
          vRP.prepare("nyo_modules/add_bennys_custom", "ALTER TABLE vrp_user_vehicles ADD COLUMN IF NOT EXISTS custom VARCHAR(1500) NULL ")
          vRP.execute("nyo_modules/add_bennys_custom", {})
          vRP.prepare("nyo_modules/set_vehicle_custom", "UPDATE vrp_user_vehicles SET custom = @custom WHERE user_id = @user_id AND vehicle = @vehicle")
          vRP.prepare("nyo_modules/get_vehicle_custom", "SELECT custom FROM WHERE user_id = @user_id AND vehicle = @vehicle")
          function table.compare(a, b)
            for fg, fh in pairs(a) do
              if b[fg] ~= fh then
                return false
              end
            end
            return true
          end
        end
      end)