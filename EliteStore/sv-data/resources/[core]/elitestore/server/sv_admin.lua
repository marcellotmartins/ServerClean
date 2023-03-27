local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

--[ CONEXÃO ]-----------------------------------------------------------------------------------------------------------------

vRPidd = {}
Tunnel.bindInterface("elitestore",vRPidd)
Proxy.addInterface("elitestore",vRPidd)
IDDclient = Tunnel.getInterface("elitestore")

--[ WEBHOOK ]-----------------------------------------------------------------------------------------------------------------


vRP._prepare("creative/get_estoque","SELECT * FROM vrp_estoque WHERE vehicle = @vehicle")
vRP.prepare("creative/set_estoque","UPDATE vrp_estoque SET quantidade = @quantidade WHERE vehicle = @vehicle")

function SendWebhookMessage(webhook,message)
	if webhook ~= nil and webhook ~= "" then
		PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
	end
end


--[ RENOMEAR ]----------------------------------------------------------------------------------------------------------------

RegisterCommand('renomear',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)

    if vRP.hasPermission(user_id, "renomear.permissao") then
        local idjogador = vRP.prompt(source, "Qual id do jogador?", "")
        local nome = vRP.prompt(source, "Novo nome", "")
        local firstname = vRP.prompt(source, "Novo sobrenome", "")
        local idade = vRP.prompt(source, "Nova idade", "")
		local nuidentity = vRP.getUserIdentity(parseInt(idjogador))
		
        vRP.execute("vRP/update_user_identity",{
            user_id = idjogador,
            firstname = firstname,
            name = nome,
            age = idade,
            registration = nuidentity.registration,
            phone = nuidentity.phone
		})
		
		PerformHttpRequest(webh.logAdminRenomear, function(err, text, headers) end, 'POST', json.encode({
			embeds = {
				{ 	------------------------------------------------------------
					title = "REGISTRO DE ALTERAÇÃO IDENTIDADE⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
					thumbnail = {
						url = webh.img
					}, 
					fields = {
						{ 
							name = "**COLABORADOR DA EQUIPE:**",
							value = "**"..identity.name.." "..identity.firstname.."** [**"..user_id.."**]\n⠀"
						},
						{
							name = "**NOVOS DADOS DO RG:**",
							value = "**["..vRP.format(parseInt(idjogador)).."][ Nome: "..nome.." ][ Sobrenome: "..firstname.." ][ Idade: "..idade.." ]**\n⠀"
						}
					}, 
					footer = { 
						text = webh.text..os.date("%d/%m/%Y | %H:%M:%S"),
						icon_url = webh.img
					},
					color = 15906321 
				}
			}
		}), { ['Content-Type'] = 'application/json' })
    end
end)


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[ VROUPAS ]-----------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local player_customs = {}

RegisterCommand('vroupas2',function(source,args,rawCommand)
    local custom = vRPclient.getCustomization(source)
    if player_customs[source] then -- hide
      player_customs[source] = nil
      vRPclient._removeDiv(source,"customization")
    else -- show
      local content = ""
    for k,v in pairs(custom) do
        content = content..k.." => "..json.encode(v).."<br />" 
      end
        player_customs[source] = true
      vRPclient._setDiv(source,"customization",".div_customization{ margin: auto; padding: 8px; width: 500px; margin-top: 80px; background: black; color: white; font-weight: bold; ", content)
 end
end)


function IsNumber( numero )
    return tonumber(numero) ~= nil
end

RegisterCommand('vroupas', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"vroupas.permissao") then
        local custom = vRPclient.getCustomization(source)
        local content = ""
        for k, v in pairs(custom) do
            if (IsNumber(k) and k <= 11) or k == "p0" or k == "p1" or k == "p2" or k == "p6" or k == "p7" then
                if IsNumber(k) then
                    content = content .. '[' .. k .. '] = {' 
                else
                    content = content .. '["' ..k..'"] = {'
                end
                local contador = 1
                for y, x in pairs(v) do
                    if contador < #v then
                        content  = content .. x .. ',' 
                    else
                        content = content .. x 
                    end
                    contador = contador + 1
                end
                content = content .. "},\n"
            end                
        end
        player_customs[source] = true
        vRPclient.prompt(source, 'vRoupas: ', content)
    end
end)

