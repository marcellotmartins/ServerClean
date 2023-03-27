-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local Tools = module("vrp", "lib/Tools")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
local idgens = Tools.newIDGenerator()

-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
func = {}
Tunnel.bindInterface("vrp_inventory", func)
vCLIENT = Tunnel.getInterface("vrp_inventory")
vGARAGE = Tunnel.getInterface("vrp_garages")
vTASKBAR = Tunnel.getInterface("vrp_taskbar")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local active = {}
local weaponrechenger = {}
local registerTimers = {}
local actived = {}

function SendWebhookMessage(webhook,message)
	if webhook ~= nil and webhook ~= "" then
		PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
	end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- REGISTERTIMERS
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        for k, v in pairs(registerTimers) do
            if registerTimers[k][4] > 0 then
                registerTimers[k][4] = registerTimers[k][4] - 1

                if registerTimers[k][4] <= 0 then
                    registerTimers[k] = nil
                    TriggerClientEvent("vrp_inventory:updateRegister", -1, registerTimers)
                end
            end
        end
        Citizen.Wait(10000)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ACTIVE
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        for k, v in pairs(active) do
            if active[k] > 0 then
                active[k] = active[k] - 1
            end
        end
        Citizen.Wait(1000)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- MOCHILA
-----------------------------------------------------------------------------------------------------------------------------------------
function func.Mochila()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        local inv = vRP.getInventory(user_id)
        if inv then
            local inventory = {}
            for k, v in pairs(inv) do
                if (parseInt(v.amount) <= 0 or vRP.itemBodyList(v.item) == nil) then
                    vRP.removeInventoryItem(user_id, v.item, parseInt(v.amount), false)
                else

                    v.amount = parseInt(v.amount)
                    v.name = vRP.itemNameList(v.item)
                    v.peso = vRP.getItemWeight(v.item)
                    v.index = vRP.itemIndexList(v.item)
                    v.key = v.item
                    v.slot = k

                    inventory[k] = v
                end
            end

            local identity = vRP.getUserIdentity(user_id)
            local emp = vRP.getUserGroupByType(user_id,"job")
            emp = vRP.getGroupTitle(emp)
            if emp == "" or emp == nil then
                emp = "Civil"
            end
            return inventory, vRP.computeInvWeight(user_id), vRP.getInventoryMaxWeight(user_id), {identity.name .. " " .. identity.firstname, parseInt(user_id), vRP.getBankMoney(user_id), emp, identity.phone, identity.registration}
        end
    end
end

function dump(o)
    if type(o) == 'table' then
        local s = '{ '
        for k, v in pairs(o) do
            if type(k) ~= 'number' then
                k = '"' .. k .. '"'
            end
            s = s .. '[' .. k .. '] = ' .. dump(v) .. ','
        end
        return s .. '} '
    else
        return tostring(o)
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- POPULATESLOT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("vrp_inventory:updateSlot")
AddEventHandler("vrp_inventory:updateSlot", function(itemName, slot, target, amount)
    local source = source
    local user_id = vRP.getUserId(source)

    if user_id then
        TriggerClientEvent("vrp_sound:source",source,"slot",0.1)
        if amount == nil then
            amount = 1
        end
        if amount <= 0 then
            amount = 1
        end
        local inv = vRP.getInventory(user_id)
        if inv then
            if inv[tostring(slot)] and inv[tostring(target)] and inv[tostring(slot)].item == inv[tostring(target)].item then

                if vRP.tryGetInventoryItem(user_id, itemName, amount, false, slot) then
                    vRP.giveInventoryItem(user_id, itemName, amount, false, target)
                end
            else

                vRP.swapSlot(user_id, slot, target)
            end

        end
    end
end)

local timers = {}
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(500)
        for k, v in pairs(timers) do
            if v > 0 then
                timers[k] = v - 1
            end
        end
    end
end)

