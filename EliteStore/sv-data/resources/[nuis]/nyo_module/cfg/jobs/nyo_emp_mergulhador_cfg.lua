local cfg = {}

cfg.paymentType = {
    money = false,
    itens = true
}

cfg.minMoney = 10
cfg.maxMoney = 90

cfg.paymentItensType = 2
--  1 = todos itens
--  2 = item randomico,

cfg.paymentItens = {
    {item = 'bronze', min = 1, max = 1}, 
	{item = 'ferro', min = 1, max = 1},
	{item = 'ouro', min = 1, max = 1},
	{item = 'rubi', min = 1, max = 1},
	{item = 'esmeralda', min = 1, max = 1},
	{item = 'safira', min = 1, max = 1},
	{item = 'diamante', min = 1, max = 1},
	{item = 'topazio', min = 1, max = 1},
	{item = 'ametista', min = 1, max = 1},
}

cfg.collectLocations = {
    {vector3(-1753.62, -1084.97, -1.28)},
    {vector3(-1724.35, -1108.49, -0.18)},
    {vector3(-1723.42, -1059.0, 1.42)},
    {vector3(-1754.31, -1087.09, -1.71)}
}

cfg.skillBar = false -- Usar miniGame do SkillBar (true para sim false para não)

cfg.resetTime = 60 -- tempo para respawnar o spot de mergulho

cfg.jobVehicles = {
    [`dinghy`] = true,
}

cfg.sonarType = 2 -- 1 para Item, 2 para Todos

cfg.sonarBlipConfig = {
    ['radius'] = 15.0,
    ['colour'] = 15
}

cfg.scubaDiverMarker = {
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