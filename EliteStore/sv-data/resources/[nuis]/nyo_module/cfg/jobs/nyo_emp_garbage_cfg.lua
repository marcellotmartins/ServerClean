local cfg = {}

cfg.paymentType = {
    money = true,
    itens = false
}

cfg.minMoney = 10
cfg.maxMoney = 90

cfg.paymentItensType = 1
--  1 = todos itens
--  2 = item randomico,

cfg.paymentItens = {
    {item = 'laranja', min = 1, max = 2},
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

cfg.markerConfig = { -- Configuração do marker nos pontos de coleta
    markerId = 21,
    markerColor = {255,0,0,50},  -- RGBA
    markerRotationXYZ = {180.0,0.0,0.0}, -- rotation x,y,z
    markerScale = {2.0,2.0,1.0}, -- Scale x,y,z
    markerUpDown = true, -- marker ficar pulando
    markerFace = true, -- marker segue a visão do player
    markerRotation = true -- marker ficar rotacionando entre seu eixo
}


cfg.garbageLocations = {
    vector3(-364.39,-1864.58,20.24),
    vector3(119.92,-2049.79,18.00),
    vector3(140.51,-1876.13,23.52),
    vector3(159.26,-1814.52,28.13),
    vector3(241.46,-1944.45,23.12),
    vector3(447.58,-1936.93,24.31),
    vector3(487.06,-1515.02,29.00),
    vector3(419.46,-1526.35,28.99),
    vector3(266.11,-1493.93,28.92),
	vector3(120.39,-1545.78,28.95),
	vector3(136.37,-1369.56,28.95),
	vector3(-13.08,-1388.95,29.10),
	vector3(482.05,-1279.73,29.25),
	vector3(430.18,-1066.45,28.92),
	vector3(305.60,-1038.61,28.89),
	vector3(241.49,-831.53,29.62),
	vector3(18.98,-544.66,36.34),
	vector3(7.39,-366.43,40.23),
	vector3(303.37,-259.79,53.67),
	vector3(973.44,-158.95,73.09),
	vector3(921.25,47.69,80.48),
	vector3(916.12,-194.66,72.63),
	vector3(587.96,67.51,93.18),
	vector3(312.00,329.08,105.16),
	vector3(-381.52,289.96,84.55),
	vector3(-601.73,270.61,81.69),
	vector3(-1239.73,405.86,75.35),
	vector3(-1772.09,-478.61,39.42),
	vector3(-1977.30,-488.59,11.45),
	vector3(-1320.02,-1216.42,4.49),
	vector3(-1208.72,-1411.40,3.89),
	vector3(-1111.55,-1549.99,4.08),
	vector3(-574.54,-857.53,25.97),
	vector3(-352.88,-959.45,30.79),
	vector3(49.47,-1240.88,28.94),
	vector3(-148.22,-1296.49,30.78),
	vector3(-333.68,-1366.33,31.01),
	vector3(-303.08,-1538.89,26.32)
}

return cfg