local bandagem = {}
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		for k,v in pairs(bandagem) do
			if v > 0 then
				bandagem[k] = v - 1
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- USEITEM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("vrp_inventory:useItem")
AddEventHandler("vrp_inventory:useItem", function(slot, rAmount)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if rAmount == nil then
            rAmount = 1
        end
        if rAmount <= 0 then
            rAmount = 1
        end

        if active[user_id] == nil then
            local inv = vRP.getInventory(user_id)
            if inv then
                if not inv[tostring(slot)] or inv[tostring(slot)].item == nil then
                    return
                end

                local itemName = inv[tostring(slot)].item

                if vRP.itemTypeList(itemName) == "use" then

                    if itemName == "mochila" then
                        if vRP.getInventoryMaxWeight(user_id) >= 90 then
                            TriggerClientEvent("Notify",source,"negado","Você não pode equipar mais mochilas.",8000)
                        else
                            if vRP.tryGetInventoryItem(user_id,"mochila",1) then
                                TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                                vRP.varyExp(user_id,"physical","strength",650)
        
                                if vRP.getExp(user_id,"physical","strength") <= 660 then
                                    TriggerClientEvent("inventory:mochilaoff",source)
                                elseif vRP.getExp(user_id,"physical","strength") >= 680 then
                                    
                                else
                                    TriggerClientEvent("inventory:mochilaon",source)
                                end
                            end
                        end
                    elseif itemName == "bandagem" then
                            if vRPclient.getHealth(source) > 101 and vRPclient.getHealth(source) < 250 then
                                if bandagem[user_id] == 0 or not bandagem[user_id] then
                                    if vRP.tryGetInventoryItem(user_id,"bandagem",1) then
                                        bandagem[user_id] = 120
                                        actived[user_id] = true
                                        vRPclient._CarregarObjeto(source,"amb@world_human_clipboard@male@idle_a","idle_c","v_ret_ta_firstaid",49,60309)
                                        TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                                        TriggerClientEvent('cancelando',source,true)
                                        TriggerClientEvent("progress",source,20000,"bandagem")
                                        SetTimeout(20000,function()
                                            actived[user_id] = nil
                                            TriggerClientEvent('bandagem',source)
                                            TriggerClientEvent('cancelando',source,false)
                                            vRPclient._DeletarObjeto(source)
                                            TriggerClientEvent("Notify",source,"sucesso","Bandagem utilizada com sucesso.",8000)
                                            Citizen.Wait(10000)
                                        end)
                                    end
                                else
                                    TriggerClientEvent("Notify",source,"importante","Aguarde "..vRPclient.getTimeFunction(source,parseInt(bandagem[user_id]))..".",8000)
                                end
                            else
                                TriggerClientEvent("Notify",source,"aviso","Você não pode utilizar de vida cheia ou nocauteado.",8000)
                            end
                    elseif itemName == "maquininha" then
                        local source = source
                        local user_id = vRP.getUserId(source)
                        local nplayer = vRPclient.getNearestPlayer(source, 2)
                        local nuser_id = vRP.getUserId(nplayer)

                        TriggerClientEvent("vrp_inventory:fechar", source)

                        if nplayer then
                            local identity = vRP.getUserIdentity(user_id)
                            local identitynu = vRP.getUserIdentity(nuser_id)
                            local banco = vRP.getBankMoney(user_id)
                            local banconu = vRP.getBankMoney(nuser_id)

                            if vRP.getInventoryItemAmount(user_id, "maquininha") >= 1 then
                                local cobranca = vRP.prompt(source, "Quanto deseja cobrar pelos serviços prestados a " .. identitynu.name .. " " .. identitynu.firstname .. "</b>?", "")
                                TriggerClientEvent("emotes", source, "anotar2")

                                if cobranca ~= "" then
                                    local valorfatura = parseInt(cobranca)
                                    local fatura = vRP.request(nplayer, "<b>" .. identity.name .. " " .. identity.firstname .. "</b> está cobrando <b>$" .. valorfatura .. " dólares</b> pelos serviços. Deseja pagar?", 30)

                                    if fatura then
                                        if vRP.getInventoryItemAmount(nuser_id, "cartao-debito") >= 1 then
                                            if banconu >= valorfatura then
                                                local tax = parseInt(3 / 100 * valorfatura)
                                                local pagamento = parseInt(valorfatura - tax)

                                                vRP.setBankMoney(user_id, banco + pagamento)
                                                vRP.setBankMoney(nuser_id, banconu - valorfatura)

                                                TriggerClientEvent("Notify", source, "sucesso", "<b>" .. identitynu.name .. " " .. identitynu.firstname .. "</b> pagou <b>$" .. valorfatura .. " dólares</b> pelo serviço.s")
                                                TriggerClientEvent("Notify", nplayer, "sucesso", "Você pagou <b>$" .. valorfatura .. " dólares</b> a <b>" .. identity.name .. " " .. identity.firstname .. "</b> pelo serviço.")

                                                vRPclient._stopAnim(source, false)
                                                vRPclient._DeletarObjeto(source)
                                            else
                                                TriggerClientEvent("Notify", source, "negado", "<b>" .. identitynu.name .. " " .. identitynu.firstname .. "</b> não tem dinheiro suficiente para o pagamento.")
                                                TriggerClientEvent("Notify", nplayer, "negado", "Saldo insuficiente.")
                                                vRPclient._stopAnim(source, false)
                                                vRPclient._DeletarObjeto(source)
                                            end
                                        else
                                            TriggerClientEvent("Notify", source, "negado", "O cliente não possuí cartão de crédito para fazer o pagamento.")
                                            TriggerClientEvent("Notify", nplayer, "negado", "Você não tem um cartão de crédito na mochila.")
                                        end
                                    else
                                        TriggerClientEvent("Notify", source, "negado", "<b>" .. identitynu.name .. " " .. identitynu.firstname .. "</b> negou o pagamento.")
                                        vRPclient._stopAnim(source, false)
                                        vRPclient._DeletarObjeto(source)
                                    end
                                else
                                    TriggerClientEvent("Notify", source, "negado", "Você precisa colocar o valor que deseja cobrar!")
                                    vRPclient._stopAnim(source, false)
                                    vRPclient._DeletarObjeto(source)
                                end
                            else
                                TriggerClientEvent("Notify", source, "negado", "Você não possuí uma maquina de cobranças em sua mochila.")
                            end
                        else
                            TriggerClientEvent("Notify", source, "negado", "Não há players por perto.")
                        end
                    elseif itemName == "colete" then
                        if vRP.tryGetInventoryItem(user_id, "colete", 1, true) then
                            vRPclient.setArmour(source, 100)
                            vCLIENT.closeInventory(source)
                        end
                    elseif itemName == "repairkit" then
                        if not vRPclient.isInVehicle(source) then
                            local vehicle = vRPclient.getNearestVehicle(source, 3.5)
                            if vehicle then
                                if vRP.hasPermission(user_id, "mecanico.permissao") then
                                    vCLIENT.closeInventory(source)
                                    local taskBar = vTASKBAR.taskOne(source,2)
                                    if taskBar then
                                        actived[user_id] = true
                                        TriggerClientEvent('cancelando', source, true)
                                        vRPclient._playAnim(source, false, {{"mini@repair", "fixing_a_player"}}, true)
                                        TriggerClientEvent("progress", source, 30000, "reparando veículo")
                                        SetTimeout(30000, function()
                                            actived[user_id] = nil
                                            TriggerClientEvent('cancelando', source, false)
                                            TriggerClientEvent('reparar', source)
                                            TriggerClientEvent('repararmotor', source, vehicle)
                                            vRPclient._stopAnim(source, false)
                                        end)
                                    end
                                else
                                    vCLIENT.closeInventory(source)
                                    local taskBar = vTASKBAR.taskOne(source,3)
                                    if taskBar then
                                        if vRP.tryGetInventoryItem(user_id, "repairkit", 1, true) then
                                            actived[user_id] = true
                                            vCLIENT.closeInventory(source)
                                            TriggerClientEvent('cancelando', source, true)
                                            vRPclient._playAnim(source, false, {{"mini@repair", "fixing_a_player"}}, true)
                                            TriggerClientEvent("progress", source, 30000, "reparando veículo")

                                            SetTimeout(30000, function()
                                                actived[user_id] = nil
                                                TriggerClientEvent('cancelando', source, false)
                                                TriggerClientEvent('reparar', source)
                                                TriggerClientEvent('repararmotor', source, vehicle)
                                                vRPclient._stopAnim(source, false)
                                            end)
                                        end
                                    end
                                end
                            end
                        end
                    elseif itemName == "paninho" then
                        if not vRPclient.isInVehicle(source) then
                            local vehicle = vRPclient.getNearestVehicle(source, 3.5)
                            if vehicle then
                                if vRP.tryGetInventoryItem(user_id, "paninho", 1, true) then
                                    actived[user_id] = true
                                    vCLIENT.closeInventory(source)
                                    TriggerClientEvent('cancelando', source, true)

                                    TriggerClientEvent("emotes", source, "pano")

                                    TriggerClientEvent("progress", source, 10000, "limpando")

                                    SetTimeout(10000, function()
                                        actived[user_id] = nil
                                        TriggerClientEvent('cancelando', source, false)
                                        TriggerClientEvent('limpar', source)
                                        vRPclient._stopAnim(source, false)
                                        vRPclient._DeletarObjeto(src)
                                    end)
                                end
                            end
                        end
                    elseif itemName == "lockpick" then
                        local vehicle, vnetid, placa, vname, lock, banned, trunk, model, street = vRPclient.vehList(source, 2)
                        local policia = vRP.getUsersByPermission("policia.permissao")
                        if vehicle then

                            if vRP.getInventoryItemAmount(user_id, "lockpick") >= 1 and vRP.tryGetInventoryItem(user_id, "lockpick", 1, true) then
                                vCLIENT.closeInventory(source)
                                local taskBar = vTASKBAR.taskOne(source,2)
                                if taskBar then
                                    actived[user_id] = true
                                    TriggerClientEvent('cancelando', source, true)
                                    vRPclient._playAnim(source, false, {{"amb@prop_human_parking_meter@female@idle_a", "idle_a_female"}}, true)
                                    TriggerClientEvent("progress", source, 15000, "roubando")

                                    SetTimeout(15000, function()
                                        actived[user_id] = nil
                                        TriggerClientEvent('cancelando', source, false)
                                        vRPclient._stopAnim(source, false)
                                        TriggerEvent("setPlateEveryone", placa)
                                        vGARAGE.vehicleClientLock(-1, vnetid, 1)
                                        TriggerClientEvent("vrp_sound:source", source, 'lock', 0.5)
                                        local policia = vRP.getUsersByPermission("policia.permissao")
                                        local x, y, z = vRPclient.getPosition(source)
                                        for k, v in pairs(policia) do
                                            local player = vRP.getUserSource(parseInt(v))
                                            if player then
                                                local data = { x = x, y = y, z = z, title = 'VEICULO', code = 'FURTO', veh = model }
                                                TriggerClientEvent('NotifyPush',player,data)
                                            end
                                        end
                                    end)
                                end
                             end
                        else
                            TriggerClientEvent("vrpdoorsystem:forceOpen", source, itemName)
                        end
                    elseif itemName == "capuz" then
                        if vRP.getInventoryItemAmount(user_id, "capuz") >= 1 then
                            local nplayer = vRPclient.getNearestPlayer(source, 2)
                            if nplayer then
                                vRPclient.setCapuz(nplayer)
                                vRP.closeMenu(nplayer)
                                TriggerClientEvent("Notify", source, "sucesso", "Capuz utilizado com sucesso.", 8000)
                            end
                        end
                    elseif itemName == "placa" then
                        if vRPclient.GetVehicleSeat(source) then
                            if vRP.tryGetInventoryItem(user_id, "placa", 1, true) then
                                local placa = vRP.generatePlate()
                                vCLIENT.closeInventory(source)
                                TriggerClientEvent('cancelando', source, true)
                                TriggerClientEvent("vehicleanchor", source)
                                TriggerClientEvent("progress", source, 29500, "clonando")

                                SetTimeout(30000, function()
                                    TriggerClientEvent('cancelando', source, false)
                                    TriggerClientEvent("cloneplates", source, placa)
                                    TriggerEvent("setPlateEveryone",placa)
                                    TriggerClientEvent("Notify", source, "sucesso", "Placa clonada com sucesso.", 8000)
                                end)
                            end
                        end
                    elseif itemName == "energetico" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id, "energetico", 1, true) then

                            actived[user_id] = true
                            vCLIENT.closeInventory(source)
                            vRPclient._CarregarObjeto(src, "amb@world_human_drinking@beer@male@idle_a", "idle_a", "prop_energy_drink", 49, 28422)
                            TriggerClientEvent("progress", source, 10000, "tomando")

                            SetTimeout(10500, function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source, false)
                                vRPclient._DeletarObjeto(src)
                                TriggerClientEvent('energeticos',source,true)
                                TriggerClientEvent("progress", source, 30000, "tomando")
                                SetTimeout(30000, function()
                                    TriggerClientEvent('energeticos',source,false)
                                    TriggerClientEvent("Notify", source, "importante", "O efeito do energetico passou", 8000)
                                end)
                            end)

                        end
                    elseif itemName == "agua" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"agua",1) then

                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            vRPclient._CarregarObjeto(src,"amb@world_human_drinking@beer@male@idle_a","idle_a","prop_ld_flow_bottle",49,28422)
                            TriggerClientEvent("progress",source,10000,"tomando")

                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,-40)
                                vRP.varyHunger(user_id,0)
                                vRP.giveInventoryItem(user_id,"garrafa-vazia",1)
                                vRPclient._DeletarObjeto(src)
                            end)

                        end
                    elseif itemName == "leite" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"leite",1) then

                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            vRPclient._CarregarObjeto(src,"amb@world_human_drinking@beer@male@idle_a","idle_a","prop_energy_drink",49,28422)
                            TriggerClientEvent("progress",source,10000,"tomando")

                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,-40)
                                vRP.varyHunger(user_id,0)
                                vRPclient._DeletarObjeto(src)
                            end)

                        end
                    elseif itemName == "cafe" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"cafe",1) then

                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            vRPclient._CarregarObjeto(src,"amb@world_human_aa_coffee@idle_a","idle_a","prop_fib_coffee",49,28422)
                            TriggerClientEvent("progress",source,10000,"tomando")

                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,-40)
                                vRP.varyHunger(user_id,0)
                                vRPclient._DeletarObjeto(src)
                            end)

                        end
                    elseif itemName == "cafecleite" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"cafecleite",1) then

                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            vRPclient._CarregarObjeto(src,"amb@world_human_aa_coffee@idle_a","idle_a","prop_fib_coffee",49,28422)
                            TriggerClientEvent("progress",source,10000,"tomando")

                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,-40)
                                vRP.varyHunger(user_id,0)
                                vRPclient._DeletarObjeto(src)
                            end)

                        end
                    elseif itemName == "cafeexpresso" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"cafeexpresso",1) then

                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            vRPclient._CarregarObjeto(src,"amb@world_human_aa_coffee@idle_a","idle_a","prop_fib_coffee",49,28422)
                            TriggerClientEvent("progress",source,10000,"tomando")

                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,-40)
                                vRP.varyHunger(user_id,0)
                                vRPclient._DeletarObjeto(src)
                            end)

                        end
                    elseif itemName == "capuccino" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"capuccino",1) then

                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            vRPclient._CarregarObjeto(src,"amb@world_human_aa_coffee@idle_a","idle_a","prop_fib_coffee",49,28422)
                            TriggerClientEvent("progress",source,10000,"tomando")

                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,-55)
                                vRP.varyHunger(user_id,0)
                                vRPclient._DeletarObjeto(src)
                            end)

                        end
                    elseif itemName == "frappuccino" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"frappuccino",1) then

                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            vRPclient._CarregarObjeto(src,"amb@world_human_aa_coffee@idle_a","idle_a","prop_fib_coffee",49,28422)
                            TriggerClientEvent("progress",source,10000,"tomando")

                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,-65)
                                vRP.varyHunger(user_id,0)
                                vRPclient._DeletarObjeto(src)
                            end)

                        end
                    elseif itemName == "cha" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"cha",1) then

                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            vRPclient._CarregarObjeto(src,"amb@world_human_drinking@beer@male@idle_a","idle_a","prop_energy_drink",49,28422)
                            TriggerClientEvent("progress",source,10000,"tomando")

                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,-50)
                                vRP.varyHunger(user_id,0)
                                vRPclient._DeletarObjeto(src)
                            end)

                        end
                    elseif itemName == "icecha" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"icecha",1) then

                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            vRPclient._CarregarObjeto(src,"amb@world_human_drinking@beer@male@idle_a","idle_a","prop_energy_drink",49,28422)
                            TriggerClientEvent("progress",source,10000,"tomando")

                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,-50)
                                vRP.varyHunger(user_id,0)
                                vRPclient._DeletarObjeto(src)
                            end)

                        end
                    elseif itemName == "sprunk" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"sprunk",1) then

                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            vRPclient._CarregarObjeto(src,"amb@world_human_drinking@beer@male@idle_a","idle_a","ng_proc_sodacan_01b",49,28422)
                            TriggerClientEvent("progress",source,10000,"tomando")

                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,-65)
                                vRP.varyHunger(user_id,0)
                                vRPclient._DeletarObjeto(src)
                            end)

                        end
                    elseif itemName == "cola" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"cola",1) then

                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            vRPclient._CarregarObjeto(src,"amb@world_human_drinking@beer@male@idle_a","idle_a","ng_proc_sodacan_01a",49,28422)
                            TriggerClientEvent("progress",source,10000,"tomando")

                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,-70)
                                vRP.varyHunger(user_id,0)
                                vRPclient._DeletarObjeto(src)
                            end)

                        end
                    elseif itemName == "pibwassen" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"pibwassen",1) then
                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            vRPclient._CarregarObjeto(src,"amb@world_human_drinking@beer@male@idle_a","idle_a","prop_amb_beer_bottle",49,28422)
                            TriggerClientEvent("progress",source,10000,"tomando")
                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,-10)
                                vRP.varyHunger(user_id,0)
                                TriggerClientEvent("inventory:checkDrunk",source)
                                vRPclient._DeletarObjeto(src)
                            end)
                        end
                    elseif itemName == "tequilya" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"tequilya",1) then
                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            vRPclient._CarregarObjeto(src,"amb@world_human_drinking@beer@male@idle_a","idle_a","prop_beer_logopen",49,28422)
                            TriggerClientEvent("progress",source,10000,"tomando")
                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,15)
                                vRP.varyHunger(user_id,0)
                                TriggerClientEvent("inventory:checkDrunk",source)
                                vRPclient._DeletarObjeto(src)
                            end)
                        end
                    elseif itemName == "patriot" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"patriot",1) then
                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            vRPclient._CarregarObjeto(src,"amb@world_human_drinking@beer@male@idle_a","idle_a","prop_amb_beer_bottle",49,28422)
                            TriggerClientEvent("progress",source,10000,"tomando")
                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,-10)
                                vRP.varyHunger(user_id,0)
                                TriggerClientEvent("inventory:checkDrunk",source)
                                vRPclient._DeletarObjeto(src)
                            end)
                        end
                    elseif itemName == "blarneys" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"blarneys",1) then
                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            vRPclient._CarregarObjeto(src,"amb@world_human_drinking@beer@male@idle_a","idle_a","p_whiskey_notop",49,28422)
                            TriggerClientEvent("progress",source,10000,"tomando")
                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,15)
                                vRP.varyHunger(user_id,0)
                                TriggerClientEvent("inventory:checkDrunk",source)
                                vRPclient._DeletarObjeto(src)
                            end)
                        end
                    elseif itemName == "jakeys" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"jakeys",1) then
                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            vRPclient._CarregarObjeto(src,"amb@world_human_drinking@beer@male@idle_a","idle_a","prop_beer_logopen",49,28422)
                            TriggerClientEvent("progress",source,10000,"tomando")
                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,15)
                                vRP.varyHunger(user_id,0)
                                TriggerClientEvent("inventory:checkDrunk",source)
                                vRPclient._DeletarObjeto(src)
                            end)
                        end
                    elseif itemName == "barracho" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"barracho",1) then
                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            vRPclient._CarregarObjeto(src,"amb@world_human_drinking@beer@male@idle_a","idle_a","prop_amb_beer_bottle",49,28422)
                            TriggerClientEvent("progress",source,10000,"tomando")
                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,15)
                                vRP.varyHunger(user_id,0)
                                TriggerClientEvent("inventory:checkDrunk",source)
                                vRPclient._DeletarObjeto(src)
                            end)
                        end
                    elseif itemName == "ragga" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"ragga",1) then
                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            vRPclient._CarregarObjeto(src,"amb@world_human_drinking@beer@male@idle_a","idle_a","p_whiskey_notop",49,28422)
                            TriggerClientEvent("progress",source,10000,"tomando")
                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,15)
                                vRP.varyHunger(user_id,0)
                                TriggerClientEvent("inventory:checkDrunk",source)
                                vRPclient._DeletarObjeto(src)
                            end)
                        end
                    elseif itemName == "nogo" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"nogo",1) then
                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            vRPclient._CarregarObjeto(src,"amb@world_human_drinking@beer@male@idle_a","idle_a","prop_beer_logopen",49,28422)
                            TriggerClientEvent("progress",source,10000,"tomando")
                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,15)
                                vRP.varyHunger(user_id,0)
                                TriggerClientEvent("inventory:checkDrunk",source)
                                vRPclient._DeletarObjeto(src)
                            end)
                        end
                    elseif itemName == "mount" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"mount",1) then
                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            vRPclient._CarregarObjeto(src,"amb@world_human_drinking@beer@male@idle_a","idle_a","p_whiskey_notop",49,28422)
                            TriggerClientEvent("progress",source,10000,"tomando")
                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,20)
                                vRP.varyHunger(user_id,0)
                                TriggerClientEvent("inventory:checkDrunk",source)
                                vRPclient._DeletarObjeto(src)
                            end)
                        end
                    elseif itemName == "cherenkov" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"cherenkov",1) then
                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            vRPclient._CarregarObjeto(src,"amb@world_human_drinking@beer@male@idle_a","idle_a","prop_beer_logopen",49,28422)
                            TriggerClientEvent("progress",source,10000,"tomando")
                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,20)
                                vRP.varyHunger(user_id,0)
                                TriggerClientEvent("inventory:checkDrunk",source)
                                vRPclient._DeletarObjeto(src)
                            end)
                        end
                    elseif itemName == "bourgeoix" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"bourgeoix",1) then
                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            vRPclient._CarregarObjeto(src,"amb@world_human_drinking@beer@male@idle_a","idle_a","p_whiskey_notop",49,28422)
                            TriggerClientEvent("progress",source,10000,"tomando")
                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,20)
                                vRP.varyHunger(user_id,0)
                                TriggerClientEvent("inventory:checkDrunk",source)
                                vRPclient._DeletarObjeto(src)
                            end)
                        end
                    elseif itemName == "bleuterd" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"bleuterd",1) then
                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            vRPclient._CarregarObjeto(src,"amb@world_human_drinking@beer@male@idle_a","idle_a","prop_beer_logopen",49,28422)
                            TriggerClientEvent("progress",source,10000,"tomando")
                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,20)
                                vRP.varyHunger(user_id,0)
                                TriggerClientEvent("inventory:checkDrunk",source)
                                vRPclient._DeletarObjeto(src)
                            end)
                        end
                    elseif itemName == "sanduiche" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"sanduiche",1) then
                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            TriggerClientEvent("emotes",source,"comer")
                            TriggerClientEvent("progress",source,10000,"comendo")

                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,0)
                                vRP.varyHunger(user_id,-40)
                                vRPclient._DeletarObjeto(src)
                            end)

                        end
                    elseif itemName == "rosquinha" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"rosquinha",1) then
                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            TriggerClientEvent("emotes",source,"comer3")
                            TriggerClientEvent("progress",source,10000,"comendo")
                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,0)
                                vRP.varyHunger(user_id,-40)
                                vRPclient._DeletarObjeto(src)
                            end)
                        end
                    elseif itemName == "hotdog" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"hotdog",1) then
                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            TriggerClientEvent("emotes",source,"comer2")
                            TriggerClientEvent("progress",source,10000,"comendo")

                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,0)
                                vRP.varyHunger(user_id,-40)
                                vRPclient._DeletarObjeto(src)
                            end)
                        end
                    elseif itemName == "xburguer" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"xburguer",1) then
                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            TriggerClientEvent("emotes",source,"comer")
                            TriggerClientEvent("progress",source,10000,"comendo")
                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,0)
                                vRP.varyHunger(user_id,-40)
                                vRPclient._DeletarObjeto(src)
                            end)
                        end
                    elseif itemName == "chips" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"chips",1) then

                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            vRPclient._CarregarObjeto(src,"amb@code_human_wander_eating_donut@male@idle_a","idle_c","ng_proc_food_chips01b",49,28422)
                            TriggerClientEvent("progress",source,10000,"comendo")
                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,0)
                                vRP.varyHunger(user_id,-40)
                                vRPclient._DeletarObjeto(src)
                            end)
                        end
                    elseif itemName == "batataf" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"batataf",1) then
                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            vRPclient._CarregarObjeto(src,"amb@code_human_wander_eating_donut@male@idle_a","idle_c","prop_food_bs_chips",49,28422)
                            TriggerClientEvent("progress",source,10000,"comendo")
                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,0)
                                vRP.varyHunger(user_id,-40)
                                vRPclient._DeletarObjeto(src)
                            end)
                        end
                    elseif itemName == "pizza" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"pizza",1) then
                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            vRPclient._CarregarObjeto(src,"amb@code_human_wander_eating_donut@male@idle_a","idle_c","v_res_tt_pizzaplate",49,28422)
                            TriggerClientEvent("progress",source,10000,"comendo")
                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,0)
                                vRP.varyHunger(user_id,-40)
                                vRPclient._DeletarObjeto(src)
                            end)
                        end
                    elseif itemName == "frango" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"frango",1) then

                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            vRPclient._CarregarObjeto(src,"amb@code_human_wander_eating_donut@male@idle_a","idle_c","prop_food_cb_nugets",49,28422)
                            TriggerClientEvent("progress",source,10000,"comendo")
                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,0)
                                vRP.varyHunger(user_id,-40)
                                vRPclient._DeletarObjeto(src)
                            end)
                        end
                    elseif itemName == "bcereal" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"bcereal",1) then
                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            vRPclient._CarregarObjeto(src,"amb@code_human_wander_eating_donut@male@idle_a","idle_c","prop_choc_pq",49,28422)
                            TriggerClientEvent("progress",source,10000,"comendo")

                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,0)
                                vRP.varyHunger(user_id,-40)
                                vRPclient._DeletarObjeto(src)
                            end)
                        end
                    elseif itemName == "bchocolate" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"bchocolate",1) then
                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            vRPclient._CarregarObjeto(src,"amb@code_human_wander_eating_donut@male@idle_a","idle_c","prop_choc_meto",49,28422)
                            TriggerClientEvent("progress",source,10000,"comendo")
                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,0)
                                vRP.varyHunger(user_id,-40)
                                vRPclient._DeletarObjeto(src)
                            end)
                        end
                    elseif itemName == "taco" then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id,"taco",1) then
                            actived[user_id] = true
                            TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                            vRPclient._CarregarObjeto(src,"amb@code_human_wander_eating_donut@male@idle_a","idle_c","prop_taco_01",49,28422)
                            TriggerClientEvent("progress",source,10000,"comendo")
                            SetTimeout(10000,function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source,false)
                                vRP.varyThirst(user_id,0)
                                vRP.varyHunger(user_id,-40)
                                vRPclient._DeletarObjeto(src)
                            end)
                        end
                    elseif itemName == "paracetamil" and vRPCclient.checkVida(source) then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id, "paracetamil", 1, true) then
                            actived[user_id] = true

                            vCLIENT.closeInventory(source)
                            vRPclient._CarregarObjeto(src, "amb@world_human_drinking@beer@male@idle_a", "idle_a", "prop_cs_pills", 49, 28422)
                            TriggerClientEvent("progress", source, 10000, "tomando")

                            SetTimeout(10000, function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source, false)
                                TriggerClientEvent("remedios", source)
                                vRPclient._DeletarObjeto(src)
                            end)
                        end
                    elseif itemName == "voltarom" and vRPCclient.checkVida(source) then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id, "voltarom", 1, true) then
                            actived[user_id] = true
                            vCLIENT.closeInventory(source)
                            vRPclient._CarregarObjeto(src, "amb@world_human_drinking@beer@male@idle_a", "idle_a", "prop_cs_pills", 49, 28422)
                            TriggerClientEvent("progress", source, 10000, "tomando")
                            SetTimeout(10000, function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source, false)
                                TriggerClientEvent("remedios", source)
                                vRPclient._DeletarObjeto(src)
                            end)
                        end
                    elseif itemName == "trandrylux" and vRPCclient.checkVida(source) then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id, "trandrylux", 1, true) then
                            actived[user_id] = true
                            vCLIENT.closeInventory(source)
                            vRPclient._CarregarObjeto(src, "amb@world_human_drinking@beer@male@idle_a", "idle_a", "prop_cs_pills", 49, 28422)
                            TriggerClientEvent("progress", source, 10000, "tomando")
                            SetTimeout(10000, function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source, false)
                                TriggerClientEvent("remedios", source)
                                vRPclient._DeletarObjeto(src)
                            end)
                        end
                    elseif itemName == "dorfrex" and vRPCclient.checkVida(source) then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id, "dorfrex", 1, true) then
                            actived[user_id] = true
                            vCLIENT.closeInventory(source)

                            vRPclient._CarregarObjeto(src, "amb@world_human_drinking@beer@male@idle_a", "idle_a", "prop_cs_pills", 49, 28422)
                            TriggerClientEvent("progress", source, 10000, "tomando")

                            SetTimeout(10000, function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source, false)
                                TriggerClientEvent("remedios", source)
                                vRPclient._DeletarObjeto(src)
                            end)
                        end
                    elseif itemName == "buscopom" and vRPCclient.checkVida(source) then
                        local src = source
                        if vRP.tryGetInventoryItem(user_id, "buscopom", 1, true) then
                            actived[user_id] = true
                            vCLIENT.closeInventory(source)
                            vRPclient._CarregarObjeto(src, "amb@world_human_drinking@beer@male@idle_a", "idle_a", "prop_cs_pills", 49, 28422)
                            TriggerClientEvent("progress", source, 10000, "tomando")
                            SetTimeout(10000, function()
                                actived[user_id] = nil
                                vRPclient._stopAnim(source, false)
                                TriggerClientEvent("remedios", source)
                                vRPclient._DeletarObjeto(src)
                            end)
                        end
                    end
                end


                if vRP.itemTypeList(itemName) == "equip" then
                    if vRP.tryGetInventoryItem(user_id,itemName,1) then
                        local weapons = {}
                        local identity = vRP.getUserIdentity(user_id)
                        local nameweapon = itemName
                        weapons[itemName] = { ammo = 0 }
                        vRPclient._giveWeapons(source,weapons)
        
                        TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                    end
                end

                if vRP.itemTypeList(itemName) == "pqd" then
                    if vRP.tryGetInventoryItem(user_id,itemName,1) then
                        vCLIENT.parachuteColors(source)
        
                        TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                    end
                end

                if vRP.itemTypeList(itemName) == "recharge" then

                    local uweapons = vRPclient.getWeapons(source)
                    local identity = vRP.getUserIdentity(user_id)
                    
                    for k,v in pairs(config.weapon_ammos) do
                        if k == itemName then
                            for m,n in pairs(v) do
                                if uweapons[n] then
                                    local itemAmount = 0
                                    local data = vRP.getUserDataTable(user_id)
                                    if vRP.tryGetInventoryItem(user_id, itemName, rAmount) then
                                        local weapons = {}
                                        weapons[n] = { ammo = rAmount }
                                        itemAmount = rAmount
                                        vRPclient._giveWeapons(source,weapons,false)
                                        
                                        TriggerClientEvent('vrp_inventory:Update',source,'updateMochila')
                                    end
                                    break
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATE
-----------------------------------------------------------------------------------------------------------------------------------------
function func.updateWeaponAmmo(weapon, ammo)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        local ammoType = getAmmoTypeByWeapon(weapon)
        if ammoType ~= "" then
            vRP.remAmmoWeaponId(user_id, ammoType, ammo)
        end
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- SENDITEM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("vrp_inventory:sendItem")
AddEventHandler("vrp_inventory:sendItem", function(slot, rAmount)
    if rAmount == nil then
        rAmount = 1
    end
    if rAmount <= 0 then
        rAmount = 1
    end
    local amount = rAmount
    local source = source
    local user_id = vRP.getUserId(source)

    local inv = vRP.getInventory(user_id)
    if inv then
        if not inv[tostring(slot)] or inv[tostring(slot)].item == nil then
            return
        end
        local itemName = inv[tostring(slot)].item
        if user_id then
            if active[user_id] == nil then
                local nplayer = vRPclient.getNearestPlayer(source,2)
                if nplayer then
                    local nuser_id = vRP.getUserId(nplayer)
                    if nuser_id then
                        if vRP.computeInvWeight(nuser_id) + vRP.getItemWeight(itemName) * parseInt(amount) <= vRP.getInventoryMaxWeight(nuser_id) then
                            if vRP.tryGetInventoryItem(user_id, itemName, parseInt(amount), true) then
                                SendWebhookMessage(webh.logitemsend,"```prolog\n[ ENVIOU ][ JOGADOR ]: » "..user_id.."\n[RECEBEU] "..nuser_id.."\n[ITEM] "..itemName.."\n [QUANTIDADE]: "..parseInt(amount).. ""..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
                                vRP.giveInventoryItem(nuser_id, itemName, parseInt(amount), true)
                                TriggerClientEvent("vrp_inventory:Update", nplayer, "updateMochila")
                                TriggerClientEvent("vrp_inventory:Update", source, "updateMochila")
                                vRPclient._playAnim(source,true,{{"mp_common","givetake1_a"}},false)
                                vRPclient._playAnim(nplayer,true,{{"mp_common","givetake1_a"}},false)
                            end
                        end    
                    end
                end
            end
        end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- DROPITEM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("vrp_inventory:dropItem")
AddEventHandler("vrp_inventory:dropItem", function(itemName, amount, bole)
    local source = source
    local user_id = vRP.getUserId(source)
    weaponrechenger[itemName] = false
    if user_id then
        local x, y, z = vRPclient.getPosition(source)
        if not vRPclient.isInVehicle(source) then
            if parseInt(amount) > 0 then
                vCLIENT.removeWeaponInHand(source)
                if bole == true then
                    if vRP.tryGetInventoryItem(user_id, itemName, parseInt(amount), true) then
                        TriggerClientEvent("vrp_sound:source",source,"slot",0.1)
                        if vRP.hasPermission(userid,'policia.permissao') or vRP.hasPermission(userid,'policiaap.permissao') then
                            SendWebhookMessage(webh.logitemdropPolicia,"```prolog\n[ DROPOU ][ POLICIAL ]: » "..user_id.."\n[ITEM] "..itemName.."\n [QUANTIDADE]: "..amount.. ""..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
                        end
                        SendWebhookMessage(webh.logitemdrop,"```prolog\n[ DROPOU ][ JOGADOR ]: » "..user_id.."\n[ITEM] "..itemName.."\n [QUANTIDADE]: "..amount.. ""..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
                        TriggerEvent("itemdrop:Create", itemName, parseInt(amount), source)
                        vRPclient._playAnim(source, true, {"pickup_object", "pickup_low"}, false)
                        vCLIENT.closeInventory(source)
                    end
                end

            end
            local nplayer = vRPclient.nearestPlayer(source, 5)
            if nplayer then
                TriggerClientEvent("vrp_inventory:Update", nplayer, "updateMochila")
            end
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local droplist = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- ITEMDROP:CREATE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("itemdrop:Create")
AddEventHandler("itemdrop:Create", function(item, count, source)
    local id = idgens:gen()
    local x, y, z = vRPclient.getPosition(source)
    droplist[id] = {item = item, count = count, x = x, y = y, z = z, name = vRP.itemNameList(item), index = vRP.itemIndexList(item), desc = vRP.itemDescList(item), peso = vRP.getItemWeight(item)}
    TriggerClientEvent("itemdrop:Players", -1, id, droplist[id])
    local nplayer = vRPclient.nearestPlayer(source, 5)
    if nplayer then
        TriggerClientEvent("vrp_inventory:Update", nplayer, "updateMochila")
    end
end)

-- ROUBO
RegisterServerEvent("vrp_itemdrop:Create")
AddEventHandler("vrp_itemdrop:Create", function(item, count, x, y, z, source)
    local id = idgens:gen()
    droplist[id] = {item = item, count = count, x = x, y = y, z = z, name = vRP.itemNameList(item), index = vRP.itemIndexList(item), desc = vRP.itemDescList(item), peso = vRP.getItemWeight(item)}
    TriggerClientEvent("itemdrop:Players", -1, id, droplist[id])
    local nplayer = vRPclient.nearestPlayer(source, 5)
    if nplayer then
        TriggerClientEvent("vrp_inventory:Update", nplayer, "updateMochila")
    end
end)

------------------------------------------------------------------------------------------------------------------------------------------
-- ITEMDROP:PICKUP
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("itemdrop:Pickup")
AddEventHandler("itemdrop:Pickup", function(id, slot, amount)
    local source = source
    local user_id = vRP.getUserId(source)
    local inv = vRP.getInventory(user_id)
    if droplist[id] == nil then
        return
    else
        if vRP.computeInvWeight(user_id) + vRP.getItemWeight(tostring(droplist[id].item)) * amount <= vRP.getInventoryMaxWeight(user_id) then
            if droplist[id].count - amount >= 1 then
                TriggerClientEvent("itemdrop:Remove", -1, id)
                
                if vRP.hasPermission(userid,'policia.permissao') or vRP.hasPermission(userid,'policiaap.permissao') then
                    SendWebhookMessage(webh.logitemdropPolicia,"```prolog\n[ Policia PEGOU ][ JOGADOR ]: » "..user_id.."\n[ITEM] "..tostring(droplist[id].item).."\n [QUANTIDADE]: "..parseInt(amount).. ""..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
                end

                SendWebhookMessage(webh.logitemdrop,"```prolog\n[ PEGOU ][ JOGADOR ]: » "..user_id.."\n[ITEM] "..tostring(droplist[id].item).."\n [QUANTIDADE]: "..parseInt(amount).. ""..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
                TriggerClientEvent("vrp_sound:source",source,"slot",0.1)
                vRP.giveInventoryItem(user_id, tostring(droplist[id].item), parseInt(amount), true, slot)
                local newamount = droplist[id].count - amount
                vCLIENT.dropItem(source, droplist[id].item, newamount)
                vCLIENT.closeInventory(source)

                droplist[id] = nil
                idgens:free(id)

                return
            else

                TriggerClientEvent("itemdrop:Remove", -1, id)
                vCLIENT.closeInventory(source)
                SendWebhookMessage(webh.logitemdrop,"```prolog\n[ PEGOU ][ JOGADOR ]: » "..user_id.."\n[ITEM] "..tostring(droplist[id].item).."\n [QUANTIDADE]: "..parseInt(droplist[id].count).. ""..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
                TriggerClientEvent("vrp_sound:source",source,"slot",0.1)
                vRP.giveInventoryItem(user_id, tostring(droplist[id].item), parseInt(droplist[id].count), true, slot)

                droplist[id] = nil
                idgens:free(id)
            end
        else
            TriggerClientEvent("Notify", source, "negado", "Sua <b>Mochila</b> Cheia.", 5000)
        end
    end

    local nplayer = vRPclient.nearestPlayer(source, 5)
    if nplayer then
        TriggerClientEvent("vga_inventory:Update", nplayer, "updateMochila")
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYERSPAWN
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("vRP:playerSpawn", function(user_id, source)
    TriggerClientEvent("itemdrop:Update", source, droplist)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP_INVENTORY:CANCEL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("vrp_inventory:Cancel")
AddEventHandler("vrp_inventory:Cancel", function()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if active[user_id] ~= nil and active[user_id] > 0 then
            active[user_id] = nil
            TriggerClientEvent("Progress", source, 1500, "Cancelando...")

            SetTimeout(1000, function()
                vRPclient._removeObjects(source)
                vCLIENT.blockButtons(source, false)
                vGARAGE.updateHotwired(source, false)
            end)
        else
            vRPclient._removeObjects(source)
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECKINVENTORY
-----------------------------------------------------------------------------------------------------------------------------------------
function func.checkInventory()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if active[user_id] ~= nil and active[user_id] > 0 then
            return false
        end
        return true
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- GARMAS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('garmas',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	local rtime = math.random(3,8)
    local munni = ''

    local logweapons = ''
    local logammos = ''
    if checkpolice(user_id) then
        TriggerClientEvent("Notify",source,"aviso","<b>Aguarde!</b> Suas armas estão sendo desequipadas.",9500)
        TriggerClientEvent("progress",source,10000,"guardando")
        SetTimeout(1000*rtime,function()
            if user_id then
                local weapons = vRPclient.replaceWeapons(source,{})
                for k,v in pairs(weapons) do
                    vRP.giveInventoryItem(user_id,k,1)
                    logweapons = logweapons.." | "..k
                    if v.ammo > 0 then
                        for m,n in pairs(config.weapon_ammos) do
                            for t,j in pairs(n) do
                                if j == k then
                                    munni = m
                                    break
                                end
                            end
                        end
                        logammos = logammos.." | "..munni.." qnt "..v.ammo
                        vRP.giveInventoryItem(user_id,munni,v.ammo)
                    end
                end

                SendWebhookMessage(webh.loggarmas,"```prolog\n[ GARMAS ][ JOGADOR ]: » "..user_id.."\n[ARMA] "..logweapons.."\n [MUNNI]: "..logammos.. ""..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
                TriggerClientEvent("Notify",source,"sucesso","Guardou seu armamento na mochila.")
            end
        end)
    end
end)

function checkpolice(userr)
    if vRP.hasPermission(userr,"policia.permissao") then
        return false
    elseif vRP.hasPermission(userr,"policiapaisana.permissao") then
        return false
    end
    return true
end