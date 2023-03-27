
RegisterNetEvent('Notify')
AddEventHandler('Notify', function(type, text, time)
	DoHudText(type, text)
end)

RegisterCommand('__testeNotify', function()
	TriggerEvent('Notify', 'sucesso', 'Notify sucesso')
	TriggerEvent('Notify', 'negado', 'Notify Erro')
	TriggerEvent('Notify', 'atencao', 'Notify info')
end)

function DoHudText(type, text, title, time)
	local notifytype = 'atencao'
	local _title = 'ATENÇÃO' or string.upper(title)
	if type == 'sucesso' then 
		notifytype = 'sucesso'
		_title = 'SUCESSO'
	elseif type == 'negado' then 
		notifytype = 'negado'
		_title = 'ERRO'
	end
	if time == nil then 
		time = 10000
	end 
	SendNUIMessage({
		type = 'ADD_NOTIFICATION',
		selectedPosition = position,
		notifytype = notifytype,
		time = time,
		text = text,
		title = _title
	})
end