--[ ADICIONAR CARRO ]---------------------------------------------------------------------------------------------------------
RegisterCommand("addcar",function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if user_id then
		if vRP.hasPermission(user_id,"addcar.permissao") then
			if parseInt(args[1]) > 0 and args[2] then
				vRP.execute("creative/add_vehicle",{ user_id = parseInt(args[1]), vehicle = args[2], ipva = parseInt(os.time()) })
				PerformHttpRequest(webh.logAdminAddcar, function(err, text, headers) end, 'POST', json.encode({
					embeds = {
						{ 	------------------------------------------------------------
							title = "REGISTRO DE CARRO ADICIONADO A PLAYER⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
							thumbnail = {
								url = webh.img
							}, 
							fields = {
								{ 
									name = "**COLABORADOR DA EQUIPE:**",
									value = "**"..identity.name.." "..identity.firstname.."** [**"..user_id.."**]\n⠀"
								},
								{
									name = "**INFORMAÇÕES:**",
									value = "**[ Modelo: "..args[2].." ][ Player ID: "..args[1].." ]**\n⠀"
								}
							}, 
							footer = { 
								text = webh.text..os.date("%d/%m/%Y | %H:%M:%S"),
								icon_url = webh.img
							},
							color = 15906321 
						}
					}
				}), { ['Content-Type'] = 'application/json' })
				TriggerClientEvent("Notify",source,"importante","Adicionou o veiculo: <b>"..args[2].."</b> no ID:<b>"..args[1].."</b.",5000)
				local nplayer = vRP.getUserSource(parseInt(args[1]))
				if nplayer then
					TriggerClientEvent("Notify",nplayer,"importante","Voce recebeu <b>"..args[2].."</b> em sua garagem.",5000)
				end
				--vRP.createWeebHook(webhookaddcar,"```prolog\n[ID]: "..user_id.."\n[ADICIONOU NO ID]: "..args[1].." \n[CARRO]: "..args[2].." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
			else
				TriggerClientEvent("Notify",source,"negado","Use /addcar (id) (veiculo)",5000)
			end
		end
	end
end)

--[ BAN ]---------------------------------------------------------------------------------------------------------------------

RegisterCommand('ban',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)

	if vRP.hasPermission(user_id,"administrador.permissao") or vRP.hasPermission(user_id,"manager.permissao") then
		if args[1] then
			local nuser_id = vRP.getUserSource(parseInt(args[1]))

			PerformHttpRequest(webh.logAdminBan, function(err, text, headers) end, 'POST', json.encode({
				embeds = {
					{ 
						title = "REGISTRO DE BANIMENTO:⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
						thumbnail = {
							url = webh.img
						}, 
						fields = {
							{ 
								name = "**COLABORADOR DA EQUIPE:**",
								value = "**"..identity.name.." "..identity.firstname.."** [**"..user_id.."**]\n⠀"
							},
							{
								name = "**ID BANIDO: **"..vRP.format(parseInt(args[1])),
								value = "⠀"
							}
						}, 
						footer = { 
							text = webh.text..os.date("%d/%m/%Y | %H:%M:%S"),
							icon_url = webh.img
						},
						color = 15906321 
					}
				}
			}), { ['Content-Type'] = 'application/json' })

			vRP.setBanned(parseInt(args[1]),true)
			vRP.kick(nuser_id,"Você foi banido! [ Mais informações em: discord.gg/Bp6ZMsS ]")

			TriggerClientEvent("Notify",source,"sucesso","Voce baniu o passaporte <b>"..args[1].."</b> da cidade.")
		end
	end
end)

--[ UNBAN ]-------------------------------------------------------------------------------------------------------------------

RegisterCommand('unban',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if vRP.hasPermission(user_id,"administrador.permissao") or vRP.hasPermission(user_id,"manager.permissao") then
		if args[1] then

			PerformHttpRequest(webh.logAdminUnBanchar, function(err, text, headers) end, 'POST', json.encode({
				embeds = {
					{ 
						title = 'REGISTRO DE DESBANIMENTO DO PERSONAGEM:⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀',
						thumbnail = {
							url = webh.img
						}, 
						fields = {
							{ 
								name = '**COLABORADOR DA EQUIPE:**',
								value = '**'..identity.name..' '..identity.firstname..'** [**'..user_id..'**]\n⠀'
							},
							{
								name = '**ID DO PERSONAGEM DESBANIDO: **'..vRP.format(parseInt(args[1])),
								value = '⠀'
							}
						}, 
						footer = { 
							text = webh.tex..os.date('%d/%m/%Y | %H:%M:%S'),
							icon_url = webh.img
						},
						color = webh.webhookColor 
					}
				}
			}), { ['Content-Type'] = 'application/json' })
			vRP.setBanned(parseInt(args[1]),false)
			TriggerClientEvent("Notify",source,"sucesso","Voce desbaniu o passaporte <b>"..args[1].."</b> da cidade.")
		end
	end
end)
--[ REMOVER CARRO ]-----------------------------------------------------------------------------------------------------------

RegisterCommand('remcar',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	local nplayer = vRP.getUserId(parseInt(args[1]))
	
    if vRP.hasPermission(user_id,"addcar.permissao") then
        if args[1] and args[2] then
            local nuser_id = vRP.getUserId(nplayer)
			local identitynu = vRP.getUserIdentity(nuser_id)
			
			PerformHttpRequest(webh.logAdminRemcar, function(err, text, headers) end, 'POST', json.encode({
				embeds = {
					{ 	------------------------------------------------------------
						title = "REGISTRO DE CARRO REMOVIDO DE PLAYER⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
						thumbnail = {
							url = webh.img
						}, 
						fields = {
							{ 
								name = "**COLABORADOR DA EQUIPE:**",
								value = "**"..identity.name.." "..identity.firstname.."** [**"..user_id.."**]\n⠀"
							},
							{
								name = "**INFORMAÇÕES:**",
								value = "**[ Modelo: "..args[2].." ][ Player ID: "..args[1].." ]**\n⠀"
							}
						}, 
						footer = { 
							text = webh.text..os.date("%d/%m/%Y | %H:%M:%S"),
							icon_url = webh.img
						},
						color = 15906321 
					}
				}
			}), { ['Content-Type'] = 'application/json' })

            vRP.execute("creative/rem_vehicle",{ user_id = parseInt(args[1]), vehicle = args[2], ipva = parseInt(os.time())  }) 
            TriggerClientEvent("Notify",source,"sucesso","Voce removeu o veículo <b>"..args[1].."</b> do Passaporte: <b>"..parseInt(args[2]).."</b>.")
        end
    end
end)


--[ UNCUFF ]------------------------------------------------------------------------------------------------------------------

RegisterCommand('uncuff',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.hasPermission(user_id,"uncuff.permissao") then
			TriggerClientEvent("admcuff",source)
		end
	end
end)

--[ SYNCAREA ]----------------------------------------------------------------------------------------------------------------

