
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
cO = Tunnel.getInterface("elitestore")
vSERVER = Tunnel.getInterface(GetCurrentResourceName()) -- Pegando todas tabela que estiverem linkadas na interface

Citizen.CreateThread(function()
    ReplaceHudColourWithRgba(
        116,171,60,230,255 
    )
end)
 
  -----------------------------------------------------------------------------------------------------------------------------------------
  -- DENSITY NPCS 2
  -----------------------------------------------------------------------------------------------------------------------------------------
  CreateThread(function()
		AddTextEntry("FE_THDR_GTAO","Elite Store")
		StartAudioScene("CHARACTER_CHANGE_IN_SKY_SCENE")
		SetAudioFlag("PoliceScannerDisabled",true)
		SetTimecycleModifier('downtown_FIB_cascades_opt')
	  while true do
	  	Wait(1)
		  	SetPedDensityMultiplierThisFrame(11.0) -- Densidade de Peds
		  	SetVehicleDoorsLocked(1)
		  	SetVehicleDensityMultiplierThisFrame(10.05) -- Densidade de veículos
		  	SetSomeVehicleDensityMultiplierThisFrame(11.0)
		  	SetRandomVehicleDensityMultiplierThisFrame(11.0)
		  	SetParkedVehicleDensityMultiplierThisFrame(10.35)
		  	SetVehicleDoorsLockedForAllPlayers(true)
		  	SetScenarioPedDensityMultiplierThisFrame(1.0,1.0)

			SetRandomBoats(true)
			SetGarbageTrucks(true)
			SetCreateRandomCops(false)
			SetCreateRandomCopsOnScenarios(false)
			SetCreateRandomCopsNotOnScenarios(false)
			DisableVehicleDistantlights(false)


			SetRadarAsExteriorThisFrame()
			SetRadarAsInteriorThisFrame("h4_fake_islandx",vec(4700.0,-5145.0),0,0)
			DisableControlAction(1,44, true)
			DisableControlAction(0,36,true)
			DisableControlAction(1,157,false)
			DisableControlAction(1,158,false)
			DisableControlAction(1,160,false)
			DisableControlAction(1,164,false)
			DisableControlAction(1,165,false)
	
			SetPlayerHealthRechargeMultiplier(PlayerId(),0)
			SetPedConfigFlag(PlayerPedId(-1), 438, true)

	  end
  end)
--[ DISPATCH ]---------------------------------------------------------------------------------------------------------------------------

Citizen.CreateThread(function()
	for i = 1,120 do
		EnableDispatchService(i,false)
	end
end)

--[ CORONHADA E COVER ]----------------------------------------------------------------------------------------------------------------------------

Citizen.CreateThread(function()
    while true do
        local ot = 1000
    	local ped = PlayerPedId()
        if IsPedArmed(ped, 6) then
			ot = 5
       		DisableControlAction(1, 140, true)
            DisableControlAction(1, 141, true)
            DisableControlAction(1, 142, true)
        end
		Wait(1000)
    end
end)

--------------------------------------------------------------------------------------------------------------------------------------------------
-- Holograms
--------------------------------------------------------------------------------------------------------------------------------------------------

