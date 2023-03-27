local cfg = {}

cfg.paymentType = {
    money = false,
    itens = true
}

cfg.minMoney = 50
cfg.maxMoney = 100

cfg.paymentItensType = 2
--  1 = todos itens
--  2 = item randomico,

cfg.paymentItens = {
    {item = 'dourado', min = 1, max = 1},
    {item = 'corvina', min = 1, max = 1},
    {item = 'salmao', min = 1, max = 1},
    {item = 'pacu', min = 1, max = 1},
    {item = 'pintado', min = 1, max = 1},
    {item = 'pirarucu', min = 1, max = 1},
    {item = 'tilapia', min = 1, max = 1},
    {item = 'tucunare', min = 1, max = 1},
}

cfg.locations = {
    {vector3(10.54,3996.82,30.22),40.0},
}

cfg.fishingTipe = 1 -- Tipo para pescar (1 = tempo, 2 = skillbar)
cfg.fishingTime = 10

cfg.requestItem = { require = true, item = 'isca', qtd = 1} -- Requer algum item para pescar? Caso sim coloque TRUE e o item, caso não coloque FALSE


cfg.markerConfig = { -- Configuração do marker nos pontos de coleta
    markerId = 28,
    markerColor = {255,215,0,50},  -- RGBA
    markerRotationXYZ = {180.0,0.0,0.0}, -- rotation x,y,z
    markerUpDown = false, -- marker ficar pulando
    markerFace = false, -- marker segue a visão do player
    markerRotation = false -- marker ficar rotacionando entre seu eixo
}

cfg.fisherBlipConfig = {
    sprite = 68,
    colour = 57,
    scale = 0.6,
    shortRange = false,
    text = 'Local de Pesca'
}

return cfg