AddEventHandler("onClientResourceStart",function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end

    local mHash = GetHashKey("mp_m_freemode_01")

    RequestModel(mHash)
    while not HasModelLoaded(mHash) do
        Citizen.Wait(1)
    end

    if HasModelLoaded(mHash) then
        SetPlayerModel(PlayerId(),mHash)
        SetModelAsNoLongerNeeded(mHash)
        FreezeEntityPosition(PlayerPedId(),false)
    end

    TriggerEvent('playerSpawned')

    ShutdownLoadingScreen()
end)