Citizen.CreateThread(function()
		while true do
		local ot = 1000
		local cordds = GetEntityCoords(GetPlayerPed(-1))
		if #(vector3(-1033.0, -2725.2, 13.61) - cordds) < 10.0 then
			ot = 5
			Draw3DText( -1033.0, -2725.2, 13.61  -1.400, "Seja Bem-Vindo(a) a (SUA CIDADE)!", 4, 0.1, 0.1)
			Draw3DText( -1033.0, -2725.2, 13.61  -1.600, "Viva Intensamente sua nova Vida!", 4, 0.1, 0.1)
			Draw3DText( -1033.0, -2725.2, 13.61  -1.800, "Dúvidas ou Sugestões nossos Canais estão abertos no Discord", 4, 0.1, 0.1)	
			Draw3DText( -1033.0, -2725.2, 13.61  -2.000, "Equipe (SUA CIDADE) deseja um Excelente RP!", 4, 0.1, 0.1)	
		end	
		if #(vector3(1118.16, 220.0, -49.43) - cordds) < 10.0 then
			ot = 5
			Draw3DText( 1118.16, 220.0, -49.43  -1.500, "Seja Bem-Vindo(a) ao (SUA CIDADE) Casino!", 4, 0.1, 0.05)
			Draw3DText( 1118.16, 220.0, -49.43  -1.600, "A esquerda você consegue Vender suas Fichas.", 4, 0.1, 0.05)
			Draw3DText( 1118.16, 220.0, -49.43  -1.700, "A Direita você consegue Comprar Fichas.", 4, 0.1, 0.05)
			Draw3DText( 1118.16, 220.0, -49.43  -1.800, "Aposte com responsabilidade e Divirta-se!", 4, 0.1, 0.05)	
		end	
		Wait(ot)
	end
end)

--[ BLIPS ]------------------------------------------------------------------------------------------------------------------------------

local blips = {}
Citizen.CreateThread(function()
	for _,v in pairs(blips) do
		local blip = AddBlipForCoord(v.x,v.y,v.z)
		SetBlipSprite(blip,v.sprite)
		SetBlipAsShortRange(blip,true)
		SetBlipColour(blip,v.color)
		SetBlipScale(blip,v.scale)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(v.nome)
		EndTextCommandSetBlipName(blip)
	end
end)

--[ TASERTIME ]--------------------------------------------------------------------------------------------------------------------------

local tasertime = false

Citizen.CreateThread(function()
	while true do
		local ot = 1000
		local ped = PlayerPedId()
		if IsPedBeingStunned(ped) then
			ot = 5
			SetPedToRagdoll(ped,10000,10000,0,0,0,0)
		end

		if IsPedBeingStunned(ped) and not tasertime then
			tasertime = true
			ot = 5
			SetTimecycleModifier("REDMIST_blend")
			ShakeGameplayCam("FAMILY5_DRUG_TRIP_SHAKE",1.0)
		elseif not IsPedBeingStunned(ped) and tasertime then
			tasertime = false
			SetTimeout(5000,function()
				SetTimecycleModifier("hud_def_desat_Trevor")
				SetTimeout(10000,function()
					SetTimecycleModifier("")
					SetTransitionTimecycleModifier("")
					StopGameplayCamShaking()
				end)
			end)
		end
		Wait(ot)
	end
end)


--[ DAMAGE WALK MODE ]-------------------------------------------------------------------------------------------------------------------

local hurt = false
Citizen.CreateThread(function()
	while true do
		local idle = 2000
		local ped = PlayerPedId()
		if not IsEntityInWater(ped) then
			if GetEntityHealth(ped) <= 199 then
				idle = 5
				setHurt()
			elseif hurt and GetEntityHealth(ped) > 200 then
				setNotHurt()
			end
		end
		Citizen.Wait(idle)
	end
end)

function setHurt()
    hurt = true
    RequestAnimSet("move_m@injured")
    SetPedMovementClipset(PlayerPedId(),"move_m@injured",true)
	SetPlayerHealthRechargeMultiplier(PlayerId(),0.0)
	DisableControlAction(0,21) 
	DisableControlAction(0,22)
end

function setNotHurt()
    hurt = false
	SetPlayerHealthRechargeMultiplier(PlayerId(),0.0)
    ResetPedMovementClipset(PlayerPedId())
    ResetPedWeaponMovementClipset(PlayerPedId())
    ResetPedStrafeClipset(PlayerPedId())
end


