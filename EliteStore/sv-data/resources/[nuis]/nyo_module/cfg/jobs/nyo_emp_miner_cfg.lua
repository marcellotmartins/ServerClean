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

cfg.timerMining = 5000

cfg.jobVehicles = {
    [`tiptruck`] = true,
    [`tiptruck2`] = true,
}

cfg.markerConfig = { -- Configuração do marker nos pontos de coleta
    markerId = 21,
    markerColor = {255,0,0,50},  -- RGBA
    markerRotationXYZ = {180.0,0.0,0.0}, -- rotation x,y,z
    markerScale = {1.0,1.0,1.0}, -- Scale x,y,z
    markerUpDown = true, -- marker ficar pulando
    markerFace = true, -- marker segue a visão do player
    markerRotation = true -- marker ficar rotacionando entre seu eixo
}

cfg.mineLocations = {
    vector3(2956.11,2772.93,40.22),
    vector3(2957.54,2772.76,40.32),
    vector3(2953.58,2770.19,39.59),
    vector3(2952.57,2768.19,40.03),
    vector3(2948.31,2767.55,39.91),
    vector3(2947.96,2765.65,40.55),
    vector3(2942.52,2760.60,42.82),
    vector3(2943.45,2756.52,43.66),
    vector3(2947.35,2754.58,43.97),
	vector3(2954.03,2754.14,43.96),
	vector3(2955.20,2756.07,44.32),
	vector3(2959.33,2758.81,42.57),
	vector3(2959.82,2765.70,41.92),
	vector3(2958.33,2767.20,41.42),
	vector3(2974.34,2745.34,43.91),
	vector3(2983.58,2763.12,43.66),
	vector3(2988.45,2753.75,43.52),
	vector3(2991.07,2776.31,43.78),
	vector3(2959.03,2819.98,43.69),
	vector3(2956.01,2820.06,43.19),
	vector3(2951.13,2816.52,42.92),
	vector3(2948.04,2820.89,43.61),
	vector3(2944.52,2820.23,43.53),
	vector3(2944.25,2818.68,43.53),
	vector3(2938.35,2813.00,43.44),
	vector3(2936.61,2814.16,44.02),
	vector3(2925.64,2796.38,41.47),
	vector3(2925.34,2794.84,41.51),
	vector3(2925.83,2792.54,41.23),
	vector3(2927.94,2789.11,40.65),
	vector3(2928.14,2790.74,40.80),
	vector3(2930.75,2786.90,40.14),
	vector3(2934.45,2784.03,40.09),
	vector3(2936.94,2774.47,39.66),
	vector3(2938.30,2774.27,39.74),
	vector3(2937.25,2771.71,39.90),
	vector3(2939.04,2769.32,39.63),
}



return cfg