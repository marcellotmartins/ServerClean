-- local Tunnel = module("vrp","lib/Tunnel")
-- local Proxy = module("vrp","lib/Proxy")
-- local Tools = module("vrp","lib/Tools")
-- vRP = Proxy.getInterface("vRP")
-- vRPclient = Tunnel.getInterface("vRP")


-- --[ CONEXÃO ]----------------------------------------------------------------------------------------------------------------------------

-- src = {}
-- Tunnel.bindInterface("elitestore",src)
-- local idgens = Tools.newIDGenerator()

-- --[ function webhook ]-----------------------------------------------------------------------------------------------------------------------

-- function SendWebhookMessage(webhook,message)
-- 	if webhook ~= nil and webhook ~= "" then
-- 		PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
-- 	end
-- end
-----------------------------------------------------------------------------------------------------------------------------------------
-- 190
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('190', function(source, args, rawCommand)
    if not vRPclient.isHandcuffed(source) then
        local user_id = vRP.getUserId(source)
        if args[1] and vRP.hasPermission(user_id, "policia.permissao") then
            if user_id then
                TriggerClientEvent('chatMessage', -1, "Departamento Policial", {65, 130, 255}, rawCommand:sub(4))
                -- vRP.logs("logs/chat.log", "[ID]: " .. user_id .. " [FUNÇÃO]: 190 [MENSAGEM]: " .. rawCommand:sub(4))
                TriggerEvent("sendMessage", "chat", "> [ID]: " .. user_id .. " digitou [" .. rawCommand:sub(4) .. "].")
            end
        elseif args[1] and vRP.getInventoryItemAmount(user_id, "bloqueador") >= 1 then
            local identity = vRP.getUserIdentity(user_id)
            if user_id then
                TriggerClientEvent('chatMessage', -1, "Anônimo", {65, 130, 255}, rawCommand:sub(4))
                -- vRP.logs("logs/chat.log", "[ID]: " .. user_id .. " [FUNÇÃO]: 190 [MENSAGEM]: " .. rawCommand:sub(4))
                TriggerEvent("sendMessage", "chat", "> [ID]: " .. user_id .. " digitou [" .. rawCommand:sub(4) .. "].")
            end
        elseif args[1] then
            local identity = vRP.getUserIdentity(user_id)
            if user_id then
                TriggerClientEvent('chatMessage', -1, identity.name .. " " .. identity.firstname, {65, 130, 255},
                    rawCommand:sub(4))
                -- vRP.logs("logs/chat.log", "[ID]: " .. user_id .. " [FUNÇÃO]: 190 [MENSAGEM]: " .. rawCommand:sub(4))
                TriggerEvent("sendMessage", "chat", "> [ID]: " .. user_id .. " digitou [" .. rawCommand:sub(4) .. "].")
            end
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- 192
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('192', function(source, args, rawCommand)
    if not vRPclient.isHandcuffed(source) then
        local user_id = vRP.getUserId(source)
        if args[1] and vRP.hasPermission(user_id, "ems.permissao") then
            local identity = vRP.getUserIdentity(user_id)
            if user_id then
                TriggerClientEvent('chatMessage', -1, "Hospital", {255, 70, 70}, rawCommand:sub(4))
                -- vRP.logs("logs/chat.log", "[ID]: " .. user_id .. " [FUNÇÃO]: 192 [MENSAGEM]: " .. rawCommand:sub(4))
                TriggerEvent("sendMessage", "chat", "> [ID]: " .. user_id .. " digitou [" .. rawCommand:sub(4) .. "].")
            end
        elseif args[1] and vRP.getInventoryItemAmount(user_id, "bloqueador") >= 1 then
            local identity = vRP.getUserIdentity(user_id)
            if user_id then
                TriggerClientEvent('chatMessage', -1, "Anônimo", {255, 70, 70}, rawCommand:sub(4))
                -- vRP.logs("logs/chat.log", "[ID]: " .. user_id .. " [FUNÇÃO]: 192 [MENSAGEM]: " .. rawCommand:sub(4))
                TriggerEvent("sendMessage", "chat", "> [ID]: " .. user_id .. " digitou [" .. rawCommand:sub(4) .. "].")
            end
        elseif args[1] then
            local identity = vRP.getUserIdentity(user_id)
            if user_id then
                TriggerClientEvent('chatMessage', -1, identity.name .. " " .. identity.firstname, {255, 70, 70},
                    rawCommand:sub(4))
                -- vRP.logs("logs/chat.log", "[ID]: " .. user_id .. " [FUNÇÃO]: 192 [MENSAGEM]: " .. rawCommand:sub(4))
                TriggerEvent("sendMessage", "chat", "> [ID]: " .. user_id .. " digitou [" .. rawCommand:sub(4) .. "].")
            end
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- JORNAL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('news', function(source, args, rawCommand)
    if not vRPclient.isHandcuffed(source) then
        local user_id = vRP.getUserId(source)
        if args[1] and vRP.hasPermission(user_id, "jornal.anuncio") then
            if user_id then
                TriggerClientEvent('chatMessage', -1, "BTC NEWS", {216, 228, 116}, rawCommand:sub(4))
                -- vRP.logs("logs/chat.log", "[ID]: " .. user_id .. " [FUNÇÃO]: JORNAL [MENSAGEM]: " .. rawCommand:sub(4))
                TriggerEvent("sendMessage", "chat", "> [ID]: " .. user_id .. " digitou [" .. rawCommand:sub(4) .. "].")
            end
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- AEROCLUBE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('aero', function(source, args, rawCommand)
    if not vRPclient.isHandcuffed(source) then
        local user_id = vRP.getUserId(source)
        if args[1] and vRP.hasPermission(user_id, "aereo.licenca") then
            if user_id then
                TriggerClientEvent('chatMessage', -1, "AEROCLUBE", {160, 160, 160}, rawCommand:sub(5))
                -- vRP.logs("logs/chat.log", "[ID]: " .. user_id .. " [FUNÇÃO]: AERO [MENSAGEM]: " .. rawCommand:sub(5))
                TriggerEvent("sendMessage", "chat", "> [ID]: " .. user_id .. " digitou [" .. rawCommand:sub(5) .. "].")
            end
        end
    end
end)