-----------------------------------------------------------------------------------------------------------------------------------------
-- STATUS DO DISCORD
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("elite_discord")
AddEventHandler("elite_discord", function(user_id)
    while true do
		SetDiscordAppId(830846909169008651) -- Aplication ID

		SetDiscordRichPresenceAsset('elitestore')  -- Imagem que vai aparecer no presence

        SetDiscordRichPresenceAssetText('NEW ELITE')
       
		SetDiscordRichPresenceAssetText('Compre sua NEW ELITE') -- Texto que vai aparecer ao passar o mouse em cima da imagem
 
		SetDiscordRichPresenceAssetSmallText('New Elite')

        SetDiscordRichPresenceAction(0, "Elite Store","https://elite-store.tebex.io/")

		SetDiscordRichPresenceAction(1, "Discord", "https://discord.gg/SjC4eEHAcD") -- Link do botão (Normalmente o LINK do discord)

        local playerCount = #GetActivePlayers() -- Pega os Players ativos na cidade
        
		local player = GetPlayerServerId(PlayerId()) -- Função para pegar o ID do player

        local playerName = GetPlayerName(PlayerId()) -- Função para pegar o Nome do player

        local maxPlayerSlots = "2048" -- Quantidade máxima de jogadores
		
		Citizen.Wait(10000) -- Quantidade de vezes que atualiza (configurado pra 1x por minuto)

        SetRichPresence(string.format("ID %s - %s \nMoradores %s/%s", user_id, playerName, playerCount,maxPlayerSlots))
	end
end)
--[ DRIFT ]------------------------------------------------------------------------------------------------------------------------------

Citizen.CreateThread(function()
	while true do
		local ped = PlayerPedId()
		local vehicle = GetVehiclePedIsIn(PlayerPedId())
		local idle = 1000
		if IsPedInAnyVehicle(ped) then
			local speed = GetEntitySpeed(vehicle)*2.236936
			if GetPedInVehicleSeat(vehicle,-1) == ped 
				and (GetEntityModel(vehicle) ~= GetHashKey("coach") 
				and GetEntityModel(vehicle) ~= GetHashKey("bus") 
				and GetEntityModel(vehicle) ~= GetHashKey("youga2") 
				and GetEntityModel(vehicle) ~= GetHashKey("ratloader") 
				and GetEntityModel(vehicle) ~= GetHashKey("taxi") 
				and GetEntityModel(vehicle) ~= GetHashKey("boxville4") 
				and GetEntityModel(vehicle) ~= GetHashKey("trash2") 
				and GetEntityModel(vehicle) ~= GetHashKey("tiptruck") 
				and GetEntityModel(vehicle) ~= GetHashKey("rebel") 
				and GetEntityModel(vehicle) ~= GetHashKey("speedo") 
				and GetEntityModel(vehicle) ~= GetHashKey("phantom") 
				and GetEntityModel(vehicle) ~= GetHashKey("packer") 
				and GetEntityModel(vehicle) ~= GetHashKey("paramedicoambu")) then
				idle = 5
				if speed <= 100.0 then
					if IsControlPressed(1,21) then
						SetVehicleReduceGrip(vehicle,true)
					else
						SetVehicleReduceGrip(vehicle,false)
					end
				end 
			end
		end
		Citizen.Wait(idle)
	end
end)


-------------------------------------------------------------------------------------------------------------------------
function Draw3DText(x,y,z,textInput,fontId,scaleX,scaleY)
	local px,py,pz=table.unpack(GetGameplayCamCoords())
	local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)    
	local scale = (1/dist)*20
	local fov = (1/GetGameplayCamFov())*100
	local scale = scale*fov   
	SetTextScale(scaleX*scale, scaleY*scale)
	SetTextFont(fontId)
	SetTextProportional(1)
	SetTextColour(255,110,0, 220)		-- You can change the text color here
	SetTextDropshadow(1, 1, 1, 1, 255)
	SetTextEdge(2, 0, 0, 0, 150)
	SetTextDropShadow()
	SetTextOutline()
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(textInput)
	SetDrawOrigin(x,y,z+2, 0)
	DrawText(0.0, 0.0)
	ClearDrawOrigin()
end