RegisterCommand('limpararea',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    local x,y,z = vRPclient.getPosition(source)
    if vRP.hasPermission(user_id,"geral.permissao") then
        TriggerClientEvent("syncarea",-1,x,y,z)
    end
end)

--[ TROCAR SEXO ]-------------------------------------------------------------------------------------------------------------

RegisterCommand('skin',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"skin.permissao") then
        if parseInt(args[1]) then
            local nplayer = vRP.getUserSource(parseInt(args[1]))
            if nplayer then
                TriggerClientEvent("skinmenu",nplayer,args[2])
                TriggerClientEvent("Notify",source,"sucesso","Voce setou a skin <b>"..args[2].."</b> no passaporte <b>"..parseInt(args[1]).."</b>.")
            end
        end
    end
end)

--[ DEBUG ]-------------------------------------------------------------------------------------------------------------------

RegisterCommand('debug',function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if user_id ~= nil then
		local player = vRP.getUserSource(user_id)
		if vRP.hasPermission(user_id,"geral.permissao") then
			TriggerClientEvent("ToggleDebug",player)
		end
	end
end)

--[ TRYDELETEOBJ ]------------------------------------------------------------------------------------------------------------

RegisterServerEvent("trydeleteobj")
AddEventHandler("trydeleteobj",function(index)
    TriggerClientEvent("syncdeleteobj",-1,index)
end)

--[ FIX ]---------------------------------------------------------------------------------------------------------------------

RegisterCommand("fix",function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.hasPermission(user_id,"fix.permissao") then
			SendWebhookMessage(webh.fix,"**O STAFF: ID "..user_id.." USOU O COMANDO /FIX [DATA] "..os.date("%H:%M:%S %d/%m/%Y").."**")
			local vehicle,vehNet = vRPclient.vehList(source,11)
			if vehicle then
				TriggerClientEvent("reparar",-1,vehNet,true)
				TriggerClientEvent("Notify",source,"aviso","Veículo totalmente arrumado.",3000)
			end
		end
	end
end)


--[ REVIVER ]-----------------------------------------------------------------------------------------------------------------
RegisterCommand('setarvida',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local valor = parseInt(args[1])

	if args[1] and args[2] then 
		local psource = vRP.getUserSource(parseInt(args[1]))
		player = psource
		user_id = parseInt(args[1])
		valor = parseInt(args[2])
	else 
		player = source
	end 
	vRPclient.setHealth(player,valor)
	TriggerClientEvent('Notify',source,'sucesso','A vida foi alterada para: '..valor..', No Player: '..user_id)
end)


RegisterCommand('godc',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
    if vRP.hasPermission(user_id,"god.permissao") then
        if args[1] then
			local nplayer = vRP.getUserSource(parseInt(args[1]))
			if nplayer then
				local nuser_id = vRP.getUserId(nplayer)
				local identitynu = vRP.getUserIdentity(nuser_id)

				PerformHttpRequest(webh.logAdminReviver, function(err, text, headers) end, 'POST', json.encode({
					embeds = {
						{ 	------------------------------------------------------------
							title = "REGISTRO DE REVIVER com colete⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
							thumbnail = {
								url = webh.img
							}, 
							fields = {
								{ 
									name = "**COLABORADOR DA EQUIPE:**",
									value = "**"..identity.name.." "..identity.firstname.."** [**"..user_id.."**]\n⠀"
								},
								{
									name = "**INFORMAÇÕES DO PLAYER REVIVIDO:**",
									value = "**"..identitynu.name.." "..identitynu.firstname.."** [**"..nuser_id.."**]\n⠀"
								}
							}, 
							footer = { 
								text = webh.text..os.date("%d/%m/%Y | %H:%M:%S"),
								icon_url = webh.img
							},
							color = 15906321 
						}
					}
				}), { ['Content-Type'] = 'application/json' })
				TriggerClientEvent('godblur',nplayer)
                vRPclient.killGod(nplayer)
				vRP.setHunger(nuser_id,0)
                vRP.setThirst(nuser_id,0)
				vRPclient.setArmour(nplayer,100)
				vRPclient.setHealth(nplayer,400)
            end
		else
			PerformHttpRequest(webh.logAdminReviver, function(err, text, headers) end, 'POST', json.encode({
				embeds = {
					{ 	------------------------------------------------------------
					title = "REGISTRO DE REVIVER com colete⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
						thumbnail = {
							url = webh.img
						}, 
						fields = {
							{ 
								name = "**COLABORADOR DA EQUIPE:**",
								value = "**"..identity.name.." "..identity.firstname.."** [**"..user_id.."**]\n⠀"
							}
						}, 
						footer = { 
							text = webh.text..os.date("%d/%m/%Y | %H:%M:%S"),
							icon_url = webh.img
						},
						color = 15906321 
					}
				}
			}), { ['Content-Type'] = 'application/json' })
			
			TriggerClientEvent('godblur',source)
            vRPclient.killGod(source)
			vRP.setHunger(user_id,0)
			vRP.setThirst(user_id,0)
			vRPclient.setArmour(source,100)
			vRPclient.setHealth(source,400)
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CAR COLOR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('carcolor',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"geral.permissao") then
        local vehicle = vRPclient.getNearestVehicle(source,7)
        if vehicle then
            local rgb = vRP.prompt(source,"RGB Color(255 255 255):","")
            rgb = sanitizeString(rgb,"\"[]{}+=?!_()#@%/\\|,.",false)
            local r,g,b = table.unpack(splitString(rgb," "))
            TriggerClientEvent('vcolorv',source,vehicle,tonumber(r),tonumber(g),tonumber(b))
			SendWebhookMessage(webh.carcolor,"**O : ID "..user_id.." USOU O COMANDO /carcolor [DATA] "..os.date("%H:%M:%S %d/%m/%Y").."**")
            TriggerClientEvent("Notify",source,"sucesso","Cor alterada")
        end
    end
end)

