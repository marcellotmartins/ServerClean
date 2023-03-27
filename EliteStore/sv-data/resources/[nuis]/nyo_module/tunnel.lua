local isServer = IsDuplicityVersion()
local TriggerInternalEvent = isServer and TriggerClientEvent or TriggerServerEvent
local CreateEvent = RegisterNetEvent
local pendingPromises = {}
local remoteFunctions = {}

if isServer then

    function TriggerRemoteEvent(src, name, ...)
        local key = #pendingPromises + 1
        local p = promise.new()
        pendingPromises[key] = { src = src, p = p }
        TriggerInternalEvent('nyo_module:handle_request', src, name, key, ...)
        return table.unpack(Citizen.Await(p))
    end

else
    function TriggerRemoteEvent(...)
        
    end
end

function RegisterRemoteEvent(name, func)
    if not remoteFunctions[name] then
        remoteFunctions[name] = func
    end
end

CreateEvent('nyo_module:handle_request',function(key,...)
    if isServer then
        TriggerInternalEvent('nyo_module:handle_response')
    else

    end
end)

CreateEvent('nyo_module:handle_response', function(key,...)
    if pendingPromises[key] then
        if isServer then
            local src = source
            if pendingPromises[key].src ~= source then
                error('hacker lixo')
            end
            pendingPromises[key].p:resolve({...})
        else
            pendingPromises[key].p:resolve({...})
        end
    end
end)