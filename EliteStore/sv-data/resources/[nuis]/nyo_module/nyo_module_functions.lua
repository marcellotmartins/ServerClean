---------------------------------- CONFIG GLOBAIS
-- Função para pegar SOURCE pelo USER_ID
getUserSource = function(user_id)
    return vRP.getUserSource(tonumber(user_id))
end

-- Função para pegar USER_ID
getUserId = function(source)
    return vRP.getUserId(source)
end

-- Função para checar permissao 
getHasPermission = function(user_id, perm)
    return vRP.hasPermission(user_id,perm)
end

-- Função para pegar players de uma determinada permissao 
getPlayersHasPermission = function(perm)
    return vRP.getUsersByPermission(perm)
end

-- Configuração das Notify do NyoModule
notify = function(source, titulo, mensagem, cor, tempo)
    nTitulo = titulo or ''
    nMensagem = mensagem or ''
    nCor = cor or ''
    nTempo = tempo or 5000
    if source then 
        TriggerClientEvent("nyo_notify",source,nCor, nTitulo, nMensagem,nTempo)
    end
end

barberShopGetData = function(user_id)
    return vRP.getUData(user_id,"currentCharacterMode")
end

tattooShopGetData = function(user_id)
    return vRP.getUData(user_id,"nyo:tattoos")
end


---------------------------------- CONFIG DE DINHEIRO
-- Funcão para retirar dinheiro do Player
tryPayment = function(user_id, price)
    print(user_id,price)
    if vRP.tryPayment(user_id,math.floor(tonumber(price))) then 
        return true        
    else
        return false
    end
end

-- Função para dar dinheiro para o Player
giveMoney = function(user_id, money)    
    vRP.giveMoney(user_id,tonumber(money))
end

---------------------------------- CONFIG DE ITENS
-- Função para checar espaço no inventario
checkInventoryWeight = function(user_id, item, qtd)
    if vRP.getInventoryWeight(user_id)+vRP.getItemWeight(item)*tonumber(qtd) <= vRP.getInventoryMaxWeight(user_id) then 
        return true
    else 
        return false
    end
end

-- Função para retirar item do player
tryItem = function(user_id, item, qtd)
    if vRP.tryGetInventoryItem(user_id,item,tonumber(qtd)) then 
        return true 
    else 
        return false 
    end
end

-- Função para dar item ao player
giveItem = function(user_id, item, qtd)
    vRP.giveInventoryItem(user_id,item,tonumber(qtd))
end