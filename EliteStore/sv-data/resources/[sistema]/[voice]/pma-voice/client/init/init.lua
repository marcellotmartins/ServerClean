
AddEventHandler('onClientResourceStart', function(resource)
	if resource ~= GetCurrentResourceName() then
		return
	end
	print('Starting script initialization')

	-- Some people modify pma-voice and mess up the resource Kvp, which means that if someone
	-- joins another server that has pma-voice, it will error out, this will catch and fix the kvp.
	local success = pcall(function()
		local micClicksKvp = GetResourceKvpString('pma-voice_enableMicClicks')
		if not micClicksKvp then
			SetResourceKvp('pma-voice_enableMicClicks', tostring(true))
		else
			if micClicksKvp ~= 'true' and micClicksKvp ~= 'false' then
				error('Invalid Kvp, throwing error for automatic cleaning')
			end
			micClicks = micClicksKvp
		end
	end)

	if not success then
		logger.warn('Failed to load resource Kvp, likely was inappropriately modified by another server, resetting the Kvp.')
		SetResourceKvp('pma-voice_enableMicClicks', tostring(true))
		micClicks = 'true'
	end
	sendUIMessage({
		uiEnabled = GetConvarInt("voice_enableUi", 1) == 1,
		voiceModes = json.encode(Cfg.voiceModes),
		voiceMode = mode - 1
	})

	-- Reinitialize channels if they're set.
	if LocalPlayer.state.radioChannel ~= 0 then
		setRadioChannel(LocalPlayer.state.radioChannel)
	end

	if LocalPlayer.state.callChannel ~= 0 then
		setCallChannel(LocalPlayer.state.callChannel)
	end
	print('Script initialization finished.')
end)

local mutedAndDeafenByDeath = false

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		local ped = PlayerPedId()
		if not mutedAndDeafenByDeath and GetEntityHealth(ped) <= 101 then
			mutedAndDeafenByDeath = true
			TriggerServerEvent("custom_pma:mutePlayer", true)
			exports["pma-voice"]:removePlayerFromRadio()
			exports["pma-voice"]:setVoiceProperty('radioEnabled',false)
        	TriggerEvent("hud:RadioDisplay", 0)
			disableUpdates = true
			LocalPlayer.state:set('proximity', {
				index = 0,
				distance = 0.1,
				mode = 'Muted',
			}, GetConvarInt('voice_syncData', 1) == 1)
			MumbleSetAudioInputDistance(0.1)
			MumbleSetVoiceChannel(0)
			print('VOIP inativado')
			TriggerEvent('Notify','aviso','Você está mudo e surdo',30000)
		end

		if mutedAndDeafenByDeath and GetEntityHealth(ped) > 101 then
			mutedAndDeafenByDeath = false
			TriggerServerEvent("custom_pma:mutePlayer", false)
			disableUpdates = false
			local voiceModeData = Cfg.voiceModes[mode]
	LocalPlayer.state:set('proximity', {
		index = mode,
		distance =  voiceModeData[1],
		mode = voiceModeData[2],
	}, GetConvarInt('voice_syncData', 1) == 1)
	MumbleSetAudioInputDistance(Cfg.voiceModes[mode][1])
			MumbleSetVoiceChannel(GetPlayerServerId(PlayerId()))
			print('VOIP ativo novamente')
			TriggerEvent('Notify','aviso','Você consegue falar e ouvir novamente',30000)
			
		end
	end
end)