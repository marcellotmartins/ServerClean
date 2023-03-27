local cfg = {}

cfg.paymentType = {
    money = true,
    itens = false
}

cfg.minMoney = 10
cfg.maxMoney = 80

cfg.paymentItensType = 1
--  1 = todos itens
--  2 = item randomico,

cfg.paymentItens = {
    {item = 'laranja', min = 1, max = 1},
}

cfg.jobVehicles = {
    [`trash`] = true,
    [`trash2`] = true,
}

cfg.garbageCollectBlipConfig = {
    sprite = 318,
    colour = 1,
    scale = 0.6,
    routeColor = 5,
    text = 'Coletar lixo'
}

cfg.garbageProps = {
    [`prop_dumpster_01a`] = true,
    [`prop_dumpster_02a`] = true,
    [`prop_dumpster_02b`] = true,
    [`prop_dumpster_3a`] = true,
    [`prop_dumpster_4a`] = true,
    [`prop_dumpster_4b`] = true
}
 
cfg.resetTime = 1 -- minutos

cfg.garbageV2Marker = {
    ['type'] = 21,
    ['scalex'] = 1.0,
    ['scaley'] = 1.0,
    ['scalez'] = 1.0,
    ['r'] = 255,
    ['g'] = 0,
    ['b'] = 0,
    ['a'] = 150,
    ['bobUpAndDown'] = true,
    ['rotate'] = true
}

return cfg