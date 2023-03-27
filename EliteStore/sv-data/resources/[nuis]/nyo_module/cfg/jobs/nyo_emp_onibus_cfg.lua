local cfg = {}

cfg.paymentType = {
    money = true,
    itens = false
}

cfg.minMoney = 100
cfg.maxMoney = 250

cfg.paymentItensType = 2
--  1 = todos itens
--  2 = item randomico,

cfg.paymentItens = {
    {item = 'celular', min = 0, max = 1},
    {item = 'radio', min = 0, max = 1},
}

cfg.blipConfig = { -- Configuração do blip nos pontos de coleta
    blipId = 1,
    blipColor = 5,
    blipScale = 0.4,
    routeColor = 5,
}

cfg.jobVehicles = {
    [`coach`] = true,
    [`airbus`] = true,
}

cfg.markerConfig = { -- Configuração do marker nos pontos de coleta
    markerId = 21,
    markerColor = {255,0,0,50},  -- RGBA
    markerRotationXYZ = {180.0,0.0,0.0}, -- rotation x,y,z
    markerScale = {2.0,2.0,1.0}, -- Scale x,y,z
    markerUpDown = false, -- marker ficar pulando
    markerFace = true, -- marker segue a visão do player
    markerRotation = false -- marker ficar rotacionando entre seu eixo
}

cfg.route = { -- Pontos da Rota
    vector3(309.95,-760.52,30.09),
    vector3(69.59,-974.80,30.14),
    vector3(95.00,-634.89,45.02),
    vector3(58.27,-283.32,48.20),
    vector3(47.74,-160.44,56.03),
    vector3(323.93,-267.58,54.71),
    vector3(443.75,119.16,100.41),
    vector3(125.62,-4.42,68.48),
    vector3(-524.08,133.59,63.91),
    vector3(-586.64,268.39,83.24),
    vector3(-640.38,-163.16,38.49),
    vector3(-597.89,-361.27,35.77),
    vector3(-646.06,-804.09,25.78),
    vector3(-932.63,-1199.67,5.91),
    vector3(-1234.65,-1080.87,9.12),
    vector3(-1373.99,-793.23,20.09),
    vector3(-2011.25,-160.04,29.40),
    vector3(-2981.70,404.50,15.75),
    vector3(-3101.58,1112.65,21.28),
    vector3(-2556.10,2322.01,33.89),
    vector3(-1094.86,2675.87,20.08),
    vector3(-72.63,2813.83,54.60),
    vector3(540.55,2685.25,43.20),
    vector3(1119.93,2682.04,39.31),
    vector3(1470.51,2725.47,38.48),
    vector3(2002.62,2603.65,55.07),
    vector3(379.58,-599.20,29.58),
    vector3(-153.29,6212.22,32.04), 
    vector3(-18.38,6507.26,32.11), 
    vector3(750.1,6492.87,26.96), 
    vector3(1605.67,6382.96,28.04), 
    vector3(2523.1,5397.13,43.79), 
    vector3(2417.2,5146.35,46.22), 
    vector3(2483.1,4447.83,34.72), 
    vector3(2009.0,3754.48,31.68),
    vector3(1784.69,3784.43,34.56), 
    vector3(1645.95,3594.46,34.77), 
    vector3(2028.34,3086.08,46.26), 
    vector3(1243.86,2685.01,36.89), 
    vector3(301.27,2643.21,43.81), 
    vector3(-457.07,2854.16,34.26), 
    vector3(-1117.01,2668.0,17.46), 
    vector3(-2220.02,2304.25,32.1), 
    vector3(-2697.39,2289.02,18.42), 
    vector3(-2542.61,3416.97,12.56), 
    vector3(-2208.02,4298.45,47.47), 
    vector3(-1530.62,4954.68,61.37), 
    vector3(-1050.17,5333.97,44.0), 
    vector3(-790.13,5551.25,32.34), 
    vector3(-453.36,6069.5,30.66), 
    vector3(-333.46,6331.06,29.42), 
    vector3(-51.08,6602.36,29.08), 
    vector3(-64.9,6472.86,30.68), 
    vector3(-292.38,6246.41,30.71), 
}

return cfg