RegisterCommand('car',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if user_id then
		local identity = vRP.getUserIdentity(user_id)
	   if vRP.hasPermission(user_id,"manager.permissao") then
			if args[1] then
			   
			   
				PerformHttpRequest(webh.spawnvehicle, function(err, text, headers) end, 'POST', json.encode({
					embeds = {
						{ 
							title = "REGISTRO DE SPAWNCAR⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
							thumbnail = {
								url = webh.img
							}, 
							fields = {
								{ 
									name = "**COLABORADOR DA EQUIPE:**",
									value = "**"..identity.name.." "..identity.firstname.."** [**"..user_id.."**]\n⠀"
								},
								{
									name = "**CARRO SPAWNADO: **"..args[1],
									value = "⠀"
								}
							}, 
							footer = { 
								text = webh.text..os.date("%d/%m/%Y | %H:%M:%S"),
								icon_url = webh.img
							},
							color = 16431885 
						}
					}
				}), { ['Content-Type'] = 'application/json' })

				TriggerClientEvent('spawnarveiculo444',source,args[1])
				TriggerEvent("setPlateEveryone",identity.registration)
			end
		end
	end
end)

--[ REVIVER ]-----------------------------------------------------------------------------------------------------------------

RegisterCommand('god',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)

    if vRP.hasPermission(user_id,"god.permissao") then
        if args[1] then
			local nplayer = vRP.getUserSource(parseInt(args[1]))
			if nplayer then
				local nuser_id = vRP.getUserId(nplayer)
				local identitynu = vRP.getUserIdentity(nuser_id)

				PerformHttpRequest(webh.logAdminReviver, function(err, text, headers) end, 'POST', json.encode({
					embeds = {
						{ 	------------------------------------------------------------
							title = "REGISTRO DE REVIVER⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
							thumbnail = {
								url = webh.img
							}, 
							fields = {
								{ 
									name = "**COLABORADOR DA EQUIPE:**",
									value = "**"..identity.name.." "..identity.firstname.."** [**"..user_id.."**]\n⠀"
								},
								{
									name = "**INFORMAÇÕES DO PLAYER REVIVIDO:**",
									value = "**"..identitynu.name.." "..identitynu.firstname.."** [**"..nuser_id.."**]\n⠀"
								}
							}, 
							footer = { 
								text = webh.text..os.date("%d/%m/%Y | %H:%M:%S"),
								icon_url = webh.img
							},
							color = 15906321 
						}
					}
				}), { ['Content-Type'] = 'application/json' })
				TriggerClientEvent('godblur',nplayer)
                vRPclient.killGod(nplayer)
				TriggerClientEvent('cancelando',nplayer,false)
				vRPclient.setHealth(nplayer,400)
            end
		else
			PerformHttpRequest(webh.logAdminReviver, function(err, text, headers) end, 'POST', json.encode({
				embeds = {
					{ 	------------------------------------------------------------
						title = "REGISTRO DE REVIVER⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
						thumbnail = {
							url = webh.img
						}, 
						fields = {
							{ 
								name = "**COLABORADOR DA EQUIPE:**",
								value = "**"..identity.name.." "..identity.firstname.."** [**"..user_id.."**]\n⠀"
							}
						}, 
						footer = { 
							text = webh.text..os.date("%d/%m/%Y | %H:%M:%S"),
							icon_url = webh.img
						},
						color = 15906321 
					}
				}
			}), { ['Content-Type'] = 'application/json' })
			TriggerClientEvent('godblur',source)
            vRPclient.killGod(source)
			TriggerClientEvent('cancelando',source,false)
			vRPclient.setHealth(source,400)
        end
    end
end)

--[ REVIVER ALL ]-------------------------------------------------------------------------------------------------------------

RegisterCommand('godall',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
    if vRP.hasPermission(user_id,"godall.permissao") then
    	local users = vRP.getUsers()
        for k,v in pairs(users) do
            local id = vRP.getUserSource(parseInt(k))
            if id then
				TriggerClientEvent('godblur',source)
				TriggerClientEvent('godblur',id)
				TriggerClientEvent('godblur',users)
            	vRPclient.killGod(id)
				vRPclient.setHealth(id,400)
            end
		end
		
		PerformHttpRequest(webh.logAdminReviver, function(err, text, headers) end, 'POST', json.encode({
			embeds = {
				{ 	------------------------------------------------------------
					title = "REGISTRO DE REVIVER TODOS⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
					thumbnail = {
						url = webh.img
					}, 
					fields = {
						{ 
							name = "**COLABORADOR DA EQUIPE:**",
							value = "**"..identity.name.." "..identity.firstname.."** [**"..user_id.."**]\n⠀"
						}
					}, 
					footer = { 
						text = webh.text..os.date("%d/%m/%Y | %H:%M:%S"),
						icon_url = webh.img
					},
					color = 15906321 
				}
			}
		}), { ['Content-Type'] = 'application/json' })
    end
end)

--[ HASH ]--------------------------------------------------------------------------------------------------------------------

RegisterCommand('hash',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"geral.permissao") then
		TriggerClientEvent('vehash',source)
	end
end)

--[ TUNING ]------------------------------------------------------------------------------------------------------------------

RegisterCommand('tuning',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"tuning.permissao")then
		TriggerClientEvent('vehtuning',source)
	end
end)

--[ WL ]----------------------------------------------------------------------------------------------------------------------
RegisterCommand('wl',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id) 
    if vRP.hasPermission(user_id,"wl.permissao") then
		if args[1] then
			
			PerformHttpRequest(webh.logAdminWhitelist, function(err, text, headers) end, 'POST', json.encode({
				embeds = {
					{ 	
						title = "NOVO ID ADICIONADO A WHITELIST⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
						thumbnail = {
							url = webh.img
						}, 
						fields = {
							{ 
								name = "**COLABORADOR DA EQUIPE:**",
								value = "**"..identity.name.." "..identity.firstname.."** [**"..user_id.."**]\n⠀"
							},
							{
								name = "**ID ADICIONADO: **"..vRP.format(parseInt(args[1])),
								value = "⠀"
							}
						}, 
						footer = { 
							text = webh.text..os.date("%d/%m/%Y | %H:%M:%S"),
							icon_url = webh.img
						},
						color = 15906321 
					}
				}
			}), { ['Content-Type'] = 'application/json' })

            vRP.setWhitelisted(parseInt(args[1]),true)
            TriggerClientEvent("Notify",source,"sucesso","Você aprovou o passaporte <b>"..args[1].."</b> na whitelist.")
        end
    end
end)

--[ UNWL ]--------------------------------------------------------------------------------------------------------------------

RegisterCommand('unwl',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if vRP.hasPermission(user_id,"wl.permissao") then
		if args[1] then

			PerformHttpRequest(webh.logAdminUnWhitelist, function(err, text, headers) end, 'POST', json.encode({
				embeds = {
					{ 
						title = "ID REMOVIDO DA WHITELIST⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
						thumbnail = {
							url = webh.img
						}, 
						fields = {
							{ 
								name = "**COLABORADOR DA EQUIPE:**",
								value = "**"..identity.name.." "..identity.firstname.."** [**"..user_id.."**]\n⠀"
							},
							{
								name = "**ID REMOVIDO: **"..vRP.format(parseInt(args[1])),
								value = "⠀"
							}
						}, 
						footer = { 
							text = webh.text..os.date("%d/%m/%Y | %H:%M:%S"),
							icon_url = webh.img
						},
						color = 15906321 
					}
				}
			}), { ['Content-Type'] = 'application/json' })

			vRP.setWhitelisted(parseInt(args[1]),false)
			TriggerClientEvent("Notify",source,"sucesso","Você retirou o passaporte <b>"..args[1].."</b> da whitelist.")
		end
	end
end)

--[ KICK ]--------------------------------------------------------------------------------------------------------------------

RegisterCommand('kick',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if vRP.hasPermission(user_id,"kick.permissao") then
		if args[1] then
			local id = vRP.getUserSource(parseInt(args[1]))
			if id then

				PerformHttpRequest(webh.logAdminKick, function(err, text, headers) end, 'POST', json.encode({
					embeds = {
						{ 	------------------------------------------------------------
							title = "REGISTRO DE KICK⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
							thumbnail = {
								url = webh.img
							}, 
							fields = {
								{ 
									name = "**COLABORADOR DA EQUIPE:**",
									value = "**"..identity.name.." "..identity.firstname.."** [**"..user_id.."**]\n⠀"
								},
								{
									name = "**ID KIKADO: **"..vRP.format(parseInt(args[1])),
									value = "⠀"
								}
							}, 
							footer = { 
								text = webh.text..os.date("%d/%m/%Y | %H:%M:%S"),
								icon_url = webh.img
							},
							color = 15906321 
						}
					}
				}), { ['Content-Type'] = 'application/json' })

				vRP.kick(id,"Você foi expulso da cidade.")
				TriggerClientEvent("Notify",source,"sucesso","Voce kickou o passaporte <b>"..args[1].."</b> da cidade.")
			end
		end
	end
end)
--[ Verificar casas do player ]----------------------------------------------------------------------------------------------------------------
RegisterCommand('homes',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if user_id then
        if vRP.hasPermission(user_id,"geral.permissao") then
            local nuser_id = parseInt(args[1])
            local identity = vRP.getUserIdentity(nuser_id)
            TriggerClientEvent("Notify",source,"sucesso","Casas do passaporte: <b>"..nuser_id.." "..identity.name.." "..identity.firstname.."</b>",20000)
            if nuser_id then 
                local homes = vRP.query("homes/get_homeuserid",{ user_id = parseInt(nuser_id) })
                for k,v in pairs(homes) do
                    TriggerClientEvent("Notify",source,"aviso","<b>Casa:</b> "..tostring(v.home),20000)
                end
            end
        end
    end
end)

--[ KICK ALL ]----------------------------------------------------------------------------------------------------------------

RegisterCommand('kickall',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	
    if vRP.hasPermission(user_id,"kickall.permissao") then
        local users = vRP.getUsers()
        for k,v in pairs(users) do
            local id = vRP.getUserSource(parseInt(k))
            if id then
                vRP.kick(id,"Você foi vitima do terremoto.")
            end
		end
		
		PerformHttpRequest(webh.logAdminKick, function(err, text, headers) end, 'POST', json.encode({
			embeds = {
				{ 	------------------------------------------------------------
					title = "REGISTRO DE KICKAR TODOS⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
					thumbnail = {
						url = webh.img
					}, 
					fields = {
						{ 
							name = "**COLABORADOR DA EQUIPE:**",
							value = "**"..identity.name.." "..identity.firstname.."** [**"..user_id.."**]\n⠀"
						}
					}, 
					footer = { 
						text = webh.text..os.date("%d/%m/%Y | %H:%M:%S"),
						icon_url = webh.img
					},
					color = 15906321 
				}
			}
		}), { ['Content-Type'] = 'application/json' })
    end
end)

--[ MONEY ]-------------------------------------------------------------------------------------------------------------------

RegisterCommand('moneyc',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if vRP.hasPermission(user_id,"manager.permissao") then
		if args[1] then

			PerformHttpRequest(webh.logAdminMoney, function(err, text, headers) end, 'POST', json.encode({
				embeds = {
					{ 	-----------------------------------------------------------
						title = "REGISTRO DE ADIÇÃO DE DINHEIRO BANCO:⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
						thumbnail = {
							url = webh.img
						}, 
						fields = {
							{ 
								name = "**COLABORADOR DA EQUIPE:**",
								value = "**"..identity.name.." "..identity.firstname.."** [**"..user_id.."**]\n⠀"
							},
							{
								name = "**VALOR: **"..vRP.format(parseInt(args[1])),
								value = "⠀"
							}
						}, 
						footer = { 
							text = webh.text..os.date("%d/%m/%Y | %H:%M:%S"),
							icon_url = webh.img
						},
						color = 15906321 
					}
				}
			}), { ['Content-Type'] = 'application/json' })

			vRP.giveBankMoney(user_id,parseInt(args[1]))
			TriggerClientEvent('Notify', source, 'sucesso', 'Você setou <b>'..args[1]..'</b>.')
		
		end
	end
end)

--[ NC ]----------------------------------------------------------------------------------------------------------------------

RegisterCommand('nc',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)

	if vRP.hasPermission(user_id,"noclip.permissao") then
		
		PerformHttpRequest(webh.logAdminNc, function(err, text, headers) end, 'POST', json.encode({
			embeds = {
				{ 	------------------------------------------------------------
					title = "REGISTRO DE NC⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
					thumbnail = {
						url = webh.img
					}, 
					fields = {
						{ 
							name = "**COLABORADOR DA EQUIPE:**",
							value = "**"..identity.name.." "..identity.firstname.."** [**"..user_id.."**]\n⠀"
						}
					}, 
					footer = { 
						text = webh.text..os.date("%d/%m/%Y | %H:%M:%S"),
						icon_url = webh.img
					},
					color = 15906321
				}
			}
		}), { ['Content-Type'] = 'application/json' })
		
		vRPclient.toggleNoclip(source)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /a
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("a",function(source,args,rawCommand)
	local source = source
	local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"geral.permissao") then
		if args[1] == "rayp" then
			vRPclient.giveWeapons(source,{["WEAPON_RAYPISTOL"] = { ammo = 0 }})	
		elseif args[1] == "fire" then
			vRPclient.giveWeapons(source,{["WEAPON_FIREWORK"] = { ammo = 250 }})
		elseif args[1] == "sniper" then
			vRPclient.giveWeapons(source,{["WEAPON_HEAVYSNIPER_MK2"] = { ammo = 250 }})
		elseif args[1] == "appistol" then
			vRPclient.giveWeapons(source,{["WEAPON_APPISTOL"] = { ammo = 250 }})
		elseif args[1] == "gas" then
			vRPclient.giveWeapons(source,{["WEAPON_BZGAS"] = { ammo = 20 }})
		end
	end
end)

--[ TPCDS ]-------------------------------------------------------------------------------------------------------------------

RegisterCommand('tpcds',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"teleport.permissao") then
		local fcoords = vRP.prompt(source,"Cordenadas:","")
		if fcoords == "" then
			return
		end
		local coords = {}
		for coord in string.gmatch(fcoords or "0,0,0","[^,]+") do
			table.insert(coords,parseInt(coord))
		end

		vRPclient.teleport(source,coords[1] or 0,coords[2] or 0,coords[3] or 0)
	end
end)

--[ COORDENADAS ]-------------------------------------------------------------------------------------------------------------
RegisterCommand('cdsn',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"geral.permissao") then
        local x,y,z = vRPclient.getPosition(source)
        local heading = vRPclient.getUserHeading(source)
		local lugar = vRP.prompt(source,"Lugar:","vector3("..tD(x)..","..tD(y)..","..tD(z).."), h = "..tD(heading).."")
		if lugar == "" then
			return
		end
	end
end)

RegisterCommand('cds',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"geral.permissao") then
		local x,y,z = vRPclient.getPosition(source)
		heading = GetEntityHeading(GetPlayerPed(-1))
		vRP.prompt(source,"Cordenadas:","['x'] = "..tD(x)..", ['y'] = "..tD(y)..", ['z'] = "..tD(z))
	end
end)

RegisterCommand('cds2',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"geral.permissao") then
		local x,y,z = vRPclient.getPosition(source)
		vRP.prompt(source,"Cordenadas:",tD(x)..", "..tD(y)..", "..tD(z))
	end
end)

RegisterCommand('cds3',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"geral.permissao") then
		local x,y,z = vRPclient.getPosition(source)
		vRP.prompt(source,"Cordenadas:","{name='ATM', id=277, x="..tD(x)..", y="..tD(y)..", z="..tD(z).."},")
	end
end)

RegisterCommand('cds4',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"geral.permissao") then
		local x,y,z = vRPclient.getPosition(source)
		vRP.prompt(source,"Cordenadas:","x = "..tD(x)..", y = "..tD(y)..", z = "..tD(z))
	end
end)

--[ 'GROUP ]-------------------------------------------------------------------------------------------------------------------

RegisterCommand('group', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	local nplayer = vRP.getUserSource(parseInt(args[1]))
	if vRP.hasPermission(user_id, 'group.permissao') then
		if args[1] and args[2] then
			vRP.addUserGroup(parseInt(args[1]), args[2])
			
			TriggerClientEvent('Notify', source, 'sucesso', 'Voce setou o passaporte <b>'..parseInt(args[1])..'</b> no grupo <b>'..args[2]..'</b>.')

			PerformHttpRequest(webh.logGroup, function(err, text, headers) end, 'POST', json.encode({
				embeds = {
					{ 	-----------------------------------------------------------
						title = "REGISTRO DE /GROUP:⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
						thumbnail = {
							url = webh.img
						}, 
						fields = {
							{ 
								name = "**COLABORADOR DA EQUIPE:**",
								value = "**"..identity.name.." "..identity.firstname.."** [**"..user_id.."**]\n⠀"
							},
							{
								name = "**USER: **"..args[1].." SET: "..args[2],
								value = "⠀"
							}
						}, 
						footer = { 
							text = webh.text..os.date("%d/%m/%Y | %H:%M:%S"),
							icon_url = webh.img
						},
						color = 15906321 
					}
				}
			}), { ['Content-Type'] = 'application/json' })
		end
	end
end)

--[ UNGROUP ]-----------------------------------------------------------------------------------------------------------------

RegisterCommand('ungroup', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if vRP.hasPermission(user_id, 'group.permissao') then
		if args[1] and args[2] then
			vRP.removeUserGroup(parseInt(args[1]), args[2])

			TriggerClientEvent('Notify', source, 'sucesso', 'Voce removeu o passaporte <b>'..parseInt(args[1])..'</b> do grupo <b>'..args[2]..'</b>.')

				PerformHttpRequest(webh.logunGroup, function(err, text, headers) end, 'POST', json.encode({
					embeds = {
						{ 	-----------------------------------------------------------
							title = "REGISTRO DE /UNGROUP:⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
							thumbnail = {
								url = webh.img
							}, 
							fields = {
								{ 
									name = "**COLABORADOR DA EQUIPE:**",
									value = "**"..identity.name.." "..identity.firstname.."** [**"..user_id.."**]\n⠀"
								},
								{
									name = "**USER: **"..args[1].." SET: "..args[2],
									value = "⠀"
								}
							}, 
							footer = { 
								text = webh.text..os.date("%d/%m/%Y | %H:%M:%S"),
								icon_url = webh.img
							},
							color = 15906321 
						}
					}
				}), { ['Content-Type'] = 'application/json' })
		end
	end
end)

--[ TPTOME ]------------------------------------------------------------------------------------------------------------------

RegisterCommand('tptome',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if vRP.hasPermission(user_id,"teleport.permissao") then
		if args[1] then
			local tplayer = vRP.getUserSource(parseInt(args[1]))
			local x,y,z = vRPclient.getPosition(source)
			if tplayer then

				PerformHttpRequest(webh.logAdminTps, function(err, text, headers) end, 'POST', json.encode({
					embeds = {
						{ 	------------------------------------------------------------
							title = "REGISTRO DE TPTOME⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
							thumbnail = {
								url = webh.img
							}, 
							fields = {
								{ 
									name = "**COLABORADOR:**",
									value = "**"..identity.name.." "..identity.firstname.."** [**"..user_id.."**]\n⠀"
								},
								{ 
									name = "**ID DO PLAYER PUXADO: **"..args[1],
									value = "⠀"
								}
							}, 
							footer = { 
								text = webh.text..os.date("%d/%m/%Y | %H:%M:%S"),
								icon_url = webh.img
							},
							color = 15906321
						}
					}
				}), { ['Content-Type'] = 'application/json' })

				vRPclient.teleport(tplayer,x,y,z)
			end
		end
	end
end)

--[ TPTO ]--------------------------------------------------------------------------------------------------------------------

RegisterCommand('tpto',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if vRP.hasPermission(user_id,"teleport.permissao") then
		if args[1] then
			local tplayer = vRP.getUserSource(parseInt(args[1]))
			if tplayer then
				PerformHttpRequest(webh.logAdminTps, function(err, text, headers) end, 'POST', json.encode({
					embeds = {
						{ 	------------------------------------------------------------
							title = "REGISTRO DE TPTO⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
							thumbnail = {
								url = webh.img
							}, 
							fields = {
								{ 
									name = "**COLABORADOR:**",
									value = "**"..identity.name.." "..identity.firstname.."** [**"..user_id.."**]\n⠀"
								},
								{ 
									name = "**ID DO PLAYER: **"..args[1],
									value = "⠀"
								}
							}, 
							footer = { 
								text = webh.text..os.date("%d/%m/%Y | %H:%M:%S"),
								icon_url = webh.img
							},
							color = 15906321
						}
					}
				}), { ['Content-Type'] = 'application/json' })

				vRPclient.teleport(source,vRPclient.getPosition(tplayer))
			end
		end
	end
end)

--[ TPWAY ]-------------------------------------------------------------------------------------------------------------------

RegisterCommand('tpway',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)

	if vRP.hasPermission(user_id,"teleport.permissao") then
		
		PerformHttpRequest(webh.logAdminTps, function(err, text, headers) end, 'POST', json.encode({
			embeds = {
				{ 	------------------------------------------------------------
					title = "REGISTRO DE TPWAY⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
					thumbnail = {
						url = webh.img
					}, 
					fields = {
						{ 
							name = "**COLABORADOR:**",
							value = "**"..identity.name.." "..identity.firstname.."** [**"..user_id.."**]\n⠀"
						}
					}, 
					footer = { 
						text = webh.text..os.date("%d/%m/%Y | %H:%M:%S"),
						icon_url = webh.img
					},
					color = 15906321
				}
			}
		}), { ['Content-Type'] = 'application/json' })

		TriggerClientEvent('tptoway',source)
	end
end)

--[ DELNPCS ]-----------------------------------------------------------------------------------------------------------------

RegisterCommand('delnpcs',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"geral.permissao") then
		TriggerClientEvent('delnpcs',source)
	end
end)

--[ ADM ]---------------------------------------------------------------------------------------------------------------------

RegisterCommand('anuncio',function(source,args,rawCommand)
	local source = source
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if vRP.hasPermission(user_id,"geral.permissao") then
		local mensagem = vRP.prompt(source,"Mensagem:","")
		if mensagem == "" then
			return
		end
		
		PerformHttpRequest(webh.logAdminAnuncio, function(err, text, headers) end, 'POST', json.encode({
			embeds = {
				{ 	------------------------------------------------------------
					title = "REGISTRO DE ANUNCIOS⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
					thumbnail = {
						url = webh.img
					}, 
					fields = {
						{ 
							name = "**COLABORADOR DA EQUIPE:**",
							value = "**"..identity.name.." "..identity.firstname.."** [**"..user_id.."**]\n⠀"
						},
						{
							name = "**ANÚNCIO:**",
							value = "**"..mensagem.."**\n⠀"
						}
					}, 
					footer = { 
						text = webh.text..os.date("%d/%m/%Y | %H:%M:%S"),
						icon_url = webh.img
					},
					color = 15906321 
				}
			}
		}), { ['Content-Type'] = 'application/json' })
		
		vRPclient.setDiv(-1,"anuncio",".div_anuncio { background: rgba(255,50,50,0.8); font-size: 11px; font-family: arial; color: #fff; padding: 20px; bottom: 250px; right: 20px; max-width: 500px; position: absolute; -webkit-border-radius: 5px; } bold { font-size: 16px; }","<bold>"..mensagem.."</bold><br><br>Mensagem enviada por: Administrador")
		SetTimeout(20000,function()
			vRPclient.removeDiv(-1,"anuncio")
		end)
	end
end)


--[ PLAYERSON ]---------------------------------------------------------------------------------------------------------------

RegisterCommand('pon',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"geral.permissao") then
        local users = vRP.getUsers()
        local players = ""
		local quantidade = 0
		
        for k,v in pairs(users) do
            if k ~= #users then
                players = players
			end
			
            players = players.." | "..k
            quantidade = quantidade + 1
		end
		
        TriggerClientEvent('chatMessage',source,"TOTAL ONLINE",{255,160,0},quantidade)
        TriggerClientEvent('chatMessage',source,"ID's ONLINE",{255,160,0},players)
    end
end)

function tD(n)
    n = math.ceil(n * 100) / 100
    return n
end

RegisterCommand("limparinv",function(source,args,rawCommand)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.hasPermission(user_id,'limparinv.permissao') then
			if args[1] then
				local nuser_id = parseInt(args[1])
				local myInv = vRP.getInventory(nuser_id)
				for k,v in pairs(myInv) do
					vRP.tryGetInventoryItem(nuser_id, v.item, parseInt(v.amount))
				end
			else
				local myInv = vRP.getInventory(user_id)
				for k,v in pairs(myInv) do
					vRP.tryGetInventoryItem(user_id, v.item, parseInt(v.amount))
				end
			end
		end
	end
end)

------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- STATUS
------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('status',function(source,args,rawCommand)
	local onlinePlayers = GetNumPlayerIndices()
	local policia = vRP.getUsersByPermission("policia.permissao")
	local paramedico = vRP.getUsersByPermission("ems.permissao")
	local mec = vRP.getUsersByPermission("mecanico.permissao")
	local staff = vRP.getUsersByPermission("geral.permissao")
	local user_id = vRP.getUserId(source)
	TriggerClientEvent("Notify",source,"aviso","<bold><b>Jogadores</b>: <b>"..onlinePlayers.."<br>Administração</b>: <b>"..#staff.."<br>Policiais</b>: <b>"..#policia.."<br>Paramédicos</b>: <b>"..#paramedico.."<br>Mecânicos</b> em serviço: <b>"..#mec.."</b></bold>.",9000)
end)


-----------------------------------------------------------------------------------------------------------------------------------------
---- resetar personagem
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('reset',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if user_id then
        if vRP.hasPermission(user_id,"reset.permissao") then
			SendWebhookMessage(webh.resetarperson,"**O STAFF: ID "..user_id.." USOU O COMANDO /reset para resetar um personagem [DATA] "..os.date("%H:%M:%S %d/%m/%Y").."**")
            if args[1] then
                local nplayer = vRP.getUserSource(parseInt(args[1]))
                local id = vRP.getUserId(nplayer)
                if id then
                    vRP.setUData(id,"vRP:spawnController",json.encode(1))
                    TriggerClientEvent("Notify",user_id,"sucesso","Você <b>resetou</b> o personagem do passaporte <b>"..vRP.format(parseInt(args[1])).."</b>.",5000)
                end
            end
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /KILL 
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('kill',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"kill.permissao") then
		SendWebhookMessage(webh.logkill,"**O STAFF: ID "..user_id.." USOU O COMANDO /kill [DATA] "..os.date("%H:%M:%S %d/%m/%Y").."**")
        if args[1] then
            local nplayer = vRP.getUserSource(parseInt(args[1]))
            if nplayer then
                vRPclient.killGod(nplayer)
                vRPclient.setHealth(nplayer,0)
            end
        else
            vRPclient.killGod(source)
            vRPclient.setHealth(source,0)
            vRPclient.setArmour(source,0)
        end
    end
end)