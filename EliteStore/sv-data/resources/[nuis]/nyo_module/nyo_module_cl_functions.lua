Tunnel = module("vrp","lib/Tunnel")
Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")


-- FUNÇÃO PARA APLICAR MODIFICAÇÕES DO VEÍCULO [ nyo_garages ]
applyVehModifications = function(vehicle,netVehicle,custom,modelName,plate)

end

-- Funções de animação
deletarObj = function()
    vRP.DeletarObjeto()
end

carregaObj = function(dict, anim, prop, flag, hand, p1, p2, p3, p4, p5, p6)
    vRP.CarregarObjeto(dict, anim, prop, flag, hand, p1, p2, p3, p4, p5, p6)
end

playAnim = function(andar, anim, loop)
    vRP._playAnim(andar, anim, loop)
end

notify = function(cor, titulo, mensagem, tempo)
    nTitulo = titulo or ''
    nMensagem = mensagem or ''
    nCor = cor or ''
    nTempo = tempo or 5000
    TriggerEvent("nyo_notify",nCor, nTitulo, nMensagem,nTempo)
end

getNearestVehicle = function(distance)
    return vRP.getNearestVehicle(distance)
end

getNearestVehicleWithInfo = function(distance)
    return vRP.vehList(distance)
end