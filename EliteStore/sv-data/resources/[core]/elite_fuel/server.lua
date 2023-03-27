local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

src = {}
Tunnel.bindInterface(GetCurrentResourceName(), src)

vCLIENT = Tunnel.getInterface(GetCurrentResourceName())

RegisterCommand('wolf',function(source)
	local user_id = vRP.getUserId(source)
	if user_id then 
		vCLIENT.wolfzera(source)
	end 
end)

function src.checkMoney(price)
	local source = source
	local user_id = vRP.getUserId(source)

	local hasMoney = vRP.getMoney(user_id) >= price
	if not hasMoney then
		TriggerClientEvent("Notify",source,"negado","Você não tem dinheiro suficiente")
	end	
	return { hasMoney = hasMoney }
end

RegisterServerEvent("elite_fuel:pagamento")
AddEventHandler("elite_fuel:pagamento",function(price,galao,vehicle,fuel,fuel2)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id and price > 0 then
		if vRP.tryPayment(user_id,price) then
			if galao then
				TriggerClientEvent('elite_fuel:galao',source)
                TriggerClientEvent('fuel:requestJerryCanPurchase',source,vehicle,fuel2)
				TriggerClientEvent("Notify",source,"sucesso","Pagou <b>$"..vRP.format(price).." reais</b> pelo <b>Galão</b>.")
			else
                TriggerClientEvent('syncfuel',-1,vehicle,fuel)
				TriggerClientEvent("Notify",source,"sucesso","Pagou <b>$"..vRP.format(price).." reais</b> em combustível.")
			end
		else
			TriggerClientEvent('elite_fuel:insuficiente',source)
            TriggerClientEvent('fuel:requestJerryCanPurchase',source,vehicle,fuel2)
			TriggerClientEvent("Notify",source,"negado","Dinheiro insuficiente.")
		end
	end
end)


RegisterCommand("fuel",function(source,args,rawCommand)
	local source = source
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id, "manager.permissao") and args[1] then
		local vehicle = vRPclient.getNearestVehicle(source, 7)
		TriggerClientEvent("fuel:setvehiclefuel", -1, vehicle, tonumber(args[1]))
		TriggerClientEvent("fuel:setvehiclefuel2", source, vehicle, tonumber(args[1]))
	end
end)