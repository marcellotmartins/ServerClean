local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

config = {}
Proxy.addInterface("nation_garages", config)

----------------------------------------------
----------------- CONFIG ---------------------
----------------------------------------------


config.ipva = 20 -- taxa para ser paga quando o veiculo estiver com o ipva atrasado (porcentagem do valor do veiculo)
config.use_tryFullPayment = false -- quando true, aceita pagamentos de taxas com o dinheiro do banco
config.client_vehicle = true
config.detido = 35 -- taxa para ser paga quando o veiculo for detido (porcentagem do valor do veiculo)
config.seguradora = 25 -- taxa para ser paga quando o veiculo estiver apreendido (porcentagem do valor do veiculo)
config.dv_permission = "dv.permissao" -- permissao para dv
config.guardar_veiculo_proximo = true -- mostrar botão de guardar veículo próximo
config.server_side_check = true -- checa se o veículo já foi retirado da garagem pelo player via server-side (o player não conseguirá retirar o veículo até guardá-lo novamente / DV)

----------------------------------------------
----------------- MARKERS --------------------
----------------------------------------------


--- TIPOS DE MARKERS (DEFINIDO NO ATRIBUTO MARKER DE CADA GARAGEM) ---
config.markers = {
	["avião"] = 33,
	["helicóptero"] = 34,
	["barco"] = 35,
	["carro"] = 36,
	["moto"] = 37,
	["bicicleta"] = 38,
	["truck"] = 39,
}

config.drawMarker = function(coords,marker) -- funcao para desenhar os markers das garagens no chão
	local idTop = config.markers[marker] or config.markers["carro"] 
	local idBase = 27
	DrawMarker(idTop,coords,0,0,0,0,0,0,1.0,1.0,1.0,80,212,255,155,1,1,1,1)
	DrawMarker(idBase,coords.x,coords.y,coords.z-0.97,0,0,0,0,0,0,1.0,1.0,0.5,102, 212,255,155,0,0,0,1)
end

----------------------------------------------
----------------- BLIPS ----------------------
----------------------------------------------

config.showBlips = true -- quando true, mostra os blips das garagens públicas no mapa
config.blipId = 357 -- id do blip
config.blipColor = 7 -- cor do blip
config.blipSize = 0.4 -- tamanho do blip

----------------------------------------------
----------------------------------------------
----------------------------------------------


----------------------------------------------
-------- DELETAR VEICULOS INATIVOS -----------
----------------------------------------------

config.reset = true -- quando true, deleta os veículos que estão parados durante um determinado tempo
config.tempoReset = 120 -- tempo para deletar um veículo inativo (em minutos)

----------------------------------------------
----------------------------------------------
----------------------------------------------

----------------------------------------------
----------------- IMAGENS --------------------
----------------------------------------------

config.defaultImg = "https://svgsilh.com/svg/160895.svg" -- imagem default
config.imgDir = "http://131.196.197.90/vehicles/" -- url ou diretorio das imagens

----------------------------------------------
----------------------------------------------
----------------------------------------------



----------------------------------------------
----------- LISTA DE VEÍCULOS ----------------
----------------------------------------------


config.vehList = {
	
	{ hash = -2122757008, name = 'stunt', price = 45000, banido = false, modelo = 'stunt', capacidade = 350, tipo = 'avioes' },
	{ hash = -1706603682, name = 'avisa', price = 40000, banido = false, modelo = 'avisa', capacidade = 50, tipo = 'barcos' },
	{ hash = 1032823388, name = 'ninef', price = 80000, banido = false, modelo = 'ninef', capacidade = 15, tipo = 'outros' },
	{ hash = 710198397, name = 'supervolito', price = 52000, banido = false, modelo = 'supervolito', capacidade = 20, tipo = 'helicopteros' },
	{ hash = 1044193113, name = 'thrax', price = 80000, banido = false, modelo = 'thrax', capacidade = 75, tipo = 'carros' },
	{ hash = -1637149482, name = 'armytrailer2', price = 40000, banido = false, modelo = 'armytrailer2', capacidade = 15, tipo = 'outros' },
	{ hash = 736902334, name = 'buffalo2', price = 25000, banido = false, modelo = 'buffalo2', capacidade = 15, tipo = 'outros' },
	{ hash = -1205689942, name = 'riot', price = 40000, banido = false, modelo = 'riot', capacidade = 15, tipo = 'outros' },
	{ hash = -1461482751, name = 'ninef2', price = 80000, banido = false, modelo = 'ninef2', capacidade = 15, tipo = 'outros' },
	{ hash = -48031959, name = 'blazer2', price = 12000, banido = false, modelo = 'blazer2', capacidade = 75, tipo = 'carros' },
	{ hash = -1297672541, name = 'jester', price = 80000, banido = false, modelo = 'jester', capacidade = 15, tipo = 'outros' },
	{ hash = -344943009, name = 'blista', price = 35000, banido = false, modelo = 'blista', capacidade = 15, tipo = 'outros' },
	{ hash = 415744205, name = '918spyder2', price = 35000, banido = false, modelo = '918spyder2', capacidade = 15, tipo = 'outros' },
	{ hash = -1809822327, name = 'asea', price = 35000, banido = false, modelo = 'asea', capacidade = 15, tipo = 'outros' },
	{ hash = -2033222435, name = 'tornado4', price = 25000, banido = false, modelo = 'tornado4', capacidade = 15, tipo = 'outros' },
	{ hash = -1807623979, name = 'asea2', price = 35000, banido = false, modelo = 'asea2', capacidade = 15, tipo = 'outros' },
	{ hash = -1207431159, name = 'armytanker', price = 40000, banido = false, modelo = 'armytanker', capacidade = 15, tipo = 'outros' },
	{ hash = 630371791, name = 'barracks3', price = 40000, banido = false, modelo = 'barracks3', capacidade = 15, tipo = 'outros' },
	{ hash = 838982985, name = 'z190', price = 130000, banido = false, modelo = 'z190', capacidade = 15, tipo = 'outros' },
	{ hash = 323456075, name = 'xt2017pm', price = 12000, banido = false, modelo = 'xt2017pm', capacidade = 15, tipo = 'outros' },
	{ hash = 1682114128, name = 'dilettante2', price = 35000, banido = false, modelo = 'dilettante2', capacidade = 15, tipo = 'outros' },
	{ hash = 298565713, name = 'verus', price = 12000, banido = false, modelo = 'verus', capacidade = 75, tipo = 'carros' },
	{ hash = 223240013, name = 'cheetah2', price = 150000, banido = false, modelo = 'cheetah2', capacidade = 15, tipo = 'outros' },
	{ hash = 1239571361, name = 'issi6', price = 52000, banido = false, modelo = 'issi6', capacidade = 15, tipo = 'outros' },
	{ hash = 8880015, name = 'rmodcharger69', price = 150000, banido = false, modelo = 'rmodcharger69', capacidade = 15, tipo = 'outros' },
	{ hash = 330661258, name = 'cogcabrio', price = 35000, banido = false, modelo = 'cogcabrio', capacidade = 15, tipo = 'outros' },
	{ hash = -1311451281, name = 'bmwm3gtr', price = 150000, banido = false, modelo = 'bmwm3gtr', capacidade = 15, tipo = 'outros' },
	{ hash = 408192225, name = 'turismor', price = 150000, banido = false, modelo = 'turismor', capacidade = 75, tipo = 'carros' },
	{ hash = -410205223, name = 'revolter', price = 150000, banido = false, modelo = 'revolter', capacidade = 15, tipo = 'outros' },
	{ hash = -713569950, name = 'bus', price = 25000, banido = false, modelo = 'bus', capacidade = 15, tipo = 'outros' },
	{ hash = 524108981, name = 'boattrailer', price = 40000, banido = false, modelo = 'boattrailer', capacidade = 15, tipo = 'outros' },
	{ hash = 1353720154, name = 'flatbed', price = 25000, banido = false, modelo = 'flatbed', capacidade = 15, tipo = 'outros' },
	{ hash = 227092580, name = 'vwamarok', price = 50000, banido = false, modelo = 'vwamarok', capacidade = 250, tipo = 'utilitario' },
	{ hash = -575431438, name = 'golf4', price = 35000, banido = false, modelo = 'golf4', capacidade = 15, tipo = 'outros' },
	{ hash = 1171614426, name = 'ambulance', price = 40000, banido = false, modelo = 'ambulance', capacidade = 15, tipo = 'outros' },
	{ hash = -304802106, name = 'buffalo', price = 25000, banido = false, modelo = 'buffalo', capacidade = 15, tipo = 'outros' },
	{ hash = -1476447243, name = 'armytrailer', price = 40000, banido = false, modelo = 'armytrailer', capacidade = 15, tipo = 'outros' },
	{ hash = -708627469, name = 'astonmartinvantage', price = 150000, banido = false, modelo = 'astonmartinvantage', capacidade = 15, tipo = 'outros' },
	{ hash = 2053223216, name = 'benson', price = 25000, banido = false, modelo = 'benson', capacidade = 300, tipo = 'serviço' },
	{ hash = -777275802, name = 'freighttrailer', price = 40000, banido = false, modelo = 'freighttrailer', capacidade = 15, tipo = 'outros' },
	{ hash = 384004687, name = 'aakuma', price = 20000, banido = false, modelo = 'aakuma', capacidade = 20, tipo = 'motos' },
	{ hash = 1995020435, name = 'celta', price = 30000, banido = false, modelo = 'celta', capacidade = 15, tipo = 'outros' },
	{ hash = -1696146015, name = 'bullet', price = 150000, banido = false, modelo = 'bullet', capacidade = 75, tipo = 'carros' },
	{ hash = -233098306, name = 'boxville2', price = 25000, banido = false, modelo = 'boxville2', capacidade = 250, tipo = 'utilitario' },
	{ hash = -2072933068, name = 'coach', price = 25000, banido = false, modelo = 'coach', capacidade = 15, tipo = 'outros' },
	{ hash = -114291515, name = 'bati', price = 20000, banido = false, modelo = 'bati', capacidade = 20, tipo = 'motos' },
	{ hash = -2128233223, name = 'blazer', price = 12000, banido = false, modelo = 'blazer', capacidade = 75, tipo = 'carros' },
	{ hash = -602287871, name = 'btype3', price = 70000, banido = false, modelo = 'btype3', capacidade = 15, tipo = 'outros' },
	{ hash = 1723137093, name = 'stratum', price = 35000, banido = false, modelo = 'stratum', capacidade = 15, tipo = 'outros' },
	{ hash = -1224838965, name = 'spinrp1', price = 50000, banido = false, modelo = 'spinrp1', capacidade = 15, tipo = 'outros' },
	{ hash = 833469436, name = 'slamvan2', price = 25000, banido = false, modelo = 'slamvan2', capacidade = 15, tipo = 'outros' },
	{ hash = 1283517198, name = 'airbus', price = 25000, banido = false, modelo = 'airbus', capacidade = 15, tipo = 'outros' },
	{ hash = -142942670, name = 'massacro', price = 35000, banido = false, modelo = 'massacro', capacidade = 15, tipo = 'outros' },
	{ hash = -644710429, name = 'cuban800', price = 45000, banido = false, modelo = 'cuban800', capacidade = 350, tipo = 'avioes' },
	{ hash = 908897389, name = 'toro2', price = 40000, banido = false, modelo = 'toro2', capacidade = 50, tipo = 'barcos' },
	{ hash = 893081117, name = 'burrito4', price = 22000, banido = false, modelo = 'burrito4', capacidade = 250, tipo = 'utilitario' },
	{ hash = -1829436850, name = 'Novak', price = 50000, banido = false, modelo = 'Novak', capacidade = 15, tipo = 'outros' },
	{ hash = -30119759, name = 'eb350pc', price = 52000, banido = false, modelo = 'eb350pc', capacidade = 20, tipo = 'helicopteros' },
	{ hash = 1956216962, name = 'tanker2', price = 40000, banido = false, modelo = 'tanker2', capacidade = 15, tipo = 'outros' },
	{ hash = -1010340916, name = 'duster21gcm1', price = 50000, banido = false, modelo = 'duster21gcm1', capacidade = 15, tipo = 'outros' },
	{ hash = -1903012613, name = 'asterope', price = 35000, banido = false, modelo = 'asterope', capacidade = 15, tipo = 'outros' },
	{ hash = 75131841, name = 'glendale', price = 100000, banido = false, modelo = 'glendale', capacidade = 15, tipo = 'outros' },
	{ hash = 1560980623, name = 'airtug', price = 15000, banido = false, modelo = 'airtug', capacidade = 15, tipo = 'outros' },
	{ hash = -1432034260, name = 'MGT', price = 150000, banido = false, modelo = 'MGT', capacidade = 75, tipo = 'carros' },
	{ hash = -1349095620, name = 'caracara2', price = 50000, banido = false, modelo = 'caracara2', capacidade = 75, tipo = 'carros' },
	{ hash = -823509173, name = 'barracks', price = 40000, banido = false, modelo = 'barracks', capacidade = 15, tipo = 'outros' },
	{ hash = -1543762099, name = 'gresley', price = 50000, banido = false, modelo = 'gresley', capacidade = 15, tipo = 'outros' },
	{ hash = 444583674, name = 'handler', price = 25000, banido = false, modelo = 'handler', capacidade = 15, tipo = 'outros' },
	{ hash = 2006918058, name = 'cavalcade', price = 50000, banido = false, modelo = 'cavalcade', capacidade = 15, tipo = 'outros' },
	{ hash = 1036158542, name = 'apanto', price = 35000, banido = false, modelo = 'apanto', capacidade = 15, tipo = 'outros' },
	{ hash = -442313018, name = 'towtruck2', price = 25000, banido = false, modelo = 'towtruck2', capacidade = 15, tipo = 'outros' },
	{ hash = 1074326203, name = 'barracks2', price = 40000, banido = false, modelo = 'barracks2', capacidade = 15, tipo = 'outros' },
	{ hash = 627094268, name = 'romero', price = 35000, banido = false, modelo = 'romero', capacidade = 15, tipo = 'outros' },
	{ hash = -159126838, name = 'innovation', price = 12000, banido = false, modelo = 'innovation', capacidade = 20, tipo = 'motos' },
	{ hash = -1090954194, name = 'pajero4', price = 50000, banido = false, modelo = 'pajero4', capacidade = 15, tipo = 'outros' },
	{ hash = 1773127042, name = 'sw4tor', price = 50000, banido = false, modelo = 'sw4tor', capacidade = 15, tipo = 'outros' },
	{ hash = 850565707, name = 'bjxl', price = 50000, banido = false, modelo = 'bjxl', capacidade = 15, tipo = 'outros' },
	{ hash = -808831384, name = 'baller', price = 50000, banido = false, modelo = 'baller', capacidade = 15, tipo = 'outros' },
	{ hash = -1622444098, name = 'voltic', price = 80000, banido = false, modelo = 'voltic', capacidade = 75, tipo = 'carros' },
	{ hash = -119658072, name = 'pony', price = 22000, banido = false, modelo = 'pony', capacidade = 250, tipo = 'utilitario' },
	{ hash = 142944341, name = 'baller2', price = 50000, banido = false, modelo = 'baller2', capacidade = 15, tipo = 'outros' },
	{ hash = -884690486, name = 'docktug', price = 15000, banido = false, modelo = 'docktug', capacidade = 15, tipo = 'outros' },
	{ hash = -1041692462, name = 'banshee', price = 150000, banido = false, modelo = 'banshee', capacidade = 15, tipo = 'outros' },
	{ hash = 368211810, name = 'cargoplane', price = 45000, banido = false, modelo = 'cargoplane', capacidade = 350, tipo = 'avioes' },
	{ hash = -210308634, name = 'winky', price = 50000, banido = false, modelo = 'winky', capacidade = 75, tipo = 'carros' },
	{ hash = -305727417, name = 'brickade', price = 40000, banido = false, modelo = 'brickade', capacidade = 15, tipo = 'outros' },
	{ hash = 1861786828, name = 'longfin', price = 40000, banido = false, modelo = 'longfin', capacidade = 50, tipo = 'barcos' },
	{ hash = -89291282, name = 'felon2', price = 35000, banido = false, modelo = 'felon2', capacidade = 15, tipo = 'outros' },
	{ hash = 1126868326, name = 'bfinjection', price = 50000, banido = false, modelo = 'bfinjection', capacidade = 75, tipo = 'carros' },
	{ hash = 433954513, name = 'nightshark', price = 50000, banido = false, modelo = 'nightshark', capacidade = 75, tipo = 'carros' },
	{ hash = 850991848, name = 'biff', price = 40000, banido = false, modelo = 'biff', capacidade = 300, tipo = 'serviço' },
	{ hash = -714925639, name = 'trucksub', price = 25000, banido = false, modelo = 'trucksub', capacidade = 300, tipo = 'serviço' },
	{ hash = -2132463276, name = 'terzo', price = 35000, banido = false, modelo = 'terzo', capacidade = 75, tipo = 'carros' },
	{ hash = 989294410, name = 'voltic2', price = 80000, banido = false, modelo = 'voltic2', capacidade = 75, tipo = 'carros' },
	{ hash = -867607417, name = 'tchcop', price = 50000, banido = false, modelo = 'tchcop', capacidade = 15, tipo = 'outros' },
	{ hash = -1269889662, name = 'blazer3', price = 12000, banido = false, modelo = 'blazer3', capacidade = 75, tipo = 'carros' },
	{ hash = 1077420264, name = 'velum2', price = 45000, banido = false, modelo = 'velum2', capacidade = 350, tipo = 'avioes' },
	{ hash = -907477130, name = 'burrito2', price = 22000, banido = false, modelo = 'burrito2', capacidade = 250, tipo = 'utilitario' },
	{ hash = -212993243, name = 'barrage', price = 150000, banido = false, modelo = 'barrage', capacidade = 15, tipo = 'outros' },
	{ hash = -16948145, name = 'bison', price = 50000, banido = false, modelo = 'bison', capacidade = 250, tipo = 'utilitario' },
	{ hash = 2072156101, name = 'bison2', price = 50000, banido = false, modelo = 'bison2', capacidade = 250, tipo = 'utilitario' },
	{ hash = -1773424714, name = 'passat', price = 35000, banido = false, modelo = 'passat', capacidade = 75, tipo = 'carros' },
	{ hash = 1739845664, name = 'bison3', price = 50000, banido = false, modelo = 'bison3', capacidade = 250, tipo = 'utilitario' },
	{ hash = -376434238, name = 'tyrant', price = 35000, banido = false, modelo = 'tyrant', capacidade = 75, tipo = 'carros' },
	{ hash = -537896628, name = 'caddy2', price = 10000, banido = false, modelo = 'caddy2', capacidade = 15, tipo = 'outros' },
	{ hash = -322014905, name = 'ferrari812', price = 150000, banido = false, modelo = 'ferrari812', capacidade = 15, tipo = 'outros' },
	{ hash = -304124483, name = 'silv86', price = 20000, banido = false, modelo = 'silv86', capacidade = 250, tipo = 'utilitario' },
	{ hash = -67468047, name = 'gle450', price = 35000, banido = false, modelo = 'gle450', capacidade = 15, tipo = 'outros' },
	{ hash = 1147287684, name = 'caddy', price = 10000, banido = false, modelo = 'caddy', capacidade = 15, tipo = 'outros' },
	{ hash = -789894171, name = 'cavalcade2', price = 50000, banido = false, modelo = 'cavalcade2', capacidade = 15, tipo = 'outros' },
	{ hash = 231217483, name = 'trhawk', price = 80000, banido = false, modelo = 'trhawk', capacidade = 15, tipo = 'outros' },
	{ hash = -1987130134, name = 'boxville', price = 25000, banido = false, modelo = 'boxville', capacidade = 250, tipo = 'utilitario' },
	{ hash = 1221512915, name = 'seminole', price = 50000, banido = false, modelo = 'seminole', capacidade = 15, tipo = 'outros' },
	{ hash = 1270688730, name = 'm6e63', price = 35000, banido = false, modelo = 'm6e63', capacidade = 15, tipo = 'outros' },
	{ hash = -1302397267, name = 'lp6504', price = 25000, banido = false, modelo = 'lp6504', capacidade = 75, tipo = 'carros' },
	{ hash = 121658888, name = 'boxville3', price = 25000, banido = false, modelo = 'boxville3', capacidade = 250, tipo = 'utilitario' },
	{ hash = 1069929536, name = 'bobcatxl', price = 50000, banido = false, modelo = 'bobcatxl', capacidade = 250, tipo = 'utilitario' },
	{ hash = 1095871989, name = 'vwfox', price = 35000, banido = false, modelo = 'vwfox', capacidade = 15, tipo = 'outros' },
	{ hash = -1045541610, name = 'comet2', price = 25000, banido = false, modelo = 'comet2', capacidade = 15, tipo = 'outros' },
	{ hash = -723997994, name = 'kombi', price = 22000, banido = false, modelo = 'kombi', capacidade = 15, tipo = 'outros' },
	{ hash = -1313740730, name = 'm2', price = 15000, banido = false, modelo = 'm2', capacidade = 15, tipo = 'outros' },
	{ hash = -1435919434, name = 'bodhi2', price = 50000, banido = false, modelo = 'bodhi2', capacidade = 75, tipo = 'carros' },
	{ hash = -682211828, name = 'buccaneer', price = 150000, banido = false, modelo = 'buccaneer', capacidade = 15, tipo = 'outros' },
	{ hash = -613725916, name = 'blimp2', price = 52000, banido = false, modelo = 'blimp2', capacidade = 350, tipo = 'avioes' },
	{ hash = 1886712733, name = 'bulldozer', price = 40000, banido = false, modelo = 'bulldozer', capacidade = 15, tipo = 'outros' },
	{ hash = 387748548, name = 'hauler2', price = 40000, banido = false, modelo = 'hauler2', capacidade = 300, tipo = 'serviço' },
	{ hash = -1242608589, name = 'vigilante', price = 35000, banido = false, modelo = 'vigilante', capacidade = 75, tipo = 'carros' },
	{ hash = -1403128555, name = 'zentorno', price = 35000, banido = false, modelo = 'zentorno', capacidade = 75, tipo = 'carros' },
	{ hash = -1302786231, name = 'c7', price = 15000, banido = false, modelo = 'c7', capacidade = 15, tipo = 'outros' },
	{ hash = -150975354, name = 'blimp', price = 52000, banido = false, modelo = 'blimp', capacidade = 350, tipo = 'avioes' },
	{ hash = -1346687836, name = 'burrito', price = 22000, banido = false, modelo = 'burrito', capacidade = 250, tipo = 'utilitario' },
	{ hash = 681304370, name = 'bmwr1250rocam', price = 12000, banido = false, modelo = 'bmwr1250rocam', capacidade = 20, tipo = 'motos' },
	{ hash = -248071157, name = 'gt63', price = 35000, banido = false, modelo = 'gt63', capacidade = 15, tipo = 'outros' },
	{ hash = 1876516712, name = 'camper', price = 25000, banido = false, modelo = 'camper', capacidade = 250, tipo = 'utilitario' },
	{ hash = -1311154784, name = 'cheetah', price = 150000, banido = false, modelo = 'cheetah', capacidade = 75, tipo = 'carros' },
	{ hash = -427141955, name = 'sprinter', price = 22000, banido = false, modelo = 'sprinter', capacidade = 15, tipo = 'outros' },
	{ hash = 437538602, name = 'speeder2', price = 40000, banido = false, modelo = 'speeder2', capacidade = 50, tipo = 'barcos' },
	{ hash = -1385753106, name = 'r8ppi', price = 35000, banido = false, modelo = 'r8ppi', capacidade = 15, tipo = 'outros' },
	{ hash = -1566607184, name = 'clique', price = 30000, banido = false, modelo = 'clique', capacidade = 15, tipo = 'outros' },
	{ hash = -1743316013, name = 'burrito3', price = 22000, banido = false, modelo = 'burrito3', capacidade = 250, tipo = 'utilitario' },
	{ hash = -618617997, name = 'wolfsbane', price = 12000, banido = false, modelo = 'wolfsbane', capacidade = 20, tipo = 'motos' },
	{ hash = -1130810103, name = 'dilettante', price = 35000, banido = false, modelo = 'dilettante', capacidade = 15, tipo = 'outros' },
	{ hash = -904813273, name = 'fordshelby', price = 100000, banido = false, modelo = 'fordshelby', capacidade = 15, tipo = 'outros' },
	{ hash = -1700801569, name = 'scrap', price = 25000, banido = false, modelo = 'scrap', capacidade = 15, tipo = 'outros' },
	{ hash = -5153954, name = 'exemplar', price = 35000, banido = false, modelo = 'exemplar', capacidade = 15, tipo = 'outros' },
	{ hash = -2124201592, name = 'manana', price = 25000, banido = false, modelo = 'manana', capacidade = 15, tipo = 'outros' },
	{ hash = -834353991, name = 'komoda', price = 150000, banido = false, modelo = 'komoda', capacidade = 15, tipo = 'outros' },
	{ hash = 1132262048, name = 'burrito5', price = 22000, banido = false, modelo = 'burrito5', capacidade = 250, tipo = 'utilitario' },
	{ hash = -2052737935, name = 'mule3', price = 25000, banido = false, modelo = 'mule3', capacidade = 300, tipo = 'serviço' },
	{ hash = 456714581, name = 'policet', price = 22000, banido = false, modelo = 'policet', capacidade = 15, tipo = 'outros' },
	{ hash = -2118901022, name = 'bmwz4', price = 35000, banido = false, modelo = 'bmwz4', capacidade = 15, tipo = 'outros' },
	{ hash = 464687292, name = 'tornado', price = 25000, banido = false, modelo = 'tornado', capacidade = 15, tipo = 'outros' },
	{ hash = 2067820283, name = 'tyrus', price = 35000, banido = false, modelo = 'tyrus', capacidade = 75, tipo = 'carros' },
	{ hash = 301427732, name = 'hexer', price = 12000, banido = false, modelo = 'hexer', capacidade = 20, tipo = 'motos' },
	{ hash = -1210451983, name = 'tampa3', price = 150000, banido = false, modelo = 'tampa3', capacidade = 15, tipo = 'outros' },
	{ hash = -1745203402, name = 'gburrito', price = 22000, banido = false, modelo = 'gburrito', capacidade = 250, tipo = 'utilitario' },
	{ hash = 835365551, name = 'trator', price = 50000, banido = false, modelo = 'trator', capacidade = 15, tipo = 'outros' },
	{ hash = -960289747, name = 'cablecar', price = 110000, banido = false, modelo = 'cablecar', capacidade = 15, tipo = 'outros' },
	{ hash = 1341474454, name = '2015polstang', price = 25000, banido = false, modelo = '2015polstang', capacidade = 15, tipo = 'outros' },
	{ hash = -893578776, name = 'ruffian', price = 20000, banido = false, modelo = 'ruffian', capacidade = 20, tipo = 'motos' },
	{ hash = 1258059543, name = 'Africa', price = 12000, banido = false, modelo = 'Africa', capacidade = 20, tipo = 'motos' },
	{ hash = 2072687711, name = 'carbonizzare', price = 100000, banido = false, modelo = 'carbonizzare', capacidade = 15, tipo = 'outros' },
	{ hash = 436874758, name = 's1000rr', price = 20000, banido = false, modelo = 's1000rr', capacidade = 20, tipo = 'motos' },
	{ hash = -1137532101, name = 'fq2', price = 35000, banido = false, modelo = 'fq2', capacidade = 15, tipo = 'outros' },
	{ hash = 108773431, name = 'coquette', price = 150000, banido = false, modelo = 'coquette', capacidade = 15, tipo = 'outros' },
	{ hash = 48339065, name = 'tiptruck', price = 25000, banido = false, modelo = 'tiptruck', capacidade = 15, tipo = 'outros' },
	{ hash = -2140210194, name = 'docktrailer', price = 40000, banido = false, modelo = 'docktrailer', capacidade = 15, tipo = 'outros' },
	{ hash = -2137348917, name = 'phantom', price = 40000, banido = false, modelo = 'phantom', capacidade = 300, tipo = 'serviço' },
	{ hash = -1006919392, name = 'cutter', price = 25000, banido = false, modelo = 'cutter', capacidade = 15, tipo = 'outros' },
	{ hash = 2016857647, name = 'futo', price = 100000, banido = false, modelo = 'futo', capacidade = 15, tipo = 'outros' },
	{ hash = -1042468582, name = 'WR20x5m', price = 50000, banido = false, modelo = 'WR20x5m', capacidade = 15, tipo = 'outros' },
	{ hash = -1661854193, name = 'dune', price = 50000, banido = false, modelo = 'dune', capacidade = 75, tipo = 'carros' },
	{ hash = 534258863, name = 'dune2', price = 50000, banido = false, modelo = 'dune2', capacidade = 75, tipo = 'carros' },
	{ hash = -1289178744, name = 'faggio3', price = 12000, banido = false, modelo = 'faggio3', capacidade = 20, tipo = 'motos' },
	{ hash = -488123221, name = 'predator', price = 40000, banido = false, modelo = 'predator', capacidade = 50, tipo = 'barcos' },
	{ hash = 499169875, name = 'fusilade', price = 35000, banido = false, modelo = 'fusilade', capacidade = 15, tipo = 'outros' },
	{ hash = 37348240, name = 'hotknife', price = 50000, banido = false, modelo = 'hotknife', capacidade = 15, tipo = 'outros' },
	{ hash = -400295096, name = 'tribike3', price = 12000, banido = false, modelo = 'tribike3', capacidade = 2, tipo = 'bike' },
	{ hash = 1770332643, name = 'dloader', price = 25000, banido = false, modelo = 'dloader', capacidade = 75, tipo = 'carros' },
	{ hash = 600450546, name = 'hustler', price = 50000, banido = false, modelo = 'hustler', capacidade = 15, tipo = 'outros' },
	{ hash = -825837129, name = 'vigero', price = 50000, banido = false, modelo = 'vigero', capacidade = 15, tipo = 'outros' },
	{ hash = 1177543287, name = 'dubsta', price = 50000, banido = false, modelo = 'dubsta', capacidade = 15, tipo = 'outros' },
	{ hash = -1794431517, name = 'ferrarif40', price = 100000, banido = false, modelo = 'ferrarif40', capacidade = 15, tipo = 'outros' },
	{ hash = 941494461, name = 'ruiner2', price = 150000, banido = false, modelo = 'ruiner2', capacidade = 15, tipo = 'outros' },
	{ hash = -394074634, name = 'dubsta2', price = 50000, banido = false, modelo = 'dubsta2', capacidade = 15, tipo = 'outros' },
	{ hash = -2130482718, name = 'dump', price = 40000, banido = false, modelo = 'dump', capacidade = 15, tipo = 'outros' },
	{ hash = 1119641113, name = 'slamvan3', price = 25000, banido = false, modelo = 'slamvan3', capacidade = 15, tipo = 'outros' },
	{ hash = -1523619738, name = 'alphaz1', price = 45000, banido = false, modelo = 'alphaz1', capacidade = 350, tipo = 'avioes' },
	{ hash = 652623448, name = 'fxxk16', price = 35000, banido = false, modelo = 'fxxk16', capacidade = 75, tipo = 'carros' },
	{ hash = 1023874553, name = 'basepm', price = 40000, banido = false, modelo = 'basepm', capacidade = 15, tipo = 'outros' },
	{ hash = -1705304628, name = 'rubble', price = 25000, banido = false, modelo = 'rubble', capacidade = 15, tipo = 'outros' },
	{ hash = 1742022738, name = 'slamvan6', price = 30000, banido = false, modelo = 'slamvan6', capacidade = 15, tipo = 'outros' },
	{ hash = 80636076, name = 'dominator', price = 150000, banido = false, modelo = 'dominator', capacidade = 15, tipo = 'outros' },
	{ hash = -836512833, name = 'fixter', price = 12000, banido = false, modelo = 'fixter', capacidade = 2, tipo = 'bike' },
	{ hash = 256198952, name = 'cg', price = 12000, banido = false, modelo = 'cg', capacidade = 20, tipo = 'motos' },
	{ hash = -685276541, name = 'emperor', price = 25000, banido = false, modelo = 'emperor', capacidade = 15, tipo = 'outros' },
	{ hash = -857356038, name = 'veto', price = 50000, banido = false, modelo = 'veto', capacidade = 15, tipo = 'outros' },
	{ hash = 884422927, name = 'habanero', price = 35000, banido = false, modelo = 'habanero', capacidade = 15, tipo = 'outros' },
	{ hash = -1883002148, name = 'emperor2', price = 25000, banido = false, modelo = 'emperor2', capacidade = 15, tipo = 'outros' },
	{ hash = -1241712818, name = 'emperor3', price = 25000, banido = false, modelo = 'emperor3', capacidade = 15, tipo = 'outros' },
	{ hash = -1214505995, name = 'shamal', price = 45000, banido = false, modelo = 'shamal', capacidade = 350, tipo = 'avioes' },
	{ hash = 2038858402, name = 'brutus3', price = 50000, banido = false, modelo = 'brutus3', capacidade = 75, tipo = 'carros' },
	{ hash = 1762279763, name = 'tornado3', price = 25000, banido = false, modelo = 'tornado3', capacidade = 15, tipo = 'outros' },
	{ hash = -1291952903, name = 'entityxf', price = 150000, banido = false, modelo = 'entityxf', capacidade = 75, tipo = 'carros' },
	{ hash = -566387422, name = 'elegy2', price = 100000, banido = false, modelo = 'elegy2', capacidade = 15, tipo = 'outros' },
	{ hash = -1770643266, name = 'tvtrailer', price = 40000, banido = false, modelo = 'tvtrailer', capacidade = 15, tipo = 'outros' },
	{ hash = 1830407356, name = 'peyote', price = 25000, banido = false, modelo = 'peyote', capacidade = 15, tipo = 'outros' },
	{ hash = -591610296, name = 'f620', price = 35000, banido = false, modelo = 'f620', capacidade = 15, tipo = 'outros' },
	{ hash = -452604007, name = 'rt3000', price = 80000, banido = false, modelo = 'rt3000', capacidade = 15, tipo = 'outros' },
	{ hash = 1507916787, name = 'picador', price = 35000, banido = false, modelo = 'picador', capacidade = 15, tipo = 'outros' },
	{ hash = -1625799799, name = 'amarokeb', price = 50000, banido = false, modelo = 'amarokeb', capacidade = 15, tipo = 'outros' },
	{ hash = 1127131465, name = 'fbi', price = 25000, banido = false, modelo = 'fbi', capacidade = 15, tipo = 'outros' },
	{ hash = 972671128, name = 'tampa', price = 150000, banido = false, modelo = 'tampa', capacidade = 15, tipo = 'outros' },
	{ hash = 1126569804, name = 'c63b', price = 35000, banido = false, modelo = 'c63b', capacidade = 15, tipo = 'outros' },
	{ hash = 1836027715, name = 'thrust', price = 12000, banido = false, modelo = 'thrust', capacidade = 20, tipo = 'motos' },
	{ hash = -1647941228, name = 'fbi2', price = 50000, banido = false, modelo = 'fbi2', capacidade = 15, tipo = 'outros' },
	{ hash = -2098947590, name = 'stingergt', price = 130000, banido = false, modelo = 'stingergt', capacidade = 15, tipo = 'outros' },
	{ hash = -391594584, name = 'felon', price = 35000, banido = false, modelo = 'felon', capacidade = 15, tipo = 'outros' },
	{ hash = 237764926, name = 'buffalo3', price = 25000, banido = false, modelo = 'buffalo3', capacidade = 15, tipo = 'outros' },
	{ hash = -311022263, name = 'seashark3', price = 40000, banido = false, modelo = 'seashark3', capacidade = 50, tipo = 'barcos' },
	{ hash = -1189015600, name = 'sandking', price = 50000, banido = false, modelo = 'sandking', capacidade = 75, tipo = 'carros' },
	{ hash = -1995326987, name = 'feltzer2', price = 30000, banido = false, modelo = 'feltzer2', capacidade = 15, tipo = 'outros' },
	{ hash = -2079240987, name = 'golg', price = 35000, banido = false, modelo = 'golg', capacidade = 15, tipo = 'outros' },
	{ hash = 1938952078, name = 'firetruk', price = 40000, banido = false, modelo = 'firetruk', capacidade = 15, tipo = 'outros' },
	{ hash = 1491375716, name = 'forklift', price = 25000, banido = false, modelo = 'forklift', capacidade = 15, tipo = 'outros' },
	{ hash = 1909141499, name = 'fugitive', price = 35000, banido = false, modelo = 'fugitive', capacidade = 15, tipo = 'outros' },
	{ hash = 1718441594, name = 'i8', price = 55000, banido = false, modelo = 'i8', capacidade = 75, tipo = 'carros' },
	{ hash = 2091594960, name = 'tr4', price = 40000, banido = false, modelo = 'tr4', capacidade = 15, tipo = 'outros' },
	{ hash = -1775728740, name = 'granger', price = 50000, banido = false, modelo = 'granger', capacidade = 15, tipo = 'outros' },
	{ hash = -1216765807, name = 'adder', price = 80000, banido = false, modelo = 'adder', capacidade = 75, tipo = 'carros' },
	{ hash = -1800170043, name = 'gauntlet', price = 25000, banido = false, modelo = 'gauntlet', capacidade = 15, tipo = 'outros' },
	{ hash = -769147461, name = 'caddy3', price = 10000, banido = false, modelo = 'caddy3', capacidade = 15, tipo = 'outros' },
	{ hash = 1518533038, name = 'hauler', price = 40000, banido = false, modelo = 'hauler', capacidade = 300, tipo = 'serviço' },
	{ hash = 144259586, name = '911R', price = 35000, banido = false, modelo = '911R', capacidade = 75, tipo = 'carros' },
	{ hash = 920453016, name = 'freightcont1', price = 110000, banido = false, modelo = 'freightcont1', capacidade = 15, tipo = 'outros' },
	{ hash = 418536135, name = 'infernus', price = 100000, banido = false, modelo = 'infernus', capacidade = 75, tipo = 'carros' },
	{ hash = 2031587082, name = 'retinue2', price = 150000, banido = false, modelo = 'retinue2', capacidade = 15, tipo = 'outros' },
	{ hash = -1289722222, name = 'ingot', price = 35000, banido = false, modelo = 'ingot', capacidade = 15, tipo = 'outros' },
	{ hash = 2078290630, name = 'tr2', price = 40000, banido = false, modelo = 'tr2', capacidade = 15, tipo = 'outros' },
	{ hash = -186537451, name = 'scorcher', price = 12000, banido = false, modelo = 'scorcher', capacidade = 2, tipo = 'bike' },
	{ hash = 886934177, name = 'intruder', price = 35000, banido = false, modelo = 'intruder', capacidade = 15, tipo = 'outros' },
	{ hash = -1177863319, name = 'issi2', price = 35000, banido = false, modelo = 'issi2', capacidade = 15, tipo = 'outros' },
	{ hash = -1894894188, name = 'surge', price = 35000, banido = false, modelo = 'surge', capacidade = 15, tipo = 'outros' },
	{ hash = 758895617, name = 'ztype', price = 70000, banido = false, modelo = 'ztype', capacidade = 15, tipo = 'outros' },
	{ hash = -998177792, name = 'visione', price = 35000, banido = false, modelo = 'visione', capacidade = 75, tipo = 'carros' },
	{ hash = -1961627517, name = 'stretch', price = 35000, banido = false, modelo = 'stretch', capacidade = 15, tipo = 'outros' },
	{ hash = -624529134, name = 'Jackal', price = 35000, banido = false, modelo = 'Jackal', capacidade = 15, tipo = 'outros' },
	{ hash = -120287622, name = 'journey', price = 25000, banido = false, modelo = 'journey', capacidade = 250, tipo = 'utilitario' },
	{ hash = 1051415893, name = 'jb700', price = 150000, banido = false, modelo = 'jb700', capacidade = 15, tipo = 'outros' },
	{ hash = 11251904, name = 'carbonrs', price = 20000, banido = false, modelo = 'carbonrs', capacidade = 20, tipo = 'motos' },
	{ hash = -1707353429, name = 'monza', price = 35000, banido = false, modelo = 'monza', capacidade = 15, tipo = 'outros' },
	{ hash = -221995372, name = 'gtr50', price = 100000, banido = false, modelo = 'gtr50', capacidade = 15, tipo = 'outros' },
	{ hash = 544021352, name = 'khamelion', price = 35000, banido = false, modelo = 'khamelion', capacidade = 15, tipo = 'outros' },
	{ hash = -1582061455, name = 'jester4', price = 80000, banido = false, modelo = 'jester4', capacidade = 15, tipo = 'outros' },
	{ hash = 177270108, name = 'phantom3', price = 40000, banido = false, modelo = 'phantom3', capacidade = 300, tipo = 'serviço' },
	{ hash = 628003514, name = 'issi4', price = 52000, banido = false, modelo = 'issi4', capacidade = 15, tipo = 'outros' },
	{ hash = 1269098716, name = 'landstalker', price = 50000, banido = false, modelo = 'landstalker', capacidade = 15, tipo = 'outros' },
	{ hash = -293031363, name = 's1000docandidato', price = 12000, banido = false, modelo = 's1000docandidato', capacidade = 20, tipo = 'motos' },
	{ hash = -282946103, name = 'suntrap', price = 40000, banido = false, modelo = 'suntrap', capacidade = 50, tipo = 'barcos' },
	{ hash = -1529242755, name = 'raiden', price = 35000, banido = false, modelo = 'raiden', capacidade = 15, tipo = 'outros' },
	{ hash = -1667727259, name = 'nh2r', price = 20000, banido = false, modelo = 'nh2r', capacidade = 20, tipo = 'motos' },
	{ hash = 469291905, name = 'lguard', price = 50000, banido = false, modelo = 'lguard', capacidade = 15, tipo = 'outros' },
	{ hash = 621481054, name = 'luxor', price = 45000, banido = false, modelo = 'luxor', capacidade = 350, tipo = 'avioes' },
	{ hash = 914654722, name = 'mesa', price = 50000, banido = false, modelo = 'mesa', capacidade = 15, tipo = 'outros' },
	{ hash = 1537277726, name = 'issi5', price = 52000, banido = false, modelo = 'issi5', capacidade = 15, tipo = 'outros' },
	{ hash = -339587598, name = 'swift', price = 52000, banido = false, modelo = 'swift', capacidade = 20, tipo = 'helicopteros' },
	{ hash = -748008636, name = 'mesa2', price = 50000, banido = false, modelo = 'mesa2', capacidade = 15, tipo = 'outros' },
	{ hash = 765170133, name = 'db11', price = 80000, banido = false, modelo = 'db11', capacidade = 75, tipo = 'carros' },
	{ hash = -2064372143, name = 'mesa3', price = 50000, banido = false, modelo = 'mesa3', capacidade = 75, tipo = 'carros' },
	{ hash = 321739290, name = 'crusader', price = 50000, banido = false, modelo = 'crusader', capacidade = 15, tipo = 'outros' },
	{ hash = 1422100338, name = 'dlfedexplane', price = 80000, banido = false, modelo = 'dlfedexplane', capacidade = 350, tipo = 'avioes' },
	{ hash = 1717532765, name = 'manana2', price = 25000, banido = false, modelo = 'manana2', capacidade = 15, tipo = 'outros' },
	{ hash = -310465116, name = 'minivan', price = 50000, banido = false, modelo = 'minivan', capacidade = 250, tipo = 'utilitario' },
	{ hash = -1270846222, name = 'hilux2019', price = 25000, banido = false, modelo = 'hilux2019', capacidade = 15, tipo = 'outros' },
	{ hash = -784816453, name = 'mixer', price = 40000, banido = false, modelo = 'mixer', capacidade = 15, tipo = 'outros' },
	{ hash = 475220373, name = 'mixer2', price = 40000, banido = false, modelo = 'mixer2', capacidade = 15, tipo = 'outros' },
	{ hash = -433375717, name = 'monroe', price = 70000, banido = false, modelo = 'monroe', capacidade = 15, tipo = 'outros' },
	{ hash = -390364559, name = 'corollarod', price = 50000, banido = false, modelo = 'corollarod', capacidade = 15, tipo = 'outros' },
	{ hash = -1207771834, name = 'rebel', price = 50000, banido = false, modelo = 'rebel', capacidade = 75, tipo = 'carros' },
	{ hash = 1783355638, name = 'mower', price = 15000, banido = false, modelo = 'mower', capacidade = 15, tipo = 'outros' },
	{ hash = -556794296, name = 'compass', price = 50000, banido = false, modelo = 'compass', capacidade = 15, tipo = 'outros' },
	{ hash = 904750859, name = 'mule', price = 25000, banido = false, modelo = 'mule', capacidade = 300, tipo = 'serviço' },
	{ hash = -2119578145, name = 'faction', price = 150000, banido = false, modelo = 'faction', capacidade = 15, tipo = 'outros' },
	{ hash = 1653666139, name = 'pounder2', price = 25000, banido = false, modelo = 'pounder2', capacidade = 5000, tipo = 'serviço' },
	{ hash = -845961253, name = 'monster', price = 500000, banido = false, modelo = 'monster', capacidade = 75, tipo = 'carros' },
	{ hash = -1050465301, name = 'mule2', price = 25000, banido = false, modelo = 'mule2', capacidade = 300, tipo = 'serviço' },
	{ hash = 290449028, name = 'ferraricalifornia', price = 150000, banido = false, modelo = 'ferraricalifornia', capacidade = 15, tipo = 'outros' },
	{ hash = 788045382, name = 'sanchez', price = 12000, banido = false, modelo = 'sanchez', capacidade = 20, tipo = 'motos' },
	{ hash = 1348744438, name = 'oracle', price = 35000, banido = false, modelo = 'oracle', capacidade = 15, tipo = 'outros' },
	{ hash = -506359117, name = 'x6m', price = 50000, banido = false, modelo = 'x6m', capacidade = 15, tipo = 'outros' },
	{ hash = -511601230, name = 'oracle2', price = 35000, banido = false, modelo = 'oracle2', capacidade = 15, tipo = 'outros' },
	{ hash = 1141721473, name = 's10eb', price = 50000, banido = false, modelo = 's10eb', capacidade = 15, tipo = 'outros' },
	{ hash = 569305213, name = 'packer', price = 40000, banido = false, modelo = 'packer', capacidade = 300, tipo = 'serviço' },
	{ hash = -1590337689, name = 'blazer5', price = 12000, banido = false, modelo = 'blazer5', capacidade = 75, tipo = 'carros' },
	{ hash = -808457413, name = 'patriot', price = 50000, banido = false, modelo = 'patriot', capacidade = 15, tipo = 'outros' },
	{ hash = 223258115, name = 'sabregt2', price = 150000, banido = false, modelo = 'sabregt2', capacidade = 15, tipo = 'outros' },
	{ hash = 1429622905, name = 'brioso2', price = 35000, banido = false, modelo = 'brioso2', capacidade = 15, tipo = 'outros' },
	{ hash = -2007026063, name = 'pbus', price = 25000, banido = false, modelo = 'pbus', capacidade = 15, tipo = 'outros' },
	{ hash = -276744698, name = 'patrolboat', price = 40000, banido = false, modelo = 'patrolboat', capacidade = 50, tipo = 'barcos' },
	{ hash = 1531094468, name = 'tornado2', price = 25000, banido = false, modelo = 'tornado2', capacidade = 15, tipo = 'outros' },
	{ hash = 448402357, name = 'cruiser', price = 12000, banido = false, modelo = 'cruiser', capacidade = 2, tipo = 'bike' },
	{ hash = 734217681, name = 'sadler2', price = 25000, banido = false, modelo = 'sadler2', capacidade = 15, tipo = 'outros' },
	{ hash = -101696514, name = 'rmodbugatti', price = 80000, banido = false, modelo = 'rmodbugatti', capacidade = 75, tipo = 'carros' },
	{ hash = -377465520, name = 'penumbra', price = 150000, banido = false, modelo = 'penumbra', capacidade = 15, tipo = 'outros' },
	{ hash = -2095439403, name = 'phoenix', price = 20000, banido = false, modelo = 'phoenix', capacidade = 15, tipo = 'outros' },
	{ hash = -1419946028, name = 'fordraptor2017', price = 50000, banido = false, modelo = 'fordraptor2017', capacidade = 75, tipo = 'carros' },
	{ hash = 2112052861, name = 'pounder', price = 25000, banido = false, modelo = 'pounder', capacidade = 300, tipo = 'serviço' },
	{ hash = 1924372706, name = 'fusca', price = 25000, banido = false, modelo = 'fusca', capacidade = 15, tipo = 'outros' },
	{ hash = -82626025, name = 'savage', price = 52000, banido = false, modelo = 'savage', capacidade = 20, tipo = 'helicopteros' },
	{ hash = 642617954, name = 'freightgrain', price = 110000, banido = false, modelo = 'freightgrain', capacidade = 15, tipo = 'outros' },
	{ hash = 1418132356, name = 'prius', price = 35000, banido = false, modelo = 'prius', capacidade = 15, tipo = 'outros' },
	{ hash = -1352468814, name = 'trflat', price = 40000, banido = false, modelo = 'trflat', capacidade = 15, tipo = 'outros' },
	{ hash = 1102544804, name = 'verlierer2', price = 150000, banido = false, modelo = 'verlierer2', capacidade = 15, tipo = 'outros' },
	{ hash = 2046537925, name = 'police', price = 35000, banido = false, modelo = 'police', capacidade = 15, tipo = 'outros' },
	{ hash = -42051018, name = 'veneno', price = 80000, banido = false, modelo = 'veneno', capacidade = 75, tipo = 'carros' },
	{ hash = -1660661558, name = 'maverick', price = 52000, banido = false, modelo = 'maverick', capacidade = 20, tipo = 'helicopteros' },
	{ hash = -4816535, name = 'nissanskyliner34', price = 35000, banido = false, modelo = 'nissanskyliner34', capacidade = 15, tipo = 'outros' },
	{ hash = -1973172295, name = 'police4', price = 35000, banido = false, modelo = 'police4', capacidade = 15, tipo = 'outros' },
	{ hash = -295689028, name = 'sultanrs', price = 35000, banido = false, modelo = 'sultanrs', capacidade = 75, tipo = 'carros' },
	{ hash = -989838902, name = 'altafome', price = 20000, banido = false, modelo = 'altafome', capacidade = 20, tipo = 'motos' },
	{ hash = -1067176722, name = 'vantage', price = 150000, banido = false, modelo = 'vantage', capacidade = 15, tipo = 'outros' },
	{ hash = -1627000575, name = 'police2', price = 25000, banido = false, modelo = 'police2', capacidade = 15, tipo = 'outros' },
	{ hash = 819197656, name = 'sheava', price = 35000, banido = false, modelo = 'sheava', capacidade = 75, tipo = 'carros' },
	{ hash = 1912215274, name = 'police3', price = 25000, banido = false, modelo = 'police3', capacidade = 15, tipo = 'outros' },
	{ hash = -1536924937, name = 'policeold1', price = 50000, banido = false, modelo = 'policeold1', capacidade = 15, tipo = 'outros' },
	{ hash = -1676934296, name = 'lwalk458', price = 35000, banido = false, modelo = 'lwalk458', capacidade = 15, tipo = 'outros' },
	{ hash = 1504306544, name = 'torero', price = 100000, banido = false, modelo = 'torero', capacidade = 15, tipo = 'outros' },
	{ hash = -1779120616, name = 'policeold2', price = 35000, banido = false, modelo = 'policeold2', capacidade = 15, tipo = 'outros' },
	{ hash = -1358197432, name = 'tigon', price = 35000, banido = false, modelo = 'tigon', capacidade = 75, tipo = 'carros' },
	{ hash = 943752001, name = 'pony2', price = 22000, banido = false, modelo = 'pony2', capacidade = 250, tipo = 'utilitario' },
	{ hash = -1450650718, name = 'prairie', price = 35000, banido = false, modelo = 'prairie', capacidade = 15, tipo = 'outros' },
	{ hash = 16646064, name = 'virgo3', price = 150000, banido = false, modelo = 'virgo3', capacidade = 15, tipo = 'outros' },
	{ hash = -589178377, name = 'ratloader2', price = 50000, banido = false, modelo = 'ratloader2', capacidade = 15, tipo = 'outros' },
	{ hash = -1594927898, name = 'vwgolfmk7', price = 35000, banido = false, modelo = 'vwgolfmk7', capacidade = 15, tipo = 'outros' },
	{ hash = 1503785834, name = 'bike', price = 12000, banido = false, modelo = 'bike', capacidade = 2, tipo = 'bike' },
	{ hash = 741586030, name = 'pranger', price = 50000, banido = false, modelo = 'pranger', capacidade = 15, tipo = 'outros' },
	{ hash = -1883869285, name = 'premier', price = 35000, banido = false, modelo = 'premier', capacidade = 15, tipo = 'outros' },
	{ hash = -14495224, name = 'regina', price = 25000, banido = false, modelo = 'regina', capacidade = 15, tipo = 'outros' },
	{ hash = 1593933419, name = 'seasparrow3', price = 52000, banido = false, modelo = 'seasparrow3', capacidade = 20, tipo = 'helicopteros' },
	{ hash = -1150599089, name = 'primo', price = 35000, banido = false, modelo = 'primo', capacidade = 15, tipo = 'outros' },
	{ hash = 356391690, name = 'proptrailer', price = 40000, banido = false, modelo = 'proptrailer', capacidade = 15, tipo = 'outros' },
	{ hash = 1034187331, name = 'nero', price = 80000, banido = false, modelo = 'nero', capacidade = 75, tipo = 'carros' },
	{ hash = 1151599972, name = 'passat', price = 55000, banido = false, modelo = 'passat', capacidade = 15, tipo = 'outros' },
	{ hash = -877478386, name = 'trailers', price = 40000, banido = false, modelo = 'trailers', capacidade = 15, tipo = 'outros' },
	{ hash = -301519603, name = 'ram2500', price = 25000, banido = false, modelo = 'ram2500', capacidade = 250, tipo = 'utilitario' },
	{ hash = 1645267888, name = 'rancherxl', price = 50000, banido = false, modelo = 'rancherxl', capacidade = 75, tipo = 'carros' },
	{ hash = 683047626, name = 'contender', price = 25000, banido = false, modelo = 'contender', capacidade = 15, tipo = 'outros' },
	{ hash = 1999409339, name = '63lb', price = 150000, banido = false, modelo = '63lb', capacidade = 75, tipo = 'carros' },
	{ hash = 1933662059, name = 'rancherxl2', price = 50000, banido = false, modelo = 'rancherxl2', capacidade = 75, tipo = 'carros' },
	{ hash = -1215316954, name = 'c63', price = 35000, banido = false, modelo = 'c63', capacidade = 15, tipo = 'outros' },
	{ hash = -1259134696, name = 'flashgt', price = 35000, banido = false, modelo = 'flashgt', capacidade = 15, tipo = 'outros' },
	{ hash = -1323100960, name = 'towtruck', price = 25000, banido = false, modelo = 'towtruck', capacidade = 15, tipo = 'outros' },
	{ hash = -1934452204, name = 'rapidgt', price = 35000, banido = false, modelo = 'rapidgt', capacidade = 15, tipo = 'outros' },
	{ hash = -399841706, name = 'baletrailer', price = 40000, banido = false, modelo = 'baletrailer', capacidade = 15, tipo = 'outros' },
	{ hash = 1737773231, name = 'rapidgt2', price = 35000, banido = false, modelo = 'rapidgt2', capacidade = 15, tipo = 'outros' },
	{ hash = -415804296, name = 'trail20pmespg2', price = 50000, banido = false, modelo = 'trail20pmespg2', capacidade = 15, tipo = 'outros' },
	{ hash = 2016027501, name = 'trailerlogs', price = 40000, banido = false, modelo = 'trailerlogs', capacidade = 15, tipo = 'outros' },
	{ hash = -1651067813, name = 'radi', price = 50000, banido = false, modelo = 'radi', capacidade = 15, tipo = 'outros' },
	{ hash = 1394036463, name = 'cargobob3', price = 52000, banido = false, modelo = 'cargobob3', capacidade = 20, tipo = 'helicopteros' },
	{ hash = -1410071812, name = 'hiluxsw4rota', price = 25000, banido = false, modelo = 'hiluxsw4rota', capacidade = 15, tipo = 'outros' },
	{ hash = -1134706562, name = 'taipan', price = 35000, banido = false, modelo = 'taipan', capacidade = 75, tipo = 'carros' },
	{ hash = 1591739866, name = 'deveste', price = 35000, banido = false, modelo = 'deveste', capacidade = 75, tipo = 'carros' },
	{ hash = -2009005332, name = 'tonkat', price = 25000, banido = false, modelo = 'tonkat', capacidade = 15, tipo = 'outros' },
	{ hash = -667151410, name = 'ratloader', price = 50000, banido = false, modelo = 'ratloader', capacidade = 15, tipo = 'outros' },
	{ hash = 165154707, name = 'miljet', price = 45000, banido = false, modelo = 'miljet', capacidade = 350, tipo = 'avioes' },
	{ hash = -2045594037, name = 'rebel2', price = 50000, banido = false, modelo = 'rebel2', capacidade = 75, tipo = 'carros' },
	{ hash = -1098802077, name = 'rentalbus', price = 40000, banido = false, modelo = 'rentalbus', capacidade = 15, tipo = 'outros' },
	{ hash = -227741703, name = 'ruiner', price = 150000, banido = false, modelo = 'ruiner', capacidade = 15, tipo = 'outros' },
	{ hash = 679453769, name = 'cerberus2', price = 25000, banido = false, modelo = 'cerberus2', capacidade = 300, tipo = 'serviço' },
	{ hash = 1162065741, name = 'rumpo', price = 22000, banido = false, modelo = 'rumpo', capacidade = 250, tipo = 'utilitario' },
	{ hash = -1776615689, name = 'rumpo2', price = 22000, banido = false, modelo = 'rumpo2', capacidade = 250, tipo = 'utilitario' },
	{ hash = 1026149675, name = 'youga2', price = 22000, banido = false, modelo = 'youga2', capacidade = 250, tipo = 'utilitario' },
	{ hash = 767087018, name = 'alpha', price = 80000, banido = false, modelo = 'alpha', capacidade = 15, tipo = 'outros' },
	{ hash = 782665360, name = 'rhino', price = 40000, banido = false, modelo = 'rhino', capacidade = 15, tipo = 'outros' },
	{ hash = 1489967196, name = 'schafter4', price = 35000, banido = false, modelo = 'schafter4', capacidade = 15, tipo = 'outros' },
	{ hash = 2034235290, name = 'mazdarx7', price = 25000, banido = false, modelo = 'mazdarx7', capacidade = 15, tipo = 'outros' },
	{ hash = -845979911, name = 'ripley', price = 25000, banido = false, modelo = 'ripley', capacidade = 15, tipo = 'outros' },
	{ hash = 523724515, name = 'voodoo2', price = 25000, banido = false, modelo = 'voodoo2', capacidade = 15, tipo = 'outros' },
	{ hash = 2136773105, name = 'rocoto', price = 35000, banido = false, modelo = 'rocoto', capacidade = 15, tipo = 'outros' },
	{ hash = 235772231, name = 'fxxkevo', price = 35000, banido = false, modelo = 'fxxkevo', capacidade = 75, tipo = 'carros' },
	{ hash = 771711535, name = 'submersible', price = 40000, banido = false, modelo = 'submersible', capacidade = 50, tipo = 'barcos' },
	{ hash = -507495760, name = 'schlagen', price = 30000, banido = false, modelo = 'schlagen', capacidade = 15, tipo = 'outros' },
	{ hash = -1153565105, name = 'energyrepair', price = 25000, banido = false, modelo = 'energyrepair', capacidade = 15, tipo = 'outros' },
	{ hash = 2117711508, name = 'Skyline', price = 100000, banido = false, modelo = 'Skyline', capacidade = 15, tipo = 'outros' },
	{ hash = 579201839, name = 'sw4tatico', price = 50000, banido = false, modelo = 'sw4tatico', capacidade = 15, tipo = 'outros' },
	{ hash = -2042350822, name = 'bruiser3', price = 40000, banido = false, modelo = 'bruiser3', capacidade = 75, tipo = 'carros' },
	{ hash = -1685021548, name = 'sabregt', price = 150000, banido = false, modelo = 'sabregt', capacidade = 15, tipo = 'outros' },
	{ hash = -599568815, name = 'sadler', price = 25000, banido = false, modelo = 'sadler', capacidade = 15, tipo = 'outros' },
	{ hash = 1909700336, name = 'cerberus3', price = 25000, banido = false, modelo = 'cerberus3', capacidade = 300, tipo = 'serviço' },
	{ hash = -1378825203, name = 'xt660vip', price = 12000, banido = false, modelo = 'xt660vip', capacidade = 20, tipo = 'motos' },
	{ hash = 989381445, name = 'sandking2', price = 50000, banido = false, modelo = 'sandking2', capacidade = 75, tipo = 'carros' },
	{ hash = 1030400667, name = 'freight', price = 110000, banido = false, modelo = 'freight', capacidade = 15, tipo = 'outros' },
	{ hash = -1255452397, name = 'schafter2', price = 35000, banido = false, modelo = 'schafter2', capacidade = 15, tipo = 'outros' },
	{ hash = 740289177, name = 'vagrant', price = 50000, banido = false, modelo = 'vagrant', capacidade = 75, tipo = 'carros' },
	{ hash = 784565758, name = 'coquette3', price = 150000, banido = false, modelo = 'coquette3', capacidade = 15, tipo = 'outros' },
	{ hash = -746882698, name = 'schwarzer', price = 35000, banido = false, modelo = 'schwarzer', capacidade = 15, tipo = 'outros' },
	{ hash = 482197771, name = 'lynx', price = 150000, banido = false, modelo = 'lynx', capacidade = 15, tipo = 'outros' },
	{ hash = 1349725314, name = 'sentinel', price = 35000, banido = false, modelo = 'sentinel', capacidade = 15, tipo = 'outros' },
	{ hash = 788747387, name = 'buzzard', price = 52000, banido = false, modelo = 'buzzard', capacidade = 20, tipo = 'helicopteros' },
	{ hash = 1305247149, name = 'gs310', price = 12000, banido = false, modelo = 'gs310', capacidade = 20, tipo = 'motos' },
	{ hash = 129391352, name = 'cooperworks', price = 35000, banido = false, modelo = 'cooperworks', capacidade = 15, tipo = 'outros' },
	{ hash = 873639469, name = 'sentinel2', price = 35000, banido = false, modelo = 'sentinel2', capacidade = 15, tipo = 'outros' },
	{ hash = -956048545, name = 'taxi', price = 25000, banido = false, modelo = 'taxi', capacidade = 15, tipo = 'outros' },
	{ hash = -1122289213, name = 'zion', price = 35000, banido = false, modelo = 'zion', capacidade = 15, tipo = 'outros' },
	{ hash = 408825843, name = 'outlaw', price = 50000, banido = false, modelo = 'outlaw', capacidade = 75, tipo = 'carros' },
	{ hash = -2076478498, name = 'tractor2', price = 50000, banido = false, modelo = 'tractor2', capacidade = 15, tipo = 'outros' },
	{ hash = -1193103848, name = 'zion2', price = 35000, banido = false, modelo = 'zion2', capacidade = 15, tipo = 'outros' },
	{ hash = 295054921, name = 'annihilator2', price = 52000, banido = false, modelo = 'annihilator2', capacidade = 20, tipo = 'helicopteros' },
	{ hash = 1337041428, name = 'serrano', price = 50000, banido = false, modelo = 'serrano', capacidade = 15, tipo = 'outros' },
	{ hash = -1683328900, name = 'sheriff', price = 25000, banido = false, modelo = 'sheriff', capacidade = 15, tipo = 'outros' },
	{ hash = 1352136073, name = 'sc1', price = 35000, banido = false, modelo = 'sc1', capacidade = 75, tipo = 'carros' },
	{ hash = 1922257928, name = 'sheriff2', price = 50000, banido = false, modelo = 'sheriff2', capacidade = 15, tipo = 'outros' },
	{ hash = -2139973206, name = 'entregas', price = 20000, banido = false, modelo = 'entregas', capacidade = 20, tipo = 'motos' },
	{ hash = -810318068, name = 'speedo', price = 22000, banido = false, modelo = 'speedo', capacidade = 250, tipo = 'utilitario' },
	{ hash = 342059638, name = 'xj6', price = 12000, banido = false, modelo = 'xj6', capacidade = 20, tipo = 'motos' },
	{ hash = 728614474, name = 'speedo2', price = 22000, banido = false, modelo = 'speedo2', capacidade = 250, tipo = 'utilitario' },
	{ hash = -1477580979, name = 'stanier', price = 35000, banido = false, modelo = 'stanier', capacidade = 15, tipo = 'outros' },
	{ hash = -239238033, name = 'eb350', price = 52000, banido = false, modelo = 'eb350', capacidade = 20, tipo = 'helicopteros' },
	{ hash = -586459613, name = 'ttrs', price = 35000, banido = false, modelo = 'ttrs', capacidade = 15, tipo = 'outros' },
	{ hash = -1180494048, name = 'trailrota', price = 25000, banido = false, modelo = 'trailrota', capacidade = 15, tipo = 'outros' },
	{ hash = 1123216662, name = 'superd', price = 25000, banido = false, modelo = 'superd', capacidade = 15, tipo = 'outros' },
	{ hash = 1545842587, name = 'stinger', price = 130000, banido = false, modelo = 'stinger', capacidade = 15, tipo = 'outros' },
	{ hash = -1471164788, name = 'toyotasupragr', price = 80000, banido = false, modelo = 'toyotasupragr', capacidade = 15, tipo = 'outros' },
	{ hash = -1278105743, name = 'R34', price = 150000, banido = false, modelo = 'R34', capacidade = 15, tipo = 'outros' },
	{ hash = 1747439474, name = 'stockade', price = 40000, banido = false, modelo = 'stockade', capacidade = 300, tipo = 'serviço' },
	{ hash = 1009171724, name = 'impaler2', price = 30000, banido = false, modelo = 'impaler2', capacidade = 15, tipo = 'outros' },
	{ hash = -2096818938, name = 'technical', price = 50000, banido = false, modelo = 'technical', capacidade = 75, tipo = 'carros' },
	{ hash = -214455498, name = 'stockade3', price = 40000, banido = false, modelo = 'stockade3', capacidade = 300, tipo = 'serviço' },
	{ hash = 196747873, name = 'elegy', price = 100000, banido = false, modelo = 'elegy', capacidade = 15, tipo = 'outros' },
	{ hash = 970598228, name = 'sultan', price = 35000, banido = false, modelo = 'sultan', capacidade = 15, tipo = 'outros' },
	{ hash = 384071873, name = 'surano', price = 80000, banido = false, modelo = 'surano', capacidade = 15, tipo = 'outros' },
	{ hash = 699456151, name = 'surfer', price = 22000, banido = false, modelo = 'surfer', capacidade = 250, tipo = 'utilitario' },
	{ hash = -1311240698, name = 'surfer2', price = 22000, banido = false, modelo = 'surfer2', capacidade = 250, tipo = 'utilitario' },
	{ hash = 1951180813, name = 'taco', price = 25000, banido = false, modelo = 'taco', capacidade = 250, tipo = 'utilitario' },
	{ hash = 741090084, name = 'gargoyle', price = 12000, banido = false, modelo = 'gargoyle', capacidade = 20, tipo = 'motos' },
	{ hash = -1008861746, name = 'tailgater', price = 35000, banido = false, modelo = 'tailgater', capacidade = 15, tipo = 'outros' },
	{ hash = 1784254509, name = 'tr3', price = 40000, banido = false, modelo = 'tr3', capacidade = 15, tipo = 'outros' },
	{ hash = 1939826804, name = 'jeepcherokee', price = 35000, banido = false, modelo = 'jeepcherokee', capacidade = 15, tipo = 'outros' },
	{ hash = 1086534307, name = 'manchez2', price = 12000, banido = false, modelo = 'manchez2', capacidade = 20, tipo = 'motos' },
	{ hash = 1917016601, name = 'trash', price = 40000, banido = false, modelo = 'trash', capacidade = 15, tipo = 'outros' },
	{ hash = 1641462412, name = 'tractor', price = 50000, banido = false, modelo = 'tractor', capacidade = 15, tipo = 'outros' },
	{ hash = 2049897956, name = 'rapidgt3', price = 100000, banido = false, modelo = 'rapidgt3', capacidade = 15, tipo = 'outros' },
	{ hash = 1445631933, name = 'tractor3', price = 50000, banido = false, modelo = 'tractor3', capacidade = 15, tipo = 'outros' },
	{ hash = 1019737494, name = 'graintrailer', price = 40000, banido = false, modelo = 'graintrailer', capacidade = 15, tipo = 'outros' },
	{ hash = -947761570, name = 'tiptruck2', price = 25000, banido = false, modelo = 'tiptruck2', capacidade = 15, tipo = 'outros' },
	{ hash = 1200120654, name = 'fxxk', price = 35000, banido = false, modelo = 'fxxk', capacidade = 75, tipo = 'carros' },
	{ hash = 1941029835, name = 'tourbus', price = 40000, banido = false, modelo = 'tourbus', capacidade = 15, tipo = 'outros' },
	{ hash = 884483972, name = 'oppressor', price = 20000, banido = false, modelo = 'oppressor', capacidade = 20, tipo = 'motos' },
	{ hash = 516990260, name = 'utillitruck', price = 25000, banido = false, modelo = 'utillitruck', capacidade = 15, tipo = 'outros' },
	{ hash = 1994431699, name = 'ambiental', price = 50000, banido = false, modelo = 'ambiental', capacidade = 15, tipo = 'outros' },
	{ hash = -1030275036, name = 'seashark', price = 40000, banido = false, modelo = 'seashark', capacidade = 50, tipo = 'barcos' },
	{ hash = -740742391, name = 'mercedesa45', price = 35000, banido = false, modelo = 'mercedesa45', capacidade = 15, tipo = 'outros' },
	{ hash = -513508731, name = '4882', price = 35000, banido = false, modelo = '4882', capacidade = 75, tipo = 'carros' },
	{ hash = 887537515, name = 'utillitruck2', price = 25000, banido = false, modelo = 'utillitruck2', capacidade = 15, tipo = 'outros' },
	{ hash = 2132890591, name = 'utillitruck3', price = 25000, banido = false, modelo = 'utillitruck3', capacidade = 15, tipo = 'outros' },
	{ hash = -692292317, name = 'chernobog', price = 40000, banido = false, modelo = 'chernobog', capacidade = 15, tipo = 'outros' },
	{ hash = 729783779, name = 'slamvan', price = 25000, banido = false, modelo = 'slamvan', capacidade = 15, tipo = 'outros' },
	{ hash = 1131912276, name = 'BMX', price = 12000, banido = false, modelo = 'BMX', capacidade = 2, tipo = 'bike' },
	{ hash = -34623805, name = 'policeb', price = 12000, banido = false, modelo = 'policeb', capacidade = 15, tipo = 'outros' },
	{ hash = 1617472902, name = 'fagaloa', price = 25000, banido = false, modelo = 'fagaloa', capacidade = 15, tipo = 'outros' },
	{ hash = 1777363799, name = 'washington', price = 35000, banido = false, modelo = 'washington', capacidade = 15, tipo = 'outros' },
	{ hash = -2115793025, name = 'avarus', price = 12000, banido = false, modelo = 'avarus', capacidade = 20, tipo = 'motos' },
	{ hash = 65402552, name = 'youga', price = 22000, banido = false, modelo = 'youga', capacidade = 250, tipo = 'utilitario' },
	{ hash = -431692672, name = 'panto', price = 35000, banido = false, modelo = 'panto', capacidade = 15, tipo = 'outros' },
	{ hash = -1890996696, name = 'brutus2', price = 50000, banido = false, modelo = 'brutus2', capacidade = 75, tipo = 'carros' },
	{ hash = -1453280962, name = 'sanchez2', price = 12000, banido = false, modelo = 'sanchez2', capacidade = 20, tipo = 'motos' },
	{ hash = 349605904, name = 'chino', price = 150000, banido = false, modelo = 'chino', capacidade = 15, tipo = 'outros' },
	{ hash = 1127861609, name = 'tribike', price = 12000, banido = false, modelo = 'tribike', capacidade = 2, tipo = 'bike' },
	{ hash = 970385471, name = 'hydra', price = 45000, banido = false, modelo = 'hydra', capacidade = 350, tipo = 'avioes' },
	{ hash = -1775453271, name = 'tiger1200', price = 12000, banido = false, modelo = 'tiger1200', capacidade = 20, tipo = 'motos' },
	{ hash = 2025593404, name = 'cargobob4', price = 52000, banido = false, modelo = 'cargobob4', capacidade = 20, tipo = 'helicopteros' },
	{ hash = -1233807380, name = 'tribike2', price = 12000, banido = false, modelo = 'tribike2', capacidade = 2, tipo = 'bike' },
	{ hash = -1758137366, name = 'penetrator', price = 35000, banido = false, modelo = 'penetrator', capacidade = 75, tipo = 'carros' },
	{ hash = 1488164764, name = 'paradise', price = 22000, banido = false, modelo = 'paradise', capacidade = 250, tipo = 'utilitario' },
	{ hash = 338562499, name = 'vacca', price = 35000, banido = false, modelo = 'vacca', capacidade = 75, tipo = 'carros' },
	{ hash = 1871995513, name = 'yosemite', price = 25000, banido = false, modelo = 'yosemite', capacidade = 15, tipo = 'outros' },
	{ hash = -1579285622, name = 'r33', price = 35000, banido = false, modelo = 'r33', capacidade = 15, tipo = 'outros' },
	{ hash = -909201658, name = 'pcj', price = 20000, banido = false, modelo = 'pcj', capacidade = 20, tipo = 'motos' },
	{ hash = 1672195559, name = 'akuma', price = 20000, banido = false, modelo = 'akuma', capacidade = 20, tipo = 'motos' },
	{ hash = -2140431165, name = 'bagger', price = 12000, banido = false, modelo = 'bagger', capacidade = 20, tipo = 'motos' },
	{ hash = -1824291874, name = '19ramdonk', price = 50000, banido = false, modelo = '19ramdonk', capacidade = 75, tipo = 'carros' },
	{ hash = -891462355, name = 'bati2', price = 20000, banido = false, modelo = 'bati2', capacidade = 20, tipo = 'motos' },
	{ hash = 837858166, name = 'annihilator', price = 52000, banido = false, modelo = 'annihilator', capacidade = 20, tipo = 'helicopteros' },
	{ hash = 1935444402, name = 'cbb', price = 12000, banido = false, modelo = 'cbb', capacidade = 20, tipo = 'motos' },
	{ hash = -1649536104, name = 'phantom2', price = 40000, banido = false, modelo = 'phantom2', capacidade = 300, tipo = 'serviço' },
	{ hash = 2006142190, name = 'daemon', price = 12000, banido = false, modelo = 'daemon', capacidade = 20, tipo = 'motos' },
	{ hash = 586013744, name = 'tankercar', price = 110000, banido = false, modelo = 'tankercar', capacidade = 15, tipo = 'outros' },
	{ hash = -1670998136, name = 'double', price = 20000, banido = false, modelo = 'double', capacidade = 20, tipo = 'motos' },
	{ hash = -140902153, name = 'vader', price = 12000, banido = false, modelo = 'vader', capacidade = 20, tipo = 'motos' },
	{ hash = 712162987, name = 'trailersmall', price = 40000, banido = false, modelo = 'trailersmall', capacidade = 15, tipo = 'outros' },
	{ hash = 1267560083, name = 'msanchez', price = 12000, banido = false, modelo = 'msanchez', capacidade = 20, tipo = 'motos' },
	{ hash = 55628203, name = 'faggio2', price = 12000, banido = false, modelo = 'faggio2', capacidade = 20, tipo = 'motos' },
	{ hash = -2096912321, name = 'filthynsx', price = 25000, banido = false, modelo = 'filthynsx', capacidade = 75, tipo = 'carros' },
	{ hash = -1168952148, name = 'toros', price = 50000, banido = false, modelo = 'toros', capacidade = 15, tipo = 'outros' },
	{ hash = 1356124575, name = 'technical3', price = 50000, banido = false, modelo = 'technical3', capacidade = 75, tipo = 'carros' },
	{ hash = 1663218586, name = 't20', price = 35000, banido = false, modelo = 't20', capacidade = 75, tipo = 'carros' },
	{ hash = 745926877, name = 'buzzard2', price = 52000, banido = false, modelo = 'buzzard2', capacidade = 20, tipo = 'helicopteros' },
	{ hash = -1881846085, name = 'trailersmall2', price = 40000, banido = false, modelo = 'trailersmall2', capacidade = 15, tipo = 'outros' },
	{ hash = -50547061, name = 'cargobob', price = 52000, banido = false, modelo = 'cargobob', capacidade = 20, tipo = 'helicopteros' },
	{ hash = 310284501, name = 'Dynasty', price = 70000, banido = false, modelo = 'Dynasty', capacidade = 15, tipo = 'outros' },
	{ hash = 1621617168, name = 'cargobob2', price = 52000, banido = false, modelo = 'cargobob2', capacidade = 20, tipo = 'helicopteros' },
	{ hash = 1044954915, name = 'skylift', price = 52000, banido = false, modelo = 'skylift', capacidade = 20, tipo = 'helicopteros' },
	{ hash = 2009693397, name = 'porsche930', price = 150000, banido = false, modelo = 'porsche930', capacidade = 15, tipo = 'outros' },
	{ hash = 353883353, name = 'polmav', price = 52000, banido = false, modelo = 'polmav', capacidade = 20, tipo = 'helicopteros' },
	{ hash = -634879114, name = 'nemesis', price = 20000, banido = false, modelo = 'nemesis', capacidade = 20, tipo = 'motos' },
	{ hash = 744705981, name = 'frogger', price = 52000, banido = false, modelo = 'frogger', capacidade = 20, tipo = 'helicopteros' },
	{ hash = -1237253773, name = 'dubsta3', price = 50000, banido = false, modelo = 'dubsta3', capacidade = 75, tipo = 'carros' },
	{ hash = 1033245328, name = 'dinghy', price = 40000, banido = false, modelo = 'dinghy', capacidade = 50, tipo = 'barcos' },
	{ hash = 1274868363, name = 'bestiagts', price = 150000, banido = false, modelo = 'bestiagts', capacidade = 15, tipo = 'outros' },
	{ hash = 1949211328, name = 'frogger2', price = 52000, banido = false, modelo = 'frogger2', capacidade = 20, tipo = 'helicopteros' },
	{ hash = -291021213, name = 'sultan3', price = 35000, banido = false, modelo = 'sultan3', capacidade = 15, tipo = 'outros' },
	{ hash = 486987393, name = 'huntley', price = 50000, banido = false, modelo = 'huntley', capacidade = 15, tipo = 'outros' },
	{ hash = 970356638, name = 'duster', price = 45000, banido = false, modelo = 'duster', capacidade = 350, tipo = 'avioes' },
	{ hash = -1746576111, name = 'mammatus', price = 45000, banido = false, modelo = 'mammatus', capacidade = 350, tipo = 'avioes' },
	{ hash = 1215232069, name = 'p1gtr', price = 35000, banido = false, modelo = 'p1gtr', capacidade = 75, tipo = 'carros' },
	{ hash = 1058115860, name = 'jet', price = 45000, banido = false, modelo = 'jet', capacidade = 350, tipo = 'avioes' },
	{ hash = 67753863, name = 'yosemite3', price = 50000, banido = false, modelo = 'yosemite3', capacidade = 75, tipo = 'carros' },
	{ hash = 1987142870, name = 'osiris', price = 35000, banido = false, modelo = 'osiris', capacidade = 75, tipo = 'carros' },
	{ hash = 1981688531, name = 'titan', price = 45000, banido = false, modelo = 'titan', capacidade = 350, tipo = 'avioes' },
	{ hash = 2071877360, name = 'insurgent2', price = 50000, banido = false, modelo = 'insurgent2', capacidade = 75, tipo = 'carros' },
	{ hash = -1281684762, name = 'lazer', price = 45000, banido = false, modelo = 'lazer', capacidade = 350, tipo = 'avioes' },
	{ hash = -1404136503, name = 'daemon2', price = 12000, banido = false, modelo = 'daemon2', capacidade = 20, tipo = 'motos' },
	{ hash = 400514754, name = 'squalo', price = 40000, banido = false, modelo = 'squalo', capacidade = 50, tipo = 'barcos' },
	{ hash = -2134939315, name = 'sw4pc1', price = 35000, banido = false, modelo = 'sw4pc1', capacidade = 15, tipo = 'outros' },
	{ hash = -1043459709, name = 'marquis', price = 40000, banido = false, modelo = 'marquis', capacidade = 50, tipo = 'barcos' },
	{ hash = 276773164, name = 'dinghy2', price = 40000, banido = false, modelo = 'dinghy2', capacidade = 50, tipo = 'barcos' },
	{ hash = 2068293287, name = 'Lurcher', price = 150000, banido = false, modelo = 'Lurcher', capacidade = 15, tipo = 'outros' },
	{ hash = 44893575, name = 'lexuslfa', price = 100000, banido = false, modelo = 'lexuslfa', capacidade = 15, tipo = 'outros' },
	{ hash = 861409633, name = 'jetmax', price = 40000, banido = false, modelo = 'jetmax', capacidade = 50, tipo = 'barcos' },
	{ hash = 290013743, name = 'tropic', price = 40000, banido = false, modelo = 'tropic', capacidade = 50, tipo = 'barcos' },
	{ hash = 1803575816, name = 'rrghost', price = 25000, banido = false, modelo = 'rrghost', capacidade = 15, tipo = 'outros' },
	{ hash = -616331036, name = 'seashark2', price = 40000, banido = false, modelo = 'seashark2', capacidade = 50, tipo = 'barcos' },
	{ hash = -326143852, name = 'dukes2', price = 150000, banido = false, modelo = 'dukes2', capacidade = 15, tipo = 'outros' },
	{ hash = 184361638, name = 'freightcar', price = 110000, banido = false, modelo = 'freightcar', capacidade = 15, tipo = 'outros' },
	{ hash = 240201337, name = 'freightcont2', price = 110000, banido = false, modelo = 'freightcont2', capacidade = 15, tipo = 'outros' },
	{ hash = 868868440, name = 'metrotrain', price = 110000, banido = false, modelo = 'metrotrain', capacidade = 15, tipo = 'outros' },
	{ hash = -1579533167, name = 'trailers2', price = 40000, banido = false, modelo = 'trailers2', capacidade = 15, tipo = 'outros' },
	{ hash = 1443454466, name = 'trail21pm', price = 50000, banido = false, modelo = 'trail21pm', capacidade = 15, tipo = 'outros' },
	{ hash = -2058878099, name = 'trailers3', price = 40000, banido = false, modelo = 'trailers3', capacidade = 15, tipo = 'outros' },
	{ hash = 390902130, name = 'raketrailer', price = 40000, banido = false, modelo = 'raketrailer', capacidade = 15, tipo = 'outros' },
	{ hash = -1942693832, name = 'r32', price = 35000, banido = false, modelo = 'r32', capacidade = 15, tipo = 'outros' },
	{ hash = -757735410, name = 'fcr2', price = 20000, banido = false, modelo = 'fcr2', capacidade = 20, tipo = 'motos' },
	{ hash = 627535535, name = 'fcr', price = 20000, banido = false, modelo = 'fcr', capacidade = 20, tipo = 'motos' },
	{ hash = -730904777, name = 'tanker', price = 40000, banido = false, modelo = 'tanker', capacidade = 15, tipo = 'outros' },
	{ hash = -2144778718, name = 'helinews', price = 52000, banido = false, modelo = 'helinews', capacidade = 20, tipo = 'helicopteros' },
	{ hash = 1993953079, name = 'golf7', price = 100000, banido = false, modelo = 'golf7', capacidade = 15, tipo = 'outros' },
	{ hash = -2107990196, name = 'guardian', price = 50000, banido = false, modelo = 'guardian', capacidade = 15, tipo = 'outros' },
	{ hash = -1673356438, name = 'velum', price = 45000, banido = false, modelo = 'velum', capacidade = 350, tipo = 'avioes' },
	{ hash = -133349447, name = 'lancerevolution9', price = 25000, banido = false, modelo = 'lancerevolution9', capacidade = 15, tipo = 'outros' },
	{ hash = -482719877, name = 'italigtb2', price = 35000, banido = false, modelo = 'italigtb2', capacidade = 75, tipo = 'carros' },
	{ hash = -349601129, name = 'bifta', price = 50000, banido = false, modelo = 'bifta', capacidade = 75, tipo = 'carros' },
	{ hash = 83136452, name = 'rebla', price = 50000, banido = false, modelo = 'rebla', capacidade = 15, tipo = 'outros' },
	{ hash = -312295511, name = 'dune5', price = 35000, banido = false, modelo = 'dune5', capacidade = 75, tipo = 'carros' },
	{ hash = 231083307, name = 'speeder', price = 40000, banido = false, modelo = 'speeder', capacidade = 50, tipo = 'barcos' },
	{ hash = -1602618053, name = 'WRtahoe21', price = 50000, banido = false, modelo = 'WRtahoe21', capacidade = 15, tipo = 'outros' },
	{ hash = -1361687965, name = 'chino2', price = 150000, banido = false, modelo = 'chino2', capacidade = 15, tipo = 'outros' },
	{ hash = 1416466158, name = 'paragon2', price = 150000, banido = false, modelo = 'paragon2', capacidade = 15, tipo = 'outros' },
	{ hash = -1799108442, name = 'lamborghinigallardo', price = 35000, banido = false, modelo = 'lamborghinigallardo', capacidade = 75, tipo = 'carros' },
	{ hash = 2127567470, name = 'bananao', price = 40000, banido = false, modelo = 'bananao', capacidade = 50, tipo = 'barcos' },
	{ hash = 1373123368, name = 'warrener', price = 100000, banido = false, modelo = 'warrener', capacidade = 15, tipo = 'outros' },
	{ hash = 92612664, name = 'kalahari', price = 50000, banido = false, modelo = 'kalahari', capacidade = 75, tipo = 'carros' },
	{ hash = 117401876, name = 'btype', price = 70000, banido = false, modelo = 'btype', capacidade = 15, tipo = 'outros' },
	{ hash = 373261600, name = 'slamvan5', price = 30000, banido = false, modelo = 'slamvan5', capacidade = 15, tipo = 'outros' },
	{ hash = 980885719, name = 'rmodgt63', price = 35000, banido = false, modelo = 'rmodgt63', capacidade = 15, tipo = 'outros' },
	{ hash = -255678177, name = 'hakuchou2', price = 20000, banido = false, modelo = 'hakuchou2', capacidade = 20, tipo = 'motos' },
	{ hash = 1813965170, name = 'rs7', price = 35000, banido = false, modelo = 'rs7', capacidade = 15, tipo = 'outros' },
	{ hash = 1790834270, name = 'diablous2', price = 12000, banido = false, modelo = 'diablous2', capacidade = 20, tipo = 'motos' },
	{ hash = -2079788230, name = 'gt500', price = 130000, banido = false, modelo = 'gt500', capacidade = 15, tipo = 'outros' },
	{ hash = 2123327359, name = 'prototipo', price = 35000, banido = false, modelo = 'prototipo', capacidade = 75, tipo = 'carros' },
	{ hash = 1341619767, name = 'vestra', price = 45000, banido = false, modelo = 'vestra', capacidade = 350, tipo = 'avioes' },
	{ hash = 841808271, name = 'rhapsody', price = 35000, banido = false, modelo = 'rhapsody', capacidade = 15, tipo = 'outros' },
	{ hash = -1205801634, name = 'blade', price = 150000, banido = false, modelo = 'blade', capacidade = 15, tipo = 'outros' },
	{ hash = -486920242, name = 'dm1200', price = 20000, banido = false, modelo = 'dm1200', capacidade = 20, tipo = 'motos' },
	{ hash = 1078682497, name = 'pigalle', price = 100000, banido = false, modelo = 'pigalle', capacidade = 15, tipo = 'outros' },
	{ hash = 743478836, name = 'sovereign', price = 12000, banido = false, modelo = 'sovereign', capacidade = 20, tipo = 'motos' },
	{ hash = 882175746, name = 'cruzeprf2', price = 80000, banido = false, modelo = 'cruzeprf2', capacidade = 15, tipo = 'outros' },
	{ hash = -1829802492, name = 'pfister811', price = 150000, banido = false, modelo = 'pfister811', capacidade = 75, tipo = 'carros' },
	{ hash = -1295027632, name = 'nimbus', price = 45000, banido = false, modelo = 'nimbus', capacidade = 350, tipo = 'avioes' },
	{ hash = 1824333165, name = 'besra', price = 45000, banido = false, modelo = 'besra', capacidade = 350, tipo = 'avioes' },
	{ hash = 101905590, name = 'trophytruck', price = 50000, banido = false, modelo = 'trophytruck', capacidade = 75, tipo = 'carros' },
	{ hash = 1011753235, name = 'coquette2', price = 150000, banido = false, modelo = 'coquette2', capacidade = 15, tipo = 'outros' },
	{ hash = 1265391242, name = 'hakuchou', price = 20000, banido = false, modelo = 'hakuchou', capacidade = 20, tipo = 'motos' },
	{ hash = -1014509449, name = 'caddy2', price = 25000, banido = false, modelo = 'caddy2', capacidade = 15, tipo = 'outros' },
	{ hash = -1842748181, name = 'faggio', price = 12000, banido = false, modelo = 'faggio', capacidade = 20, tipo = 'motos' },
	{ hash = -1193237073, name = 'FX4', price = 50000, banido = false, modelo = 'FX4', capacidade = 15, tipo = 'outros' },
	{ hash = -1089039904, name = 'furoregt', price = 150000, banido = false, modelo = 'furoregt', capacidade = 15, tipo = 'outros' },
	{ hash = -2144575993, name = 'trailprf', price = 50000, banido = false, modelo = 'trailprf', capacidade = 15, tipo = 'outros' },
	{ hash = 986544975, name = 'dodgecharger', price = 35000, banido = false, modelo = 'dodgecharger', capacidade = 15, tipo = 'outros' },
	{ hash = -1106353882, name = 'jester2', price = 80000, banido = false, modelo = 'jester2', capacidade = 15, tipo = 'outros' },
	{ hash = -1528679511, name = 'energyr1200', price = 20000, banido = false, modelo = 'energyr1200', capacidade = 15, tipo = 'outros' },
	{ hash = -631760477, name = 'massacro2', price = 35000, banido = false, modelo = 'massacro2', capacidade = 15, tipo = 'outros' },
	{ hash = 1473628167, name = 'vwgolf', price = 35000, banido = false, modelo = 'vwgolf', capacidade = 15, tipo = 'outros' },
	{ hash = 941800958, name = 'casco', price = 130000, banido = false, modelo = 'casco', capacidade = 15, tipo = 'outros' },
	{ hash = 1802742206, name = 'youga3', price = 22000, banido = false, modelo = 'youga3', capacidade = 250, tipo = 'utilitario' },
	{ hash = 444171386, name = 'boxville4', price = 25000, banido = false, modelo = 'boxville4', capacidade = 250, tipo = 'utilitario' },
	{ hash = -1860900134, name = 'insurgent', price = 50000, banido = false, modelo = 'insurgent', capacidade = 75, tipo = 'carros' },
	{ hash = -1777553685, name = 'xr3', price = 150000, banido = false, modelo = 'xr3', capacidade = 15, tipo = 'outros' },
	{ hash = 1180875963, name = 'technical2', price = 50000, banido = false, modelo = 'technical2', capacidade = 75, tipo = 'carros' },
	{ hash = -32236122, name = 'halftrack', price = 40000, banido = false, modelo = 'halftrack', capacidade = 15, tipo = 'outros' },
	{ hash = -2015218779, name = 'nissan370z', price = 55000, banido = false, modelo = 'nissan370z', capacidade = 15, tipo = 'outros' },
	{ hash = 296357396, name = 'gburrito2', price = 22000, banido = false, modelo = 'gburrito2', capacidade = 250, tipo = 'utilitario' },
	{ hash = -362150785, name = 'hellion', price = 50000, banido = false, modelo = 'hellion', capacidade = 75, tipo = 'carros' },
	{ hash = 509498602, name = 'dinghy3', price = 40000, banido = false, modelo = 'dinghy3', capacidade = 50, tipo = 'barcos' },
	{ hash = 1753414259, name = 'enduro', price = 12000, banido = false, modelo = 'enduro', capacidade = 20, tipo = 'motos' },
	{ hash = -1673627650, name = 'p911r', price = 25000, banido = false, modelo = 'p911r', capacidade = 75, tipo = 'carros' },
	{ hash = 640818791, name = 'lectro', price = 20000, banido = false, modelo = 'lectro', capacidade = 20, tipo = 'motos' },
	{ hash = -1372848492, name = 'kuruma', price = 35000, banido = false, modelo = 'kuruma', capacidade = 15, tipo = 'outros' },
	{ hash = -664141241, name = 'krieger', price = 35000, banido = false, modelo = 'krieger', capacidade = 75, tipo = 'carros' },
	{ hash = 410882957, name = 'kuruma2', price = 35000, banido = false, modelo = 'kuruma2', capacidade = 15, tipo = 'outros' },
	{ hash = -663299102, name = 'trophytruck2', price = 50000, banido = false, modelo = 'trophytruck2', capacidade = 75, tipo = 'carros' },
	{ hash = -1255698084, name = 'trash2', price = 40000, banido = false, modelo = 'trash2', capacidade = 15, tipo = 'outros' },
	{ hash = -1293924613, name = 'dominator6', price = 150000, banido = false, modelo = 'dominator6', capacidade = 15, tipo = 'outros' },
	{ hash = -1756021720, name = 'everon', price = 50000, banido = false, modelo = 'everon', capacidade = 75, tipo = 'carros' },
	{ hash = 865989668, name = 'avj', price = 30000, banido = false, modelo = 'avj', capacidade = 75, tipo = 'carros' },
	{ hash = -114627507, name = 'limo2', price = 35000, banido = false, modelo = 'limo2', capacidade = 15, tipo = 'outros' },
	{ hash = 422090481, name = 'rmodrs6', price = 35000, banido = false, modelo = 'rmodrs6', capacidade = 15, tipo = 'outros' },
	{ hash = -1600252419, name = 'valkyrie', price = 52000, banido = false, modelo = 'valkyrie', capacidade = 20, tipo = 'helicopteros' },
	{ hash = -1478704292, name = 'zr3803', price = 150000, banido = false, modelo = 'zr3803', capacidade = 15, tipo = 'outros' },
	{ hash = 1075432268, name = 'swift2', price = 52000, banido = false, modelo = 'swift2', capacidade = 20, tipo = 'helicopteros' },
	{ hash = -1214293858, name = 'luxor2', price = 45000, banido = false, modelo = 'luxor2', capacidade = 350, tipo = 'avioes' },
	{ hash = -1566741232, name = 'feltzer3', price = 30000, banido = false, modelo = 'feltzer3', capacidade = 15, tipo = 'outros' },
	{ hash = 682434785, name = 'boxville5', price = 25000, banido = false, modelo = 'boxville5', capacidade = 250, tipo = 'utilitario' },
	{ hash = -498054846, name = 'virgo', price = 150000, banido = false, modelo = 'virgo', capacidade = 15, tipo = 'outros' },
	{ hash = 1581459400, name = 'windsor', price = 25000, banido = false, modelo = 'windsor', capacidade = 15, tipo = 'outros' },
	{ hash = -1353081087, name = 'vindicator', price = 12000, banido = false, modelo = 'vindicator', capacidade = 20, tipo = 'motos' },
	{ hash = 86520421, name = 'bf400', price = 12000, banido = false, modelo = 'bf400', capacidade = 20, tipo = 'motos' },
	{ hash = -1479664699, name = 'brawler', price = 50000, banido = false, modelo = 'brawler', capacidade = 75, tipo = 'carros' },
	{ hash = 1923400478, name = 'stalion', price = 150000, banido = false, modelo = 'stalion', capacidade = 15, tipo = 'outros' },
	{ hash = -1071380347, name = 'tampa2', price = 150000, banido = false, modelo = 'tampa2', capacidade = 15, tipo = 'outros' },
	{ hash = 1070967343, name = 'toro', price = 40000, banido = false, modelo = 'toro', capacidade = 50, tipo = 'barcos' },
	{ hash = 1416471345, name = 'previon', price = 150000, banido = false, modelo = 'previon', capacidade = 15, tipo = 'outros' },
	{ hash = -1790546981, name = 'faction2', price = 150000, banido = false, modelo = 'faction2', capacidade = 15, tipo = 'outros' },
	{ hash = 653510754, name = 'hondafk8', price = 25000, banido = false, modelo = 'hondafk8', capacidade = 15, tipo = 'outros' },
	{ hash = -24952869, name = 'atug', price = 40000, banido = false, modelo = 'atug', capacidade = 50, tipo = 'barcos' },
	{ hash = 525509695, name = 'moonbeam', price = 50000, banido = false, modelo = 'moonbeam', capacidade = 15, tipo = 'outros' },
	{ hash = 1839602789, name = 'rr14', price = 50000, banido = false, modelo = 'rr14', capacidade = 15, tipo = 'outros' },
	{ hash = 1896491931, name = 'moonbeam2', price = 50000, banido = false, modelo = 'moonbeam2', capacidade = 15, tipo = 'outros' },
	{ hash = -631322662, name = 'penumbra2', price = 150000, banido = false, modelo = 'penumbra2', capacidade = 15, tipo = 'outros' },
	{ hash = -2022483795, name = 'comet3', price = 150000, banido = false, modelo = 'comet3', capacidade = 15, tipo = 'outros' },
	{ hash = -148915999, name = 'mustangmach1', price = 150000, banido = false, modelo = 'mustangmach1', capacidade = 15, tipo = 'outros' },
	{ hash = 1934384720, name = 'gauntlet4', price = 25000, banido = false, modelo = 'gauntlet4', capacidade = 15, tipo = 'outros' },
	{ hash = -2040426790, name = 'primo2', price = 35000, banido = false, modelo = 'primo2', capacidade = 15, tipo = 'outros' },
	{ hash = -1507230520, name = 'futo2', price = 100000, banido = false, modelo = 'futo2', capacidade = 15, tipo = 'outros' },
	{ hash = 1074745671, name = 'specter2', price = 150000, banido = false, modelo = 'specter2', capacidade = 15, tipo = 'outros' },
	{ hash = -1013450936, name = 'buccaneer2', price = 150000, banido = false, modelo = 'buccaneer2', capacidade = 15, tipo = 'outros' },
	{ hash = 2006667053, name = 'voodoo', price = 25000, banido = false, modelo = 'voodoo', capacidade = 15, tipo = 'outros' },
	{ hash = 1502869817, name = 'trailerlarge', price = 40000, banido = false, modelo = 'trailerlarge', capacidade = 15, tipo = 'outros' },
	{ hash = -831834716, name = 'btype2', price = 70000, banido = false, modelo = 'btype2', capacidade = 15, tipo = 'outros' },
	{ hash = 906642318, name = 'cog55', price = 25000, banido = false, modelo = 'cog55', capacidade = 15, tipo = 'outros' },
	{ hash = -1943285540, name = 'nightshade', price = 130000, banido = false, modelo = 'nightshade', capacidade = 15, tipo = 'outros' },
	{ hash = -1757836725, name = 'seven70', price = 150000, banido = false, modelo = 'seven70', capacidade = 15, tipo = 'outros' },
	{ hash = -1660945322, name = 'mamba', price = 150000, banido = false, modelo = 'mamba', capacidade = 15, tipo = 'outros' },
	{ hash = -245284626, name = 'frontierbope2', price = 80000, banido = false, modelo = 'frontierbope2', capacidade = 15, tipo = 'outros' },
	{ hash = -1485523546, name = 'schafter3', price = 35000, banido = false, modelo = 'schafter3', capacidade = 15, tipo = 'outros' },
	{ hash = -1930048799, name = 'windsor2', price = 25000, banido = false, modelo = 'windsor2', capacidade = 15, tipo = 'outros' },
	{ hash = -888242983, name = 'schafter5', price = 35000, banido = false, modelo = 'schafter5', capacidade = 15, tipo = 'outros' },
	{ hash = 1118611807, name = 'asbo', price = 150000, banido = false, modelo = 'asbo', capacidade = 15, tipo = 'outros' },
	{ hash = -1863430482, name = '71gtx', price = 20000, banido = false, modelo = '71gtx', capacidade = 15, tipo = 'outros' },
	{ hash = -1193912403, name = 'calico', price = 150000, banido = false, modelo = 'calico', capacidade = 15, tipo = 'outros' },
	{ hash = 1922255844, name = 'schafter6', price = 35000, banido = false, modelo = 'schafter6', capacidade = 15, tipo = 'outros' },
	{ hash = 704435172, name = 'cog552', price = 25000, banido = false, modelo = 'cog552', capacidade = 15, tipo = 'outros' },
	{ hash = -2030171296, name = 'cognoscenti', price = 25000, banido = false, modelo = 'cognoscenti', capacidade = 15, tipo = 'outros' },
	{ hash = 2035069708, name = 'esskey', price = 12000, banido = false, modelo = 'esskey', capacidade = 20, tipo = 'motos' },
	{ hash = -703496027, name = 'chevroletcamarozl1', price = 150000, banido = false, modelo = 'chevroletcamarozl1', capacidade = 15, tipo = 'outros' },
	{ hash = -604842630, name = 'cognoscenti2', price = 25000, banido = false, modelo = 'cognoscenti2', capacidade = 15, tipo = 'outros' },
	{ hash = -2122646867, name = 'gauntlet5', price = 25000, banido = false, modelo = 'gauntlet5', capacidade = 15, tipo = 'outros' },
	{ hash = -157999187, name = 'cls2015', price = 35000, banido = false, modelo = 'cls2015', capacidade = 15, tipo = 'outros' },
	{ hash = 1878062887, name = 'baller3', price = 50000, banido = false, modelo = 'baller3', capacidade = 15, tipo = 'outros' },
	{ hash = -1540373595, name = 'vectre', price = 150000, banido = false, modelo = 'vectre', capacidade = 15, tipo = 'outros' },
	{ hash = -32878452, name = 'bombushka', price = 45000, banido = false, modelo = 'bombushka', capacidade = 350, tipo = 'avioes' },
	{ hash = 634118882, name = 'baller4', price = 50000, banido = false, modelo = 'baller4', capacidade = 15, tipo = 'outros' },
	{ hash = -102335483, name = 'squaddie', price = 50000, banido = false, modelo = 'squaddie', capacidade = 15, tipo = 'outros' },
	{ hash = 470404958, name = 'baller5', price = 50000, banido = false, modelo = 'baller5', capacidade = 15, tipo = 'outros' },
	{ hash = -214906006, name = 'jester3', price = 80000, banido = false, modelo = 'jester3', capacidade = 15, tipo = 'outros' },
	{ hash = 666166960, name = 'baller6', price = 50000, banido = false, modelo = 'baller6', capacidade = 15, tipo = 'outros' },
	{ hash = 867467158, name = 'dinghy4', price = 40000, banido = false, modelo = 'dinghy4', capacidade = 50, tipo = 'barcos' },
	{ hash = 719660200, name = 'ruston', price = 150000, banido = false, modelo = 'ruston', capacidade = 15, tipo = 'outros' },
	{ hash = 1503141430, name = 'divo', price = 80000, banido = false, modelo = 'divo', capacidade = 75, tipo = 'carros' },
	{ hash = 1448677353, name = 'tropic2', price = 40000, banido = false, modelo = 'tropic2', capacidade = 50, tipo = 'barcos' },
	{ hash = -1671539132, name = 'supervolito2', price = 52000, banido = false, modelo = 'supervolito2', capacidade = 20, tipo = 'helicopteros' },
	{ hash = -1063037612, name = 'vwtoua19cf', price = 35000, banido = false, modelo = 'vwtoua19cf', capacidade = 15, tipo = 'outros' },
	{ hash = 1543134283, name = 'valkyrie2', price = 52000, banido = false, modelo = 'valkyrie2', capacidade = 20, tipo = 'helicopteros' },
	{ hash = 633712403, name = 'banshee2', price = 150000, banido = false, modelo = 'banshee2', capacidade = 75, tipo = 'carros' },
	{ hash = -2039755226, name = 'faction3', price = 150000, banido = false, modelo = 'faction3', capacidade = 15, tipo = 'outros' },
	{ hash = -982569566, name = 'tenere', price = 12000, banido = false, modelo = 'tenere', capacidade = 20, tipo = 'motos' },
	{ hash = -1126264336, name = 'minivan2', price = 50000, banido = false, modelo = 'minivan2', capacidade = 250, tipo = 'utilitario' },
	{ hash = -1797613329, name = 'tornado5', price = 25000, banido = false, modelo = 'tornado5', capacidade = 15, tipo = 'outros' },
	{ hash = 1897985918, name = 'Imola', price = 35000, banido = false, modelo = 'Imola', capacidade = 75, tipo = 'carros' },
	{ hash = -899509638, name = 'virgo2', price = 150000, banido = false, modelo = 'virgo2', capacidade = 15, tipo = 'outros' },
	{ hash = 1203490606, name = 'xls', price = 50000, banido = false, modelo = 'xls', capacidade = 15, tipo = 'outros' },
	{ hash = -432008408, name = 'xls2', price = 50000, banido = false, modelo = 'xls2', capacidade = 15, tipo = 'outros' },
	{ hash = 1426219628, name = 'fmj', price = 35000, banido = false, modelo = 'fmj', capacidade = 75, tipo = 'carros' },
	{ hash = 1475773103, name = 'rumpo3', price = 22000, banido = false, modelo = 'rumpo3', capacidade = 250, tipo = 'utilitario' },
	{ hash = -1845487887, name = 'volatus', price = 52000, banido = false, modelo = 'volatus', capacidade = 20, tipo = 'helicopteros' },
	{ hash = -1267543371, name = 'ellie', price = 100000, banido = false, modelo = 'ellie', capacidade = 15, tipo = 'outros' },
	{ hash = -26888548, name = 's600', price = 35000, banido = false, modelo = 's600', capacidade = 15, tipo = 'outros' },
	{ hash = 234062309, name = 'reaper', price = 35000, banido = false, modelo = 'reaper', capacidade = 75, tipo = 'carros' },
	{ hash = 864212176, name = 'palio17', price = 50000, banido = false, modelo = 'palio17', capacidade = 15, tipo = 'outros' },
	{ hash = -1805585679, name = 'mercedesg65', price = 50000, banido = false, modelo = 'mercedesg65', capacidade = 15, tipo = 'outros' },
	{ hash = -2100640717, name = 'tug', price = 40000, banido = false, modelo = 'tug', capacidade = 50, tipo = 'barcos' },
	{ hash = -1593808613, name = '488gtb', price = 35000, banido = false, modelo = '488gtb', capacidade = 15, tipo = 'outros' },
	{ hash = -239841468, name = 'diablous', price = 12000, banido = false, modelo = 'diablous', capacidade = 20, tipo = 'motos' },
	{ hash = -777172681, name = 'omnis', price = 35000, banido = false, modelo = 'omnis', capacidade = 15, tipo = 'outros' },
	{ hash = -1232836011, name = 'le7b', price = 35000, banido = false, modelo = 'le7b', capacidade = 75, tipo = 'carros' },
	{ hash = -2103821244, name = 'rallytruck', price = 40000, banido = false, modelo = 'rallytruck', capacidade = 15, tipo = 'outros' },
	{ hash = 390201602, name = 'cliffhanger', price = 12000, banido = false, modelo = 'cliffhanger', capacidade = 20, tipo = 'motos' },
	{ hash = 1887331236, name = 'tropos', price = 150000, banido = false, modelo = 'tropos', capacidade = 15, tipo = 'outros' },
	{ hash = 1549126457, name = 'brioso', price = 35000, banido = false, modelo = 'brioso', capacidade = 15, tipo = 'outros' },
	{ hash = -1558399629, name = 'tornado6', price = 25000, banido = false, modelo = 'tornado6', capacidade = 15, tipo = 'outros' },
	{ hash = -1694081890, name = 'bruiser2', price = 40000, banido = false, modelo = 'bruiser2', capacidade = 75, tipo = 'carros' },
	{ hash = 913852414, name = 'abmwm3gtr', price = 80000, banido = false, modelo = 'abmwm3gtr', capacidade = 15, tipo = 'outros' },
	{ hash = 1402024844, name = 'bbentayga', price = 50000, banido = false, modelo = 'bbentayga', capacidade = 15, tipo = 'outros' },
	{ hash = 1542143200, name = 'scarab2', price = 40000, banido = false, modelo = 'scarab2', capacidade = 15, tipo = 'outros' },
	{ hash = 6774487, name = 'chimera', price = 12000, banido = false, modelo = 'chimera', capacidade = 20, tipo = 'motos' },
	{ hash = -674927303, name = 'raptor', price = 12000, banido = false, modelo = 'raptor', capacidade = 15, tipo = 'outros' },
	{ hash = 324430440, name = 'dustereb1', price = 50000, banido = false, modelo = 'dustereb1', capacidade = 15, tipo = 'outros' },
	{ hash = -609625092, name = 'vortex', price = 20000, banido = false, modelo = 'vortex', capacidade = 20, tipo = 'motos' },
	{ hash = 1491277511, name = 'sanctus', price = 12000, banido = false, modelo = 'sanctus', capacidade = 20, tipo = 'motos' },
	{ hash = -1606187161, name = 'nightblade', price = 12000, banido = false, modelo = 'nightblade', capacidade = 20, tipo = 'motos' },
	{ hash = -1009268949, name = 'zombiea', price = 12000, banido = false, modelo = 'zombiea', capacidade = 20, tipo = 'motos' },
	{ hash = -1055230633, name = 'subarubrz', price = 150000, banido = false, modelo = 'subarubrz', capacidade = 15, tipo = 'outros' },
	{ hash = -570033273, name = 'zombieb', price = 12000, banido = false, modelo = 'zombieb', capacidade = 20, tipo = 'motos' },
	{ hash = 822018448, name = 'defiler', price = 20000, banido = false, modelo = 'defiler', capacidade = 20, tipo = 'motos' },
	{ hash = -1726022652, name = 'comet6', price = 150000, banido = false, modelo = 'comet6', capacidade = 15, tipo = 'outros' },
	{ hash = 1873600305, name = 'ratbike', price = 12000, banido = false, modelo = 'ratbike', capacidade = 20, tipo = 'motos' },
	{ hash = 321186144, name = 'stafford', price = 70000, banido = false, modelo = 'stafford', capacidade = 15, tipo = 'outros' },
	{ hash = -405626514, name = 'shotaro', price = 20000, banido = false, modelo = 'shotaro', capacidade = 20, tipo = 'motos' },
	{ hash = -1523428744, name = 'manchez', price = 12000, banido = false, modelo = 'manchez', capacidade = 20, tipo = 'motos' },
	{ hash = 15219735, name = 'hermes', price = 25000, banido = false, modelo = 'hermes', capacidade = 15, tipo = 'outros' },
	{ hash = -440768424, name = 'blazer4', price = 12000, banido = false, modelo = 'blazer4', capacidade = 75, tipo = 'carros' },
	{ hash = 1755697647, name = 'cypher', price = 150000, banido = false, modelo = 'cypher', capacidade = 15, tipo = 'outros' },
	{ hash = 272929391, name = 'tempesta', price = 35000, banido = false, modelo = 'tempesta', capacidade = 75, tipo = 'carros' },
	{ hash = -980573366, name = 'dinghy5', price = 40000, banido = false, modelo = 'dinghy5', capacidade = 50, tipo = 'barcos' },
	{ hash = -2048333973, name = 'italigtb', price = 35000, banido = false, modelo = 'italigtb', capacidade = 75, tipo = 'carros' },
	{ hash = 1093792632, name = 'nero2', price = 80000, banido = false, modelo = 'nero2', capacidade = 75, tipo = 'carros' },
	{ hash = -768378822, name = 'hiluxpc', price = 50000, banido = false, modelo = 'hiluxpc', capacidade = 15, tipo = 'outros' },
	{ hash = 1361437403, name = 'f4090', price = 250000, banido = false, modelo = 'f4090', capacidade = 75, tipo = 'carros' },
	{ hash = 1886268224, name = 'specter', price = 150000, banido = false, modelo = 'specter', capacidade = 15, tipo = 'outros' },
	{ hash = -1332153149, name = 'sw4pm', price = 50000, banido = false, modelo = 'sw4pm', capacidade = 15, tipo = 'outros' },
	{ hash = -827162039, name = 'dune4', price = 35000, banido = false, modelo = 'dune4', capacidade = 75, tipo = 'carros' },
	{ hash = 840387324, name = 'monster4', price = 500000, banido = false, modelo = 'monster4', capacidade = 75, tipo = 'carros' },
	{ hash = 105975541, name = '570S', price = 25000, banido = false, modelo = '570S', capacidade = 75, tipo = 'carros' },
	{ hash = -1912017790, name = 'wastelander', price = 40000, banido = false, modelo = 'wastelander', capacidade = 15, tipo = 'outros' },
	{ hash = 1114244595, name = 'lamborghinihuracan', price = 25000, banido = false, modelo = 'lamborghinihuracan', capacidade = 15, tipo = 'outros' },
	{ hash = 777714999, name = 'ruiner3', price = 150000, banido = false, modelo = 'ruiner3', capacidade = 15, tipo = 'outros' },
	{ hash = -982130927, name = 'turismo2', price = 100000, banido = false, modelo = 'turismo2', capacidade = 15, tipo = 'outros' },
	{ hash = -1405937764, name = 'infernus2', price = 100000, banido = false, modelo = 'infernus2', capacidade = 15, tipo = 'outros' },
	{ hash = 1234311532, name = 'gp1', price = 35000, banido = false, modelo = 'gp1', capacidade = 75, tipo = 'carros' },
	{ hash = -1620126302, name = 'neo', price = 35000, banido = false, modelo = 'neo', capacidade = 15, tipo = 'outros' },
	{ hash = -1100548694, name = 'trailers4', price = 40000, banido = false, modelo = 'trailers4', capacidade = 15, tipo = 'outros' },
	{ hash = 917809321, name = 'xa21', price = 35000, banido = false, modelo = 'xa21', capacidade = 75, tipo = 'carros' },
	{ hash = 1939284556, name = 'vagner', price = 35000, banido = false, modelo = 'vagner', capacidade = 75, tipo = 'carros' },
	{ hash = -1924433270, name = 'insurgent3', price = 50000, banido = false, modelo = 'insurgent3', capacidade = 75, tipo = 'carros' },
	{ hash = -579747861, name = 'scarab3', price = 40000, banido = false, modelo = 'scarab3', capacidade = 15, tipo = 'outros' },
	{ hash = 562680400, name = 'apc', price = 50000, banido = false, modelo = 'apc', capacidade = 15, tipo = 'outros' },
	{ hash = -591651781, name = 'blista3', price = 35000, banido = false, modelo = 'blista3', capacidade = 15, tipo = 'outros' },
	{ hash = 1897744184, name = 'dune3', price = 50000, banido = false, modelo = 'dune3', capacidade = 75, tipo = 'carros' },
	{ hash = 159274291, name = 'ardent', price = 150000, banido = false, modelo = 'ardent', capacidade = 15, tipo = 'outros' },
	{ hash = -392675425, name = 'seabreeze', price = 45000, banido = false, modelo = 'seabreeze', capacidade = 350, tipo = 'avioes' },
	{ hash = 1043222410, name = 'tula', price = 45000, banido = false, modelo = 'tula', capacidade = 350, tipo = 'avioes' },
	{ hash = -1984275979, name = 'havok', price = 52000, banido = false, modelo = 'havok', capacidade = 20, tipo = 'helicopteros' },
	{ hash = -1850735528, name = 'rmodbmwi8', price = 35000, banido = false, modelo = 'rmodbmwi8', capacidade = 75, tipo = 'carros' },
	{ hash = -42959138, name = 'hunter', price = 52000, banido = false, modelo = 'hunter', capacidade = 20, tipo = 'helicopteros' },
	{ hash = -1763555241, name = 'microlight', price = 45000, banido = false, modelo = 'microlight', capacidade = 350, tipo = 'avioes' },
	{ hash = 1492612435, name = 'openwheel1', price = 35000, banido = false, modelo = 'openwheel1', capacidade = 15, tipo = 'outros' },
	{ hash = -975345305, name = 'rogue', price = 45000, banido = false, modelo = 'rogue', capacidade = 350, tipo = 'avioes' },
	{ hash = 1909189272, name = 'gb200', price = 35000, banido = false, modelo = 'gb200', capacidade = 15, tipo = 'outros' },
	{ hash = -1386191424, name = 'pyro', price = 45000, banido = false, modelo = 'pyro', capacidade = 350, tipo = 'avioes' },
	{ hash = 2014313426, name = 'vetir', price = 40000, banido = false, modelo = 'vetir', capacidade = 15, tipo = 'outros' },
	{ hash = -1007528109, name = 'howard', price = 45000, banido = false, modelo = 'howard', capacidade = 350, tipo = 'avioes' },
	{ hash = -1135949905, name = 'huayra', price = 35000, banido = false, modelo = 'huayra', capacidade = 75, tipo = 'carros' },
	{ hash = -401643538, name = 'stalion2', price = 150000, banido = false, modelo = 'stalion2', capacidade = 15, tipo = 'outros' },
	{ hash = -749299473, name = 'mogul', price = 45000, banido = false, modelo = 'mogul', capacidade = 350, tipo = 'avioes' },
	{ hash = -1700874274, name = 'starling', price = 45000, banido = false, modelo = 'starling', capacidade = 350, tipo = 'avioes' },
	{ hash = 1036591958, name = 'nokota', price = 45000, banido = false, modelo = 'nokota', capacidade = 350, tipo = 'avioes' },
	{ hash = 1565978651, name = 'molotok', price = 45000, banido = false, modelo = 'molotok', capacidade = 350, tipo = 'avioes' },
	{ hash = 1841130506, name = 'retinue', price = 150000, banido = false, modelo = 'retinue', capacidade = 15, tipo = 'outros' },
	{ hash = 1392481335, name = 'cyclone', price = 35000, banido = false, modelo = 'cyclone', capacidade = 75, tipo = 'carros' },
	{ hash = -391595372, name = 'viseris', price = 150000, banido = false, modelo = 'viseris', capacidade = 15, tipo = 'outros' },
	{ hash = 661493923, name = 'comet5', price = 150000, banido = false, modelo = 'comet5', capacidade = 15, tipo = 'outros' },
	{ hash = -1532697517, name = 'riata', price = 50000, banido = false, modelo = 'riata', capacidade = 75, tipo = 'carros' },
	{ hash = -1745789659, name = 'FK8', price = 35000, banido = false, modelo = 'FK8', capacidade = 15, tipo = 'outros' },
	{ hash = -313185164, name = 'autarch', price = 35000, banido = false, modelo = 'autarch', capacidade = 75, tipo = 'carros' },
	{ hash = 903794909, name = 'savestra', price = 150000, banido = false, modelo = 'savestra', capacidade = 15, tipo = 'outros' },
	{ hash = 1561920505, name = 'comet4', price = 150000, banido = false, modelo = 'comet4', capacidade = 15, tipo = 'outros' },
	{ hash = -1848994066, name = 'neon', price = 35000, banido = false, modelo = 'neon', capacidade = 15, tipo = 'outros' },
	{ hash = -426508523, name = 'trail21pc', price = 50000, banido = false, modelo = 'trail21pc', capacidade = 15, tipo = 'outros' },
	{ hash = 1104234922, name = 'sentinel3', price = 150000, banido = false, modelo = 'sentinel3', capacidade = 15, tipo = 'outros' },
	{ hash = -1435527158, name = 'khanjali', price = 40000, banido = false, modelo = 'khanjali', capacidade = 15, tipo = 'outros' },
	{ hash = 447548909, name = 'volatol', price = 45000, banido = false, modelo = 'volatol', capacidade = 350, tipo = 'avioes' },
	{ hash = -812161676, name = 'mercedesamggtr', price = 150000, banido = false, modelo = 'mercedesamggtr', capacidade = 75, tipo = 'carros' },
	{ hash = 1181327175, name = 'akula', price = 52000, banido = false, modelo = 'akula', capacidade = 20, tipo = 'helicopteros' },
	{ hash = 1483171323, name = 'deluxo', price = 150000, banido = false, modelo = 'deluxo', capacidade = 15, tipo = 'outros' },
	{ hash = -192929549, name = 'audirs7', price = 35000, banido = false, modelo = 'audirs7', capacidade = 15, tipo = 'outros' },
	{ hash = -654239719, name = 'agerars', price = 35000, banido = false, modelo = 'agerars', capacidade = 75, tipo = 'carros' },
	{ hash = 886810209, name = 'stromberg', price = 35000, banido = false, modelo = 'stromberg', capacidade = 15, tipo = 'outros' },
	{ hash = -1693015116, name = 'riot2', price = 40000, banido = false, modelo = 'riot2', capacidade = 15, tipo = 'outros' },
	{ hash = -2118308144, name = 'avenger', price = 45000, banido = false, modelo = 'avenger', capacidade = 350, tipo = 'avioes' },
	{ hash = 408970549, name = 'avenger2', price = 45000, banido = false, modelo = 'avenger2', capacidade = 350, tipo = 'avioes' },
	{ hash = -1960756985, name = 'formula2', price = 35000, banido = false, modelo = 'formula2', capacidade = 15, tipo = 'outros' },
	{ hash = -475284513, name = 'f800', price = 12000, banido = false, modelo = 'f800', capacidade = 20, tipo = 'motos' },
	{ hash = 1489874736, name = 'thruster', price = 52000, banido = false, modelo = 'thruster', capacidade = 15, tipo = 'outros' },
	{ hash = -1374500452, name = 'deathbike3', price = 12000, banido = false, modelo = 'deathbike3', capacidade = 20, tipo = 'motos' },
	{ hash = 1741861769, name = 'streiter', price = 150000, banido = false, modelo = 'streiter', capacidade = 15, tipo = 'outros' },
	{ hash = 867799010, name = 'pariah', price = 150000, banido = false, modelo = 'pariah', capacidade = 15, tipo = 'outros' },
	{ hash = 1166275081, name = 'jeepgladiator', price = 50000, banido = false, modelo = 'jeepgladiator', capacidade = 75, tipo = 'carros' },
	{ hash = -121446169, name = 'kamacho', price = 50000, banido = false, modelo = 'kamacho', capacidade = 75, tipo = 'carros' },
	{ hash = -2120700196, name = 'entity2', price = 35000, banido = false, modelo = 'entity2', capacidade = 75, tipo = 'carros' },
	{ hash = 1377217886, name = 'remus', price = 100000, banido = false, modelo = 'remus', capacidade = 15, tipo = 'outros' },
	{ hash = -988501280, name = 'cheburek', price = 150000, banido = false, modelo = 'cheburek', capacidade = 15, tipo = 'outros' },
	{ hash = -1924800695, name = 'impaler3', price = 30000, banido = false, modelo = 'impaler3', capacidade = 15, tipo = 'outros' },
	{ hash = 540101442, name = 'zr380', price = 150000, banido = false, modelo = 'zr380', capacidade = 15, tipo = 'outros' },
	{ hash = 1254014755, name = 'caracara', price = 50000, banido = false, modelo = 'caracara', capacidade = 75, tipo = 'carros' },
	{ hash = 1115909093, name = 'hotring', price = 100000, banido = false, modelo = 'hotring', capacidade = 15, tipo = 'outros' },
	{ hash = -726768679, name = 'seasparrow', price = 52000, banido = false, modelo = 'seasparrow', capacidade = 20, tipo = 'helicopteros' },
	{ hash = -1827911356, name = 'medicheli', price = 52000, banido = false, modelo = 'medicheli', capacidade = 20, tipo = 'helicopteros' },
	{ hash = 1047274985, name = 'africat', price = 12000, banido = false, modelo = 'africat', capacidade = 20, tipo = 'motos' },
	{ hash = 1046206681, name = 'michelli', price = 130000, banido = false, modelo = 'michelli', capacidade = 15, tipo = 'outros' },
	{ hash = -986944621, name = 'dominator3', price = 100000, banido = false, modelo = 'dominator3', capacidade = 15, tipo = 'outros' },
	{ hash = 1031562256, name = 'tezeract', price = 35000, banido = false, modelo = 'tezeract', capacidade = 75, tipo = 'carros' },
	{ hash = -1217428749, name = 'speedtail', price = 35000, banido = false, modelo = 'speedtail', capacidade = 75, tipo = 'carros' },
	{ hash = 931280609, name = 'issi3', price = 52000, banido = false, modelo = 'issi3', capacidade = 15, tipo = 'outros' },
	{ hash = -638562243, name = 'scramjet', price = 130000, banido = false, modelo = 'scramjet', capacidade = 75, tipo = 'carros' },
	{ hash = -1015450004, name = '500xt', price = 20000, banido = false, modelo = '500xt', capacidade = 15, tipo = 'outros' },
	{ hash = 1692272545, name = 'strikeforce', price = 45000, banido = false, modelo = 'strikeforce', capacidade = 350, tipo = 'avioes' },
	{ hash = -1988428699, name = 'terbyte', price = 25000, banido = false, modelo = 'terbyte', capacidade = 300, tipo = 'serviço' },
	{ hash = 345756458, name = 'pbus2', price = 25000, banido = false, modelo = 'pbus2', capacidade = 15, tipo = 'outros' },
	{ hash = 56265256, name = 'Motorizada', price = 12000, banido = false, modelo = 'Motorizada', capacidade = 20, tipo = 'motos' },
	{ hash = 905399718, name = 'a80', price = 25000, banido = false, modelo = 'a80', capacidade = 15, tipo = 'outros' },
	{ hash = 2069146067, name = 'oppressor2', price = 20000, banido = false, modelo = 'oppressor2', capacidade = 20, tipo = 'motos' },
	{ hash = -119042591, name = 'mercedescla45', price = 35000, banido = false, modelo = 'mercedescla45', capacidade = 15, tipo = 'outros' },
	{ hash = 219613597, name = 'speedo4', price = 22000, banido = false, modelo = 'speedo4', capacidade = 250, tipo = 'utilitario' },
	{ hash = -54332285, name = 'freecrawler', price = 50000, banido = false, modelo = 'freecrawler', capacidade = 75, tipo = 'carros' },
	{ hash = -1092195605, name = 'drone', price = 50000, banido = false, modelo = 'drone', capacidade = 350, tipo = 'avioes' },
	{ hash = 1945374990, name = 'mule4', price = 25000, banido = false, modelo = 'mule4', capacidade = 300, tipo = 'serviço' },
	{ hash = 2044532910, name = 'menacer', price = 50000, banido = false, modelo = 'menacer', capacidade = 75, tipo = 'carros' },
	{ hash = 1600011751, name = 'corollator', price = 50000, banido = false, modelo = 'corollator', capacidade = 15, tipo = 'outros' },
	{ hash = -307958377, name = 'blimp3', price = 52000, banido = false, modelo = 'blimp3', capacidade = 350, tipo = 'avioes' },
	{ hash = -604287337, name = 'jesko', price = 35000, banido = false, modelo = 'jesko', capacidade = 75, tipo = 'carros' },
	{ hash = 500482303, name = 'swinger', price = 130000, banido = false, modelo = 'swinger', capacidade = 15, tipo = 'outros' },
	{ hash = 242156012, name = 'rmodbmwm8', price = 35000, banido = false, modelo = 'rmodbmwm8', capacidade = 75, tipo = 'carros' },
	{ hash = -420911112, name = 'patriot2', price = 50000, banido = false, modelo = 'patriot2', capacidade = 15, tipo = 'outros' },
	{ hash = -331467772, name = 'italigto', price = 35000, banido = false, modelo = 'italigto', capacidade = 15, tipo = 'outros' },
	{ hash = -715746948, name = 'monster5', price = 500000, banido = false, modelo = 'monster5', capacidade = 75, tipo = 'carros' },
	{ hash = -1812949672, name = 'deathbike2', price = 12000, banido = false, modelo = 'deathbike2', capacidade = 20, tipo = 'motos' },
	{ hash = -1744505657, name = 'impaler4', price = 30000, banido = false, modelo = 'impaler4', capacidade = 15, tipo = 'outros' },
	{ hash = 902632726, name = 'c63amg', price = 35000, banido = false, modelo = 'c63amg', capacidade = 75, tipo = 'carros' },
	{ hash = -2061049099, name = 'slamvan4', price = 30000, banido = false, modelo = 'slamvan4', capacidade = 15, tipo = 'outros' },
	{ hash = 2139203625, name = 'brutus', price = 50000, banido = false, modelo = 'brutus', capacidade = 75, tipo = 'carros' },
	{ hash = -27326686, name = 'deathbike', price = 12000, banido = false, modelo = 'deathbike', capacidade = 20, tipo = 'motos' },
	{ hash = -688189648, name = 'dominator4', price = 150000, banido = false, modelo = 'dominator4', capacidade = 15, tipo = 'outros' },
	{ hash = -2091594350, name = '918', price = 100000, banido = false, modelo = '918', capacidade = 75, tipo = 'carros' },
	{ hash = -1375060657, name = 'dominator5', price = 150000, banido = false, modelo = 'dominator5', capacidade = 15, tipo = 'outros' },
	{ hash = -1810806490, name = 'seminole2', price = 50000, banido = false, modelo = 'seminole2', capacidade = 15, tipo = 'outros' },
	{ hash = 668439077, name = 'bruiser', price = 40000, banido = false, modelo = 'bruiser', capacidade = 75, tipo = 'carros' },
	{ hash = -286046740, name = 'rcbandito', price = 50000, banido = false, modelo = 'rcbandito', capacidade = 75, tipo = 'carros' },
	{ hash = -801550069, name = 'cerberus', price = 25000, banido = false, modelo = 'cerberus', capacidade = 300, tipo = 'serviço' },
	{ hash = -1173768715, name = 'ferrariitalia', price = 25000, banido = false, modelo = 'ferrariitalia', capacidade = 75, tipo = 'carros' },
	{ hash = 1039032026, name = 'blista2', price = 35000, banido = false, modelo = 'blista2', capacidade = 15, tipo = 'outros' },
	{ hash = 1721676810, name = 'monster3', price = 500000, banido = false, modelo = 'monster3', capacidade = 75, tipo = 'carros' },
	{ hash = 1456744817, name = 'tulip', price = 30000, banido = false, modelo = 'tulip', capacidade = 15, tipo = 'outros' },
	{ hash = 1284356689, name = 'zhaba', price = 50000, banido = false, modelo = 'zhaba', capacidade = 75, tipo = 'carros' },
	{ hash = -1146969353, name = 'scarab', price = 40000, banido = false, modelo = 'scarab', capacidade = 15, tipo = 'outros' },
	{ hash = -49115651, name = 'vamos', price = 150000, banido = false, modelo = 'vamos', capacidade = 15, tipo = 'outros' },
	{ hash = 444994115, name = 'imperator', price = 150000, banido = false, modelo = 'imperator', capacidade = 15, tipo = 'outros' },
	{ hash = 1637620610, name = 'imperator2', price = 150000, banido = false, modelo = 'imperator2', capacidade = 15, tipo = 'outros' },
	{ hash = -755532233, name = 'imperator3', price = 150000, banido = false, modelo = 'imperator3', capacidade = 15, tipo = 'outros' },
	{ hash = 1279262537, name = 'deviant', price = 150000, banido = false, modelo = 'deviant', capacidade = 15, tipo = 'outros' },
	{ hash = -2096690334, name = 'impaler', price = 30000, banido = false, modelo = 'impaler', capacidade = 15, tipo = 'outros' },
	{ hash = -1106120762, name = 'zr3802', price = 150000, banido = false, modelo = 'zr3802', capacidade = 15, tipo = 'outros' },
	{ hash = -447711397, name = 'paragon', price = 150000, banido = false, modelo = 'paragon', capacidade = 15, tipo = 'outros' },
	{ hash = -1404319008, name = 'bmwm8', price = 35000, banido = false, modelo = 'bmwm8', capacidade = 75, tipo = 'carros' },
	{ hash = -208911803, name = 'jugular', price = 150000, banido = false, modelo = 'jugular', capacidade = 15, tipo = 'outros' },
	{ hash = 916547552, name = 'rrocket', price = 12000, banido = false, modelo = 'rrocket', capacidade = 20, tipo = 'motos' },
	{ hash = -1804415708, name = 'peyote2', price = 25000, banido = false, modelo = 'peyote2', capacidade = 15, tipo = 'outros' },
	{ hash = -324618589, name = 's80', price = 35000, banido = false, modelo = 's80', capacidade = 75, tipo = 'carros' },
	{ hash = -682108547, name = 'zorrusso', price = 35000, banido = false, modelo = 'zorrusso', capacidade = 75, tipo = 'carros' },
	{ hash = 1854776567, name = 'issi7', price = 35000, banido = false, modelo = 'issi7', capacidade = 15, tipo = 'outros' },
	{ hash = 616244275, name = '500x', price = 20000, banido = false, modelo = '500x', capacidade = 15, tipo = 'outros' },
	{ hash = -913589546, name = 'glendale2', price = 100000, banido = false, modelo = 'glendale2', capacidade = 15, tipo = 'outros' },
	{ hash = -1467569396, name = '180sx', price = 150000, banido = false, modelo = '180sx', capacidade = 15, tipo = 'outros' },
	{ hash = -941272559, name = 'locust', price = 35000, banido = false, modelo = 'locust', capacidade = 15, tipo = 'outros' },
	{ hash = -1540353819, name = 'bmwi8', price = 35000, banido = false, modelo = 'bmwi8', capacidade = 75, tipo = 'carros' },
	{ hash = 1323778901, name = 'emerus', price = 35000, banido = false, modelo = 'emerus', capacidade = 75, tipo = 'carros' },
	{ hash = 1509738688, name = 'harleydavidsonrg', price = 12000, banido = false, modelo = 'harleydavidsonrg', capacidade = 20, tipo = 'motos' },
	{ hash = 722226637, name = 'gauntlet3', price = 25000, banido = false, modelo = 'gauntlet3', capacidade = 15, tipo = 'outros' },
	{ hash = -882629065, name = 'nebula', price = 150000, banido = false, modelo = 'nebula', capacidade = 15, tipo = 'outros' },
	{ hash = 1862507111, name = 'zion3', price = 30000, banido = false, modelo = 'zion3', capacidade = 15, tipo = 'outros' },
	{ hash = 686471183, name = 'drafter', price = 150000, banido = false, modelo = 'drafter', capacidade = 15, tipo = 'outros' },
	{ hash = -1254331310, name = 'minitank', price = 40000, banido = false, modelo = 'minitank', capacidade = 15, tipo = 'outros' },
	{ hash = 13763442, name = 'ranger', price = 35000, banido = false, modelo = 'ranger', capacidade = 15, tipo = 'outros' },
	{ hash = 1693751655, name = 'yosemite2', price = 25000, banido = false, modelo = 'yosemite2', capacidade = 15, tipo = 'outros' },
	{ hash = 301304410, name = 'Stryder', price = 12000, banido = false, modelo = 'Stryder', capacidade = 20, tipo = 'motos' },
	{ hash = -882050971, name = 'golf3', price = 35000, banido = false, modelo = 'golf3', capacidade = 15, tipo = 'outros' },
	{ hash = 394110044, name = 'jb7002', price = 150000, banido = false, modelo = 'jb7002', capacidade = 15, tipo = 'outros' },
	{ hash = 872704284, name = 'sultan2', price = 35000, banido = false, modelo = 'sultan2', capacidade = 15, tipo = 'outros' },
	{ hash = 987469656, name = 'Sugoi', price = 150000, banido = false, modelo = 'Sugoi', capacidade = 15, tipo = 'outros' },
	{ hash = 340154634, name = 'formula', price = 35000, banido = false, modelo = 'formula', capacidade = 15, tipo = 'outros' },
	{ hash = -1940854501, name = 'eg6', price = 25000, banido = false, modelo = 'eg6', capacidade = 15, tipo = 'outros' },
	{ hash = 960812448, name = 'furia', price = 35000, banido = false, modelo = 'furia', capacidade = 75, tipo = 'carros' },
	{ hash = 1469041587, name = '2019chiron', price = 260000, banido = false, modelo = '2019chiron', capacidade = 75, tipo = 'carros' },
	{ hash = 1456336509, name = 'vstr', price = 150000, banido = false, modelo = 'vstr', capacidade = 15, tipo = 'outros' },
	{ hash = 409049982, name = 'kanjo', price = 150000, banido = false, modelo = 'kanjo', capacidade = 15, tipo = 'outros' },
	{ hash = -1132721664, name = 'imorgon', price = 35000, banido = false, modelo = 'imorgon', capacidade = 15, tipo = 'outros' },
	{ hash = -1728685474, name = 'coquette4', price = 150000, banido = false, modelo = 'coquette4', capacidade = 15, tipo = 'outros' },
	{ hash = -838099166, name = 'landstalker2', price = 50000, banido = false, modelo = 'landstalker2', capacidade = 15, tipo = 'outros' },
	{ hash = -2098954619, name = 'club', price = 150000, banido = false, modelo = 'club', capacidade = 15, tipo = 'outros' },
	{ hash = 2134119907, name = 'dukes3', price = 150000, banido = false, modelo = 'dukes3', capacidade = 15, tipo = 'outros' },
	{ hash = 2113322010, name = '70camarofn', price = 70000, banido = false, modelo = '70camarofn', capacidade = 15, tipo = 'outros' },
	{ hash = 1181339704, name = 'openwheel2', price = 35000, banido = false, modelo = 'openwheel2', capacidade = 15, tipo = 'outros' },
	{ hash = 1107404867, name = 'peyote3', price = 25000, banido = false, modelo = 'peyote3', capacidade = 15, tipo = 'outros' },
	{ hash = 1303533606, name = 'dbs', price = 150000, banido = false, modelo = 'dbs', capacidade = 15, tipo = 'outros' },
	{ hash = -1492917079, name = 'veto2', price = 50000, banido = false, modelo = 'veto2', capacidade = 15, tipo = 'outros' },
	{ hash = -1149725334, name = 'italirsx', price = 35000, banido = false, modelo = 'italirsx', capacidade = 15, tipo = 'outros' },
	{ hash = 1744543800, name = 'z1000', price = 20000, banido = false, modelo = 'z1000', capacidade = 20, tipo = 'motos' },
	{ hash = 1455990255, name = 'toreador', price = 35000, banido = false, modelo = 'toreador', capacidade = 15, tipo = 'outros' },
	{ hash = -336336541, name = 'vwgolfgti', price = 35000, banido = false, modelo = 'vwgolfgti', capacidade = 15, tipo = 'outros' },
	{ hash = -1045911276, name = 'slamtruck', price = 25000, banido = false, modelo = 'slamtruck', capacidade = 15, tipo = 'outros' },
	{ hash = 1644055914, name = 'weevil', price = 35000, banido = false, modelo = 'weevil', capacidade = 15, tipo = 'outros' },
	{ hash = -365873403, name = 'alkonost', price = 45000, banido = false, modelo = 'alkonost', capacidade = 350, tipo = 'avioes' },
	{ hash = -1761239425, name = 'hornet', price = 12000, banido = false, modelo = 'hornet', capacidade = 20, tipo = 'motos' },
	{ hash = 1229411063, name = 'seasparrow2', price = 52000, banido = false, modelo = 'seasparrow2', capacidade = 20, tipo = 'helicopteros' },
	{ hash = 493030188, name = 'amarok', price = 25000, banido = false, modelo = 'amarok', capacidade = 250, tipo = 'utilitario' },
	{ hash = 1336872304, name = 'kosatka', price = 40000, banido = false, modelo = 'kosatka', capacidade = 50, tipo = 'barcos' },
	{ hash = -1108591207, name = 'freightcar2', price = 110000, banido = false, modelo = 'freightcar2', capacidade = 15, tipo = 'outros' },
	{ hash = 1892884639, name = 'vwfusca', price = 10000, banido = false, modelo = 'vwfusca', capacidade = 15, tipo = 'outros' },
	{ hash = 426742808, name = 'dominator7', price = 35000, banido = false, modelo = 'dominator7', capacidade = 15, tipo = 'outros' },
	{ hash = 736672010, name = 'dominator8', price = 25000, banido = false, modelo = 'dominator8', capacidade = 15, tipo = 'outros' },
	{ hash = -2014898325, name = 'monsterr34', price = 500000, banido = false, modelo = 'monsterr34', capacidade = 15, tipo = 'outros' },
	{ hash = 2038480341, name = 'euros', price = 80000, banido = false, modelo = 'euros', capacidade = 15, tipo = 'outros' },
	{ hash = 1136652372, name = 'mi4', price = 25000, banido = false, modelo = 'mi4', capacidade = 15, tipo = 'outros' },
	{ hash = -1244461404, name = 'tailgater2', price = 35000, banido = false, modelo = 'tailgater2', capacidade = 15, tipo = 'outros' },
	{ hash = 1304459735, name = 'growler', price = 150000, banido = false, modelo = 'growler', capacidade = 15, tipo = 'outros' },
	{ hash = -1858654120, name = 'zr350', price = 150000, banido = false, modelo = 'zr350', capacidade = 15, tipo = 'outros' },
	{ hash = -2140859055, name = 'sennagtr', price = 35000, banido = false, modelo = 'sennagtr', capacidade = 75, tipo = 'carros' },
	{ hash = 579912970, name = 'warrener2', price = 100000, banido = false, modelo = 'warrener2', capacidade = 15, tipo = 'outros' },
	{ hash = -1066334226, name = 'submersible2', price = 40000, banido = false, modelo = 'submersible2', capacidade = 50, tipo = 'barcos' },
	{ hash = 723973206, name = 'dukes', price = 150000, banido = false, modelo = 'dukes', capacidade = 15, tipo = 'outros' },
	{ hash = 1603211447, name = 'eclipse', price = 80000, banido = false, modelo = 'eclipse', capacidade = 15, tipo = 'outros' },
	{ hash = -915704871, name = 'dominator2', price = 150000, banido = false, modelo = 'dominator2', capacidade = 15, tipo = 'outros' },
	{ hash = -901163259, name = 'dodo', price = 45000, banido = false, modelo = 'dodo', capacidade = 350, tipo = 'avioes' },
	{ hash = 1233534620, name = 'marshall', price = 500000, banido = false, modelo = 'marshall', capacidade = 75, tipo = 'carros' },
	{ hash = 859592619, name = 'porsche992', price = 150000, banido = false, modelo = 'porsche992', capacidade = 15, tipo = 'outros' },
	{ hash = 349315417, name = 'gauntlet2', price = 25000, banido = false, modelo = 'gauntlet2', capacidade = 15, tipo = 'outros' },
	{ hash = -1667151882, name = 'moby', price = 12000, banido = false, modelo = 'moby', capacidade = 20, tipo = 'motos' },
	{ hash = 330477303, name = 'mbati', price = 20000, banido = false, modelo = 'mbati', capacidade = 20, tipo = 'motos' },
	{ hash = 18032233, name = 'chillybin', price = 15000, banido = false, modelo = 'chillybin', capacidade = 15, tipo = 'outros' },
	{ hash = -1048341725, name = 'skart', price = 15000, banido = false, modelo = 'skart', capacidade = 15, tipo = 'outros' },
	{ hash = -1688644769, name = 'sw4grau1', price = 50000, banido = false, modelo = 'sw4grau1', capacidade = 15, tipo = 'outros' },
	{ hash = 1027063775, name = 'panamera', price = 55000, banido = false, modelo = 'panamera', capacidade = 15, tipo = 'outros' },
	{ hash = -1134424733, name = 'porschemacan', price = 50000, banido = false, modelo = 'porschemacan', capacidade = 15, tipo = 'outros' },
	{ hash = 522918798, name = 'akuruma', price = 35000, banido = false, modelo = 'akuruma', capacidade = 15, tipo = 'outros' },
	{ hash = 119794591, name = 'sq72016', price = 35000, banido = false, modelo = 'sq72016', capacidade = 15, tipo = 'outros' },
	{ hash = 1966489524, name = 's15', price = 35000, banido = false, modelo = 's15', capacidade = 15, tipo = 'outros' },
	{ hash = -2011325074, name = 'gt17', price = 35000, banido = false, modelo = 'gt17', capacidade = 75, tipo = 'carros' },
	{ hash = -520214134, name = 'urus', price = 50000, banido = false, modelo = 'urus', capacidade = 15, tipo = 'outros' },
	{ hash = 765584592, name = 'ie', price = 25000, banido = false, modelo = 'ie', capacidade = 75, tipo = 'carros' },
	{ hash = 1224601968, name = '19ftype', price = 35000, banido = false, modelo = '19ftype', capacidade = 15, tipo = 'outros' },
	{ hash = 1011257076, name = 'boxster', price = 100000, banido = false, modelo = 'boxster', capacidade = 75, tipo = 'carros' },
	{ hash = -1088481501, name = '675lt', price = 100000, banido = false, modelo = '675lt', capacidade = 15, tipo = 'outros' },
	{ hash = -548280172, name = 'laferrari', price = 150000, banido = false, modelo = 'laferrari', capacidade = 75, tipo = 'carros' },
	{ hash = 494265960, name = 'cb500x', price = 12000, banido = false, modelo = 'cb500x', capacidade = 20, tipo = 'motos' },
	{ hash = 670022011, name = 'nissangtrnismo', price = 25000, banido = false, modelo = 'nissangtrnismo', capacidade = 15, tipo = 'outros' },
	{ hash = -454947760, name = 'trail19rt', price = 50000, banido = false, modelo = 'trail19rt', capacidade = 15, tipo = 'outros' },
	{ hash = -264618235, name = 'lamtmc', price = 125000, banido = false, modelo = 'lamtmc', capacidade = 75, tipo = 'carros' },
	{ hash = 1740654099, name = 'rx7tunable2', price = 150000, banido = false, modelo = 'rx7tunable2', capacidade = 15, tipo = 'outros' },
	{ hash = 1671178289, name = 'd99', price = 20000, banido = false, modelo = 'd99', capacidade = 20, tipo = 'motos' },
	{ hash = 1085789913, name = 'regera', price = 35000, banido = false, modelo = 'regera', capacidade = 75, tipo = 'carros' },
	{ hash = 1221510024, name = 'nissantitan17', price = 25000, banido = false, modelo = 'nissantitan17', capacidade = 15, tipo = 'outros' },
	{ hash = -863499820, name = 'rmodamgc63', price = 25000, banido = false, modelo = 'rmodamgc63', capacidade = 75, tipo = 'carros' },
	{ hash = 1093813686, name = 'disneynewsvan', price = 80000, banido = false, modelo = 'disneynewsvan', capacidade = 250, tipo = 'utilitario' },
	{ hash = -380714779, name = 'bme6tun', price = 25000, banido = false, modelo = 'bme6tun', capacidade = 15, tipo = 'outros' },
	{ hash = 1442563774, name = 'yamahar1', price = 20000, banido = false, modelo = 'yamahar1', capacidade = 20, tipo = 'motos' },
	{ hash = -597548221, name = 'frontierbope', price = 50000, banido = false, modelo = 'frontierbope', capacidade = 15, tipo = 'outros' },
	{ hash = 502921999, name = 'aguia14', price = 52000, banido = false, modelo = 'aguia14', capacidade = 20, tipo = 'helicopteros' },
	{ hash = -189438188, name = 'p1', price = 35000, banido = false, modelo = 'p1', capacidade = 75, tipo = 'carros' },
	{ hash = 949614817, name = 'lp700r', price = 30000, banido = false, modelo = 'lp700r', capacidade = 75, tipo = 'carros' },
	{ hash = -739058151, name = 'audir8', price = 100000, banido = false, modelo = 'audir8', capacidade = 75, tipo = 'carros' },
	{ hash = -193064196, name = 'escort', price = 80000, banido = false, modelo = 'escort', capacidade = 75, tipo = 'carros' },
	{ hash = -661719484, name = 'c7r', price = 80000, banido = false, modelo = 'c7r', capacidade = 15, tipo = 'outros' },
	{ hash = -1302762077, name = 'viper', price = 150000, banido = false, modelo = 'viper', capacidade = 15, tipo = 'outros' },
	{ hash = 1010592571, name = 'ferrari458', price = 150000, banido = false, modelo = 'ferrari458', capacidade = 15, tipo = 'outros' },
	{ hash = -1573350092, name = 'fordmustang', price = 25000, banido = false, modelo = 'fordmustang', capacidade = 15, tipo = 'outros' },
	{ hash = -60313827, name = 'nissangtr', price = 35000, banido = false, modelo = 'nissangtr', capacidade = 15, tipo = 'outros' },
	{ hash = 351980252, name = 'teslaprior', price = 35000, banido = false, modelo = 'teslaprior', capacidade = 15, tipo = 'outros' },
	{ hash = 1676738519, name = 'audirs6', price = 35000, banido = false, modelo = 'audirs6', capacidade = 15, tipo = 'outros' },
	{ hash = -50577213, name = 'news', price = 52000, banido = false, modelo = 'news', capacidade = 20, tipo = 'helicopteros' },
	{ hash = -157095615, name = 'bmwm3f80', price = 25000, banido = false, modelo = 'bmwm3f80', capacidade = 15, tipo = 'outros' },
	{ hash = 1601422646, name = 'dodgechargersrt', price = 25000, banido = false, modelo = 'dodgechargersrt', capacidade = 15, tipo = 'outros' },
	{ hash = -13524981, name = 'bmwm4gts', price = 25000, banido = false, modelo = 'bmwm4gts', capacidade = 15, tipo = 'outros' },
	{ hash = 1709518892, name = 'zx10', price = 20000, banido = false, modelo = 'zx10', capacidade = 20, tipo = 'motos' },
	{ hash = 1978088379, name = 'lancerevolutionx', price = 25000, banido = false, modelo = 'lancerevolutionx', capacidade = 15, tipo = 'outros' },
	{ hash = 1982348745, name = 'l20021', price = 50000, banido = false, modelo = 'l20021', capacidade = 15, tipo = 'outros' },
	{ hash = -2015521772, name = 'fordfocusrs', price = 30000, banido = false, modelo = 'fordfocusrs', capacidade = 15, tipo = 'outros' },
	{ hash = 723779872, name = 'toyotasupra', price = 35000, banido = false, modelo = 'toyotasupra', capacidade = 15, tipo = 'outros' },
	{ hash = -1561625274, name = 'mclarensenna', price = 150000, banido = false, modelo = 'mclarensenna', capacidade = 75, tipo = 'carros' },
	{ hash = 1448263274, name = 'rangerovervelar', price = 50000, banido = false, modelo = 'rangerovervelar', capacidade = 15, tipo = 'outros' },
	{ hash = 1252150971, name = 'dodgeram2500', price = 50000, banido = false, modelo = 'dodgeram2500', capacidade = 75, tipo = 'carros' },
	{ hash = -2049278303, name = 'ben17', price = 35000, banido = false, modelo = 'ben17', capacidade = 15, tipo = 'outros' },
	{ hash = -2003055868, name = 'ayamahar1', price = 20000, banido = false, modelo = 'ayamahar1', capacidade = 20, tipo = 'motos' },
	{ hash = -1536944842, name = 'hondacbr650r', price = 20000, banido = false, modelo = 'hondacbr650r', capacidade = 20, tipo = 'motos' },
	{ hash = 2113441065, name = 'rs6', price = 35000, banido = false, modelo = 'rs6', capacidade = 15, tipo = 'outros' },
	{ hash = -552537498, name = 'mercedesslsamg', price = 150000, banido = false, modelo = 'mercedesslsamg', capacidade = 75, tipo = 'carros' },
	{ hash = -1217869967, name = 'amcdefiant', price = 25000, banido = false, modelo = 'amcdefiant', capacidade = 15, tipo = 'outros' },
	{ hash = -913355728, name = 'mustangeleanor', price = 70000, banido = false, modelo = 'mustangeleanor', capacidade = 15, tipo = 'outros' },
	{ hash = 1153542300, name = 'nissansilvias15', price = 25000, banido = false, modelo = 'nissansilvias15', capacidade = 15, tipo = 'outros' },
	{ hash = -424518767, name = 'avwfusca', price = 150000, banido = false, modelo = 'avwfusca', capacidade = 15, tipo = 'outros' },
	{ hash = 170275565, name = 'trail21eb', price = 50000, banido = false, modelo = 'trail21eb', capacidade = 15, tipo = 'outros' },
	{ hash = 1934710774, name = 'lamborghinievo', price = 35000, banido = false, modelo = 'lamborghinievo', capacidade = 75, tipo = 'carros' },
	{ hash = 1742453985, name = 'lamborghinievos', price = 35000, banido = false, modelo = 'lamborghinievos', capacidade = 75, tipo = 'carros' },
	{ hash = -1593031670, name = 'harleydavidsonfx', price = 12000, banido = false, modelo = 'harleydavidsonfx', capacidade = 20, tipo = 'motos' },
	{ hash = -2104715514, name = 'snowmobile', price = 12000, banido = false, modelo = 'snowmobile', capacidade = 20, tipo = 'motos' },
	{ hash = 1353576925, name = 'bugattichiron', price = 80000, banido = false, modelo = 'bugattichiron', capacidade = 75, tipo = 'carros' },
	{ hash = -423677691, name = 'sr1', price = 12000, banido = false, modelo = 'sr1', capacidade = 20, tipo = 'motos' },
	{ hash = -1821058410, name = 'corvettec8', price = 80000, banido = false, modelo = 'corvettec8', capacidade = 75, tipo = 'carros' },
	{ hash = 1059916130, name = 'scaniarepair', price = 80000, banido = false, modelo = 'scaniarepair', capacidade = 15, tipo = 'outros' },
	{ hash = 321407703, name = 'CBTWISTER', price = 12000, banido = false, modelo = 'CBTWISTER', capacidade = 20, tipo = 'motos' },
	{ hash = -422136660, name = 'monsterr', price = 500000, banido = false, modelo = 'monsterr', capacidade = 75, tipo = 'carros' },
	{ hash = 999324520, name = 'bmwm5f90', price = 35000, banido = false, modelo = 'bmwm5f90', capacidade = 15, tipo = 'outros' },
	{ hash = -2011819309, name = 'teslamodelx', price = 25000, banido = false, modelo = 'teslamodelx', capacidade = 15, tipo = 'outros' },
	{ hash = 1815977170, name = 'hondansx', price = 25000, banido = false, modelo = 'hondansx', capacidade = 15, tipo = 'outros' },
	{ hash = 252412752, name = 'sprintersamu', price = 50000, banido = false, modelo = 'sprintersamu', capacidade = 15, tipo = 'outros' },
	{ hash = -74939923, name = 'WRbmwm4', price = 50000, banido = false, modelo = 'WRbmwm4', capacidade = 15, tipo = 'outros' },
	{ hash = 1773867721, name = 'ferrarif12tdf', price = 150000, banido = false, modelo = 'ferrarif12tdf', capacidade = 75, tipo = 'carros' },
	{ hash = -1145359359, name = 'dlfedexvan', price = 80000, banido = false, modelo = 'dlfedexvan', capacidade = 250, tipo = 'utilitario' },
	{ hash = -910968918, name = 'dodgechallenger', price = 100000, banido = false, modelo = 'dodgechallenger', capacidade = 15, tipo = 'outros' },
	{ hash = 303498904, name = 'heli', price = 52000, banido = false, modelo = 'heli', capacidade = 20, tipo = 'helicopteros' },
	{ hash = -581132466, name = 'subaruwrx2004', price = 35000, banido = false, modelo = 'subaruwrx2004', capacidade = 15, tipo = 'outros' },
	{ hash = 598189851, name = 'hondacivic2000', price = 25000, banido = false, modelo = 'hondacivic2000', capacidade = 15, tipo = 'outros' },
	{ hash = -333945568, name = 'compass2', price = 50000, banido = false, modelo = 'compass2', capacidade = 15, tipo = 'outros' },
	{ hash = 147177933, name = '350z', price = 35000, banido = false, modelo = '350z', capacidade = 75, tipo = 'carros' },
	{ hash = -1007548631, name = 'mercedess63', price = 35000, banido = false, modelo = 'mercedess63', capacidade = 15, tipo = 'outros' },
	{ hash = -1462469473, name = 'vwgol', price = 35000, banido = false, modelo = 'vwgol', capacidade = 15, tipo = 'outros' },
	{ hash = -562874682, name = 'caravan', price = 25000, banido = false, modelo = 'caravan', capacidade = 15, tipo = 'outros' },
	{ hash = 1453982608, name = 'opalass', price = 150000, banido = false, modelo = 'opalass', capacidade = 15, tipo = 'outros' },
	{ hash = 360757549, name = 'zx6r', price = 200000, banido = false, modelo = 'zx6r', capacidade = 20, tipo = 'motos' },
	{ hash = 2060113710, name = 'golfr', price = 35000, banido = false, modelo = 'golfr', capacidade = 15, tipo = 'outros' },
	{ hash = -1774739386, name = 'bmwm135i', price = 50000, banido = false, modelo = 'bmwm135i', capacidade = 15, tipo = 'outros' },
	{ hash = -1594199995, name = 'dlfedexboeing', price = 80000, banido = false, modelo = 'dlfedexboeing', capacidade = 350, tipo = 'avioes' },
	{ hash = 874739883, name = 'c7', price = 150000, banido = false, modelo = 'c7', capacidade = 75, tipo = 'carros' },
	{ hash = -828942986, name = 'auditt', price = 150000, banido = false, modelo = 'auditt', capacidade = 15, tipo = 'outros' },
	{ hash = 1212328552, name = 'monstergt', price = 500000, banido = false, modelo = 'monstergt', capacidade = 15, tipo = 'outros' },
	{ hash = 1440198504, name = 'skyr34', price = 35000, banido = false, modelo = 'skyr34', capacidade = 15, tipo = 'outros' },
	{ hash = 1512487090, name = 'bmwm8gte', price = 35000, banido = false, modelo = 'bmwm8gte', capacidade = 75, tipo = 'carros' },
	{ hash = -1371768796, name = 'h2carb', price = 20000, banido = false, modelo = 'h2carb', capacidade = 20, tipo = 'motos' },
	{ hash = 709002913, name = 'bentleygt', price = 35000, banido = false, modelo = 'bentleygt', capacidade = 75, tipo = 'carros' },
	{ hash = 1346649796, name = 'camarozl1', price = 35000, banido = false, modelo = 'camarozl1', capacidade = 15, tipo = 'outros' },
	{ hash = -329801744, name = 'trator2', price = 50000, banido = false, modelo = 'trator2', capacidade = 15, tipo = 'outros' },
	{ hash = 1373996428, name = 'supragr', price = 35000, banido = false, modelo = 'supragr', capacidade = 75, tipo = 'carros' },
	{ hash = 69336460, name = 'sian', price = 35000, banido = false, modelo = 'sian', capacidade = 75, tipo = 'carros' },
	{ hash = 1441439102, name = '918spyder', price = 35000, banido = false, modelo = '918spyder', capacidade = 15, tipo = 'outros' },
	{ hash = 1540878308, name = 'bmwm5e34', price = 35000, banido = false, modelo = 'bmwm5e34', capacidade = 15, tipo = 'outros' },
	{ hash = 1561761574, name = '458spc', price = 35000, banido = false, modelo = '458spc', capacidade = 15, tipo = 'outros' },
	{ hash = -701653192, name = 'trailcivileie', price = 50000, banido = false, modelo = 'trailcivileie', capacidade = 15, tipo = 'outros' },
	{ hash = 1289017382, name = 'outlandersap', price = 50000, banido = false, modelo = 'outlandersap', capacidade = 15, tipo = 'outros' },
	{ hash = -306884444, name = 'lp670', price = 35000, banido = false, modelo = 'lp670', capacidade = 75, tipo = 'carros' },
	{ hash = 468395564, name = 'pista', price = 35000, banido = false, modelo = 'pista', capacidade = 15, tipo = 'outros' },
	{ hash = -466520790, name = 'essenza', price = 35000, banido = false, modelo = 'essenza', capacidade = 75, tipo = 'carros' },
	{ hash = -1426479385, name = 'escortrs', price = 35000, banido = false, modelo = 'escortrs', capacidade = 15, tipo = 'outros' },
	{ hash = -336199507, name = 'energyraptor', price = 50000, banido = false, modelo = 'energyraptor', capacidade = 250, tipo = 'utilitario' },
	{ hash = 1975081724, name = 'bolide', price = 35000, banido = false, modelo = 'bolide', capacidade = 75, tipo = 'carros' },
	{ hash = -1778997287, name = 'abarth695', price = 35000, banido = false, modelo = 'abarth695', capacidade = 15, tipo = 'outros' },
	{ hash = -1435751836, name = 'bacalar', price = 35000, banido = false, modelo = 'bacalar', capacidade = 75, tipo = 'carros' },
	{ hash = -2111719615, name = '240sx', price = 35000, banido = false, modelo = '240sx', capacidade = 75, tipo = 'carros' },
	{ hash = -605639986, name = 'bmwboltz', price = 55000, banido = false, modelo = 'bmwboltz', capacidade = 15, tipo = 'outros' },
	{ hash = -1370111350, name = '720s', price = 260000, banido = false, modelo = '720s', capacidade = 75, tipo = 'carros' },
	{ hash = -97561111, name = 'golf2', price = 35000, banido = false, modelo = 'golf2', capacidade = 15, tipo = 'outros' },
	{ hash = -714386060, name = 'zx10r', price = 20000, banido = false, modelo = 'zx10r', capacidade = 20, tipo = 'motos' },
	{ hash = -127896429, name = '488', price = 35000, banido = false, modelo = '488', capacidade = 15, tipo = 'outros' },
	{ hash = 806568080, name = 'vwjetta', price = 35000, banido = false, modelo = 'vwjetta', capacidade = 15, tipo = 'outros' },
	{ hash = 103446152, name = 'trailft', price = 50000, banido = false, modelo = 'trailft', capacidade = 15, tipo = 'outros' },
	{ hash = -1532432776, name = 'R1200GS', price = 12000, banido = false, modelo = 'R1200GS', capacidade = 20, tipo = 'motos' },
	{ hash = 774592366, name = 'dm1200_02', price = 12000, banido = false, modelo = 'dm1200_02', capacidade = 20, tipo = 'motos' },
	{ hash = 356442851, name = 'gsxr', price = 20000, banido = false, modelo = 'gsxr', capacidade = 20, tipo = 'motos' },
	{ hash = -688419137, name = 'hayabusa', price = 20000, banido = false, modelo = 'hayabusa', capacidade = 20, tipo = 'motos' },
	{ hash = 1474015055, name = 'r1', price = 20000, banido = false, modelo = 'r1', capacidade = 20, tipo = 'motos' },
	{ hash = -188978926, name = 'r6', price = 20000, banido = false, modelo = 'r6', capacidade = 20, tipo = 'motos' },
	{ hash = -1156537658, name = 'tiger', price = 12000, banido = false, modelo = 'tiger', capacidade = 20, tipo = 'motos' },
	{ hash = 1322123305, name = 'f450c', price = 25000, banido = false, modelo = 'f450c', capacidade = 15, tipo = 'outros' },
	{ hash = 1901820368, name = 'energy450', price = 25000, banido = false, modelo = 'energy450', capacidade = 15, tipo = 'outros' },
	{ hash = 1061164732, name = 'toropcivil', price = 35000, banido = false, modelo = 'toropcivil', capacidade = 15, tipo = 'outros' },
	{ hash = -1476726893, name = 'tembici', price = 12000, banido = false, modelo = 'tembici', capacidade = 20, tipo = 'motos' },
	{ hash = -881146908, name = 'caddy', price = 25000, banido = false, modelo = 'caddy', capacidade = 15, tipo = 'outros' },
	{ hash = 29321366, name = 'vansub', price = 22000, banido = false, modelo = 'vansub', capacidade = 250, tipo = 'utilitario' },
	{ hash = -1066947624, name = 'uno', price = 30000, banido = false, modelo = 'uno', capacidade = 15, tipo = 'outros' },
	{ hash = 862198955, name = 'auno', price = 30000, banido = false, modelo = 'auno', capacidade = 15, tipo = 'outros' },
	{ hash = 1857884084, name = 'raptor', price = 50000, banido = false, modelo = 'raptor', capacidade = 250, tipo = 'utilitario' },
	{ hash = 404061881, name = 'ctaxi', price = 25000, banido = false, modelo = 'ctaxi', capacidade = 15, tipo = 'outros' },
	{ hash = -1194139631, name = 'avalanches', price = 20000, banido = false, modelo = 'avalanches', capacidade = 20, tipo = 'motos' },
	{ hash = 2137340341, name = 'gas', price = 35000, banido = false, modelo = 'gas', capacidade = 15, tipo = 'outros' },
	{ hash = 719085428, name = 'hiluxcoe', price = 50000, banido = false, modelo = 'hiluxcoe', capacidade = 15, tipo = 'outros' },
	{ hash = 1805782137, name = 'porsche', price = 50000, banido = false, modelo = 'porsche', capacidade = 15, tipo = 'outros' },
	{ hash = 34702548, name = 'civic', price = 25000, banido = false, modelo = 'civic', capacidade = 15, tipo = 'outros' },
	{ hash = 118503717, name = 'ram2500', price = 50000, banido = false, modelo = 'ram2500', capacidade = 15, tipo = 'outros' },
	{ hash = 1737400478, name = 'as350', price = 52000, banido = false, modelo = 'as350', capacidade = 20, tipo = 'helicopteros' },
	{ hash = -611512868, name = 'xtmontard', price = 12000, banido = false, modelo = 'xtmontard', capacidade = 20, tipo = 'motos' },
	{ hash = -768031370, name = 'seas', price = 52000, banido = false, modelo = 'seas', capacidade = 20, tipo = 'helicopteros' },
	{ hash = -772132317, name = 'sw4eb', price = 50000, banido = false, modelo = 'sw4eb', capacidade = 15, tipo = 'outros' },
	{ hash = 1056833740, name = 'spinrp2', price = 50000, banido = false, modelo = 'spinrp2', capacidade = 15, tipo = 'outros' },
	{ hash = 1193558481, name = 'traildope3', price = 50000, banido = false, modelo = 'traildope3', capacidade = 15, tipo = 'outros' },
	{ hash = 553947914, name = 'trail17eb', price = 50000, banido = false, modelo = 'trail17eb', capacidade = 15, tipo = 'outros' },
	{ hash = 372358737, name = 'trail20eb', price = 50000, banido = false, modelo = 'trail20eb', capacidade = 15, tipo = 'outros' },
	{ hash = 1757534671, name = 's10iml', price = 50000, banido = false, modelo = 's10iml', capacidade = 15, tipo = 'outros' },
	{ hash = 775265704, name = 'sprinter', price = 40000, banido = false, modelo = 'sprinter', capacidade = 15, tipo = 'outros' },
	{ hash = 1632099329, name = 'xre19rpm', price = 20000, banido = false, modelo = 'xre19rpm', capacidade = 15, tipo = 'outros' },
	{ hash = 1728396536, name = 'trail19eb', price = 50000, banido = false, modelo = 'trail19eb', capacidade = 15, tipo = 'outros' },
	{ hash = 1772977543, name = 'spineng', price = 50000, banido = false, modelo = 'spineng', capacidade = 15, tipo = 'outros' },
	{ hash = -1379452692, name = 'spinaegis', price = 50000, banido = false, modelo = 'spinaegis', capacidade = 15, tipo = 'outros' },
	{ hash = -1324297218, name = 'spinlegion', price = 50000, banido = false, modelo = 'spinlegion', capacidade = 15, tipo = 'outros' },
	{ hash = 838986610, name = 'xregeb', price = 20000, banido = false, modelo = 'xregeb', capacidade = 15, tipo = 'outros' },
	{ hash = -50123501, name = 'Wrgtr', price = 25000, banido = false, modelo = 'Wrgtr', capacidade = 15, tipo = 'outros' },
	{ hash = -1980604310, name = 'bentaygast', price = 50000, banido = false, modelo = 'bentaygast', capacidade = 15, tipo = 'outros' },
	{ hash = 924302710, name = 'as350pc', price = 52000, banido = false, modelo = 'as350pc', capacidade = 20, tipo = 'helicopteros' },
	{ hash = 431385387, name = 'WRclassxv2', price = 50000, banido = false, modelo = 'WRclassxv2', capacidade = 15, tipo = 'outros' },
	{ hash = -758728264, name = 'WRlancerx', price = 50000, banido = false, modelo = 'WRlancerx', capacidade = 15, tipo = 'outros' },
	{ hash = -1666489083, name = 'wrcb500x', price = 12000, banido = false, modelo = 'wrcb500x', capacidade = 15, tipo = 'outros' },
	{ hash = -811912081, name = 'xtrocam', price = 20000, banido = false, modelo = 'xtrocam', capacidade = 15, tipo = 'outros' },
	{ hash = -403808748, name = 'xre2019', price = 20000, banido = false, modelo = 'xre2019', capacidade = 15, tipo = 'outros' },
	{ hash = 1354343491, name = 'spinrp3', price = 50000, banido = false, modelo = 'spinrp3', capacidade = 15, tipo = 'outros' },
	{ hash = 564060192, name = 'trailpf', price = 50000, banido = false, modelo = 'trailpf', capacidade = 15, tipo = 'outros' },
	{ hash = -100743216, name = 'hiluxpf', price = 50000, banido = false, modelo = 'hiluxpf', capacidade = 15, tipo = 'outros' },
	{ hash = 1728071367, name = 'palioadv', price = 50000, banido = false, modelo = 'palioadv', capacidade = 15, tipo = 'outros' },
	{ hash = -236904349, name = 'motosamu', price = 20000, banido = false, modelo = 'motosamu', capacidade = 15, tipo = 'outros' },
	{ hash = 1084099044, name = 'samumav', price = 52000, banido = false, modelo = 'samumav', capacidade = 20, tipo = 'helicopteros' },
	{ hash = 1346171487, name = 'as350', price = 52000, banido = false, modelo = 'as350', capacidade = 20, tipo = 'helicopteros' },
	{ hash = -411150244, name = 'xregcm', price = 20000, banido = false, modelo = 'xregcm', capacidade = 15, tipo = 'outros' },
	{ hash = 1397742488, name = 'trail17pm', price = 50000, banido = false, modelo = 'trail17pm', capacidade = 15, tipo = 'outros' },
	{ hash = -454140225, name = 'trail20pm', price = 50000, banido = false, modelo = 'trail20pm', capacidade = 15, tipo = 'outros' },
	{ hash = 699459393, name = 'dusterrp1', price = 50000, banido = false, modelo = 'dusterrp1', capacidade = 15, tipo = 'outros' },
	{ hash = -371305464, name = 'trail19iope1', price = 50000, banido = false, modelo = 'trail19iope1', capacidade = 15, tipo = 'outros' },
	{ hash = 77333085, name = 's10sap', price = 50000, banido = false, modelo = 's10sap', capacidade = 15, tipo = 'outros' },
	{ hash = 506098406, name = 'amarokgcm', price = 50000, banido = false, modelo = 'amarokgcm', capacidade = 15, tipo = 'outros' },
	{ hash = 563724694, name = 'xt660cb2', price = 20000, banido = false, modelo = 'xt660cb2', capacidade = 15, tipo = 'outros' },
	{ hash = 274376638, name = 'xtpm1', price = 12000, banido = false, modelo = 'xtpm1', capacidade = 15, tipo = 'outros' },
	{ hash = 898224721, name = '19raptor', price = 50000, banido = false, modelo = '19raptor', capacidade = 75, tipo = 'carros' },
	{ hash = -854631421, name = '206', price = 35000, banido = false, modelo = '206', capacidade = 15, tipo = 'outros' },
	{ hash = -497997000, name = 'MK3', price = 35000, banido = false, modelo = 'MK3', capacidade = 15, tipo = 'outros' },
	{ hash = 47055373, name = 'rmodm3e36', price = 150000, banido = false, modelo = 'rmodm3e36', capacidade = 15, tipo = 'outros' },
	{ hash = 934775262, name = 'rmodm4gts', price = 35000, banido = false, modelo = 'rmodm4gts', capacidade = 75, tipo = 'carros' },
	{ hash = 1093697054, name = 'bmci', price = 35000, banido = false, modelo = 'bmci', capacidade = 15, tipo = 'outros' },
	{ hash = -635747987, name = 'italia458', price = 35000, banido = false, modelo = 'italia458', capacidade = 15, tipo = 'outros' },
	{ hash = 629443124, name = 'cox2013', price = 35000, banido = false, modelo = 'cox2013', capacidade = 15, tipo = 'outros' },
	{ hash = 2005386580, name = 'lykan', price = 35000, banido = false, modelo = 'lykan', capacidade = 75, tipo = 'carros' },
	{ hash = 1656094088, name = 'huracan', price = 35000, banido = false, modelo = 'huracan', capacidade = 15, tipo = 'outros' },
	{ hash = -749347224, name = '4881', price = 35000, banido = false, modelo = '4881', capacidade = 75, tipo = 'carros' },
	{ hash = -784906648, name = 'fct', price = 100000, banido = false, modelo = 'fct', capacidade = 15, tipo = 'outros' },
	{ hash = 1128102088, name = 'pistas', price = 35000, banido = false, modelo = 'pistas', capacidade = 15, tipo = 'outros' },
	{ hash = 1784428761, name = 'rmodjesko', price = 35000, banido = false, modelo = 'rmodjesko', capacidade = 75, tipo = 'carros' },
	{ hash = 110033087, name = 'f8t', price = 80000, banido = false, modelo = 'f8t', capacidade = 75, tipo = 'carros' },
	{ hash = 29976887, name = 'rmodf12tdf', price = 35000, banido = false, modelo = 'rmodf12tdf', capacidade = 75, tipo = 'carros' },
	{ hash = -435728526, name = 'teslapd', price = 35000, banido = false, modelo = 'teslapd', capacidade = 15, tipo = 'outros' },
	{ hash = -1820996020, name = 'sf90', price = 80000, banido = false, modelo = 'sf90', capacidade = 15, tipo = 'outros' },
	{ hash = 1829912412, name = 'cont88', price = 100000, banido = false, modelo = 'cont88', capacidade = 15, tipo = 'outros' },
	{ hash = 1454998807, name = 'rmodsian', price = 35000, banido = false, modelo = 'rmodsian', capacidade = 75, tipo = 'carros' },
	{ hash = -1796140063, name = 'lp610', price = 150000, banido = false, modelo = 'lp610', capacidade = 75, tipo = 'carros' },
	{ hash = 1913564934, name = 'laferrari15', price = 80000, banido = false, modelo = 'laferrari15', capacidade = 75, tipo = 'carros' },
	{ hash = 362375920, name = '600lt', price = 80000, banido = false, modelo = '600lt', capacidade = 75, tipo = 'carros' },
	{ hash = -2136030678, name = 'a45amg', price = 35000, banido = false, modelo = 'a45amg', capacidade = 15, tipo = 'outros' },
	{ hash = 104532066, name = 'g65amg', price = 50000, banido = false, modelo = 'g65amg', capacidade = 15, tipo = 'outros' },
	{ hash = 859560111, name = 's500w222', price = 100000, banido = false, modelo = 's500w222', capacidade = 15, tipo = 'outros' },
	{ hash = 589296660, name = 'trailsamu', price = 50000, banido = false, modelo = 'trailsamu', capacidade = 15, tipo = 'outros' },
	{ hash = 1587034546, name = 'tenere1200', price = 12000, banido = false, modelo = 'tenere1200', capacidade = 20, tipo = 'motos' },
	{ hash = -1753356114, name = 'sprinters', price = 50000, banido = false, modelo = 'sprinters', capacidade = 15, tipo = 'outros' },
	{ hash = -354991188, name = 'MTA', price = 50000, banido = false, modelo = 'MTA', capacidade = 15, tipo = 'outros' },
	{ hash = 2039134814, name = 'hiluxeb', price = 50000, banido = false, modelo = 'hiluxeb', capacidade = 15, tipo = 'outros' },
	{ hash = -1555105668, name = 'fox', price = 35000, banido = false, modelo = 'fox', capacidade = 15, tipo = 'outros' },
	{ hash = 991407206, name = 'r1250', price = 12000, banido = false, modelo = 'r1250', capacidade = 20, tipo = 'motos' },
	{ hash = 268992244, name = 'sato', price = 50000, banido = false, modelo = 'sato', capacidade = 75, tipo = 'carros' },
	{ hash = 2047166283, name = 'bmws', price = 20000, banido = false, modelo = 'bmws', capacidade = 20, tipo = 'motos' },
	{ hash = -1265899455, name = 'hcbr17', price = 20000, banido = false, modelo = 'hcbr17', capacidade = 20, tipo = 'motos' },
	{ hash = 1303167849, name = 'f4rr', price = 20000, banido = false, modelo = 'f4rr', capacidade = 20, tipo = 'motos' },
	{ hash = 341441189, name = 'fz07', price = 20000, banido = false, modelo = 'fz07', capacidade = 20, tipo = 'motos' },
	{ hash = -2049243343, name = 'rc', price = 20000, banido = false, modelo = 'rc', capacidade = 20, tipo = 'motos' },
	{ hash = 466040693, name = '370z', price = 150000, banido = false, modelo = '370z', capacidade = 15, tipo = 'outros' },
	{ hash = 1674460262, name = 'rmodgtr50', price = 100000, banido = false, modelo = 'rmodgtr50', capacidade = 15, tipo = 'outros' },
	{ hash = -1835937232, name = 'rmodskyline34', price = 100000, banido = false, modelo = 'rmodskyline34', capacidade = 15, tipo = 'outros' },
	{ hash = -1752116803, name = 'gtr', price = 100000, banido = false, modelo = 'gtr', capacidade = 15, tipo = 'outros' },
	{ hash = -1382835569, name = 'cayenne', price = 35000, banido = false, modelo = 'cayenne', capacidade = 15, tipo = 'outros' },
	{ hash = 2046572318, name = '911turbos', price = 35000, banido = false, modelo = '911turbos', capacidade = 15, tipo = 'outros' },
	{ hash = 194366558, name = 'panamera17turbo', price = 55000, banido = false, modelo = 'panamera17turbo', capacidade = 15, tipo = 'outros' },
	{ hash = 1866983496, name = 'por930', price = 150000, banido = false, modelo = 'por930', capacidade = 15, tipo = 'outros' },
	{ hash = 1694479740, name = 'pts21', price = 80000, banido = false, modelo = 'pts21', capacidade = 15, tipo = 'outros' },
	{ hash = -1296077726, name = 'pturismo', price = 25000, banido = false, modelo = 'pturismo', capacidade = 75, tipo = 'carros' },
	{ hash = -1475032069, name = '21camaro', price = 25000, banido = false, modelo = '21camaro', capacidade = 15, tipo = 'outros' },
	{ hash = -1421661055, name = 'corvette63GSF5', price = 150000, banido = false, modelo = 'corvette63GSF5', capacidade = 15, tipo = 'outros' },
	{ hash = 1324261434, name = 'rx7tunable', price = 150000, banido = false, modelo = 'rx7tunable', capacidade = 15, tipo = 'outros' },
	{ hash = -1549019518, name = 'ap2', price = 80000, banido = false, modelo = 'ap2', capacidade = 15, tipo = 'outros' },
	{ hash = 1069692054, name = 'beetle74', price = 10000, banido = false, modelo = 'beetle74', capacidade = 15, tipo = 'outros' },
	{ hash = -1987109409, name = '150', price = 12000, banido = false, modelo = '150', capacidade = 20, tipo = 'motos' },
	{ hash = 1088829493, name = 'cg160', price = 12000, banido = false, modelo = 'cg160', capacidade = 20, tipo = 'motos' },
	{ hash = 796090932, name = 'cg1602', price = 20000, banido = false, modelo = 'cg1602', capacidade = 20, tipo = 'motos' },
	{ hash = 1097072074, name = 'acuransx', price = 35000, banido = false, modelo = 'acuransx', capacidade = 75, tipo = 'carros' },
	{ hash = -1947578251, name = 'amarok17', price = 47000, banido = false, modelo = 'amarok17', capacidade = 75, tipo = 'carros' },
	{ hash = -1456558572, name = 'chevette', price = 25000, banido = false, modelo = 'chevette', capacidade = 15, tipo = 'outros' },
	{ hash = -493679946, name = 'civic', price = 35000, banido = false, modelo = 'civic', capacidade = 15, tipo = 'outros' },
	{ hash = -1721911377, name = 'clio', price = 75000, banido = false, modelo = 'clio', capacidade = 15, tipo = 'outros' },
	{ hash = -1702326766, name = 'corolla', price = 35000, banido = false, modelo = 'corolla', capacidade = 75, tipo = 'carros' },
	{ hash = -947724703, name = 'ds4', price = 35000, banido = false, modelo = 'ds4', capacidade = 15, tipo = 'outros' },
	{ hash = -54736684, name = 'ds7', price = 50000, banido = false, modelo = 'ds7', capacidade = 15, tipo = 'outros' },
	{ hash = 360789367, name = 'evo8', price = 80000, banido = false, modelo = 'evo8', capacidade = 15, tipo = 'outros' },
	{ hash = -228528329, name = 'evo9', price = 35000, banido = false, modelo = 'evo9', capacidade = 15, tipo = 'outros' },
	{ hash = -863689840, name = 'evoq', price = 50000, banido = false, modelo = 'evoq', capacidade = 15, tipo = 'outros' },
	{ hash = 293768711, name = 'fluence', price = 25000, banido = false, modelo = 'fluence', capacidade = 15, tipo = 'outros' },
	{ hash = -403984030, name = 'golf1', price = 35000, banido = false, modelo = 'golf1', capacidade = 15, tipo = 'outros' },
	{ hash = -1851390760, name = 'golf5', price = 35000, banido = false, modelo = 'golf5', capacidade = 15, tipo = 'outros' },
	{ hash = -1125622948, name = 'golf6', price = 35000, banido = false, modelo = 'golf6', capacidade = 15, tipo = 'outros' },
	{ hash = -2019386221, name = 'golfgti', price = 35000, banido = false, modelo = 'golfgti', capacidade = 15, tipo = 'outros' },
	{ hash = 737736522, name = 'golwire', price = 350000, banido = false, modelo = 'golwire', capacidade = 75, tipo = 'carros' },
	{ hash = 1662984903, name = 'honda', price = 35000, banido = false, modelo = 'honda', capacidade = 15, tipo = 'outros' },
	{ hash = 2083608313, name = 'ja_demonboi', price = 80000, banido = false, modelo = 'ja_demonboi', capacidade = 75, tipo = 'carros' },
	{ hash = -1691715558, name = 'jeep2012', price = 50000, banido = false, modelo = 'jeep2012', capacidade = 15, tipo = 'outros' },
	{ hash = -932637740, name = 'pcs18', price = 50000, banido = false, modelo = 'pcs18', capacidade = 15, tipo = 'outros' },
	{ hash = 210550081, name = 'polo2018', price = 25000, banido = false, modelo = 'polo2018', capacidade = 15, tipo = 'outros' },
	{ hash = -1246383966, name = 'jeepreneg', price = 50000, banido = false, modelo = 'jeepreneg', capacidade = 15, tipo = 'outros' },
	{ hash = -361155694, name = 'punto', price = 35000, banido = false, modelo = 'punto', capacidade = 15, tipo = 'outros' },
	{ hash = -1737994370, name = 'rencaptur', price = 50000, banido = false, modelo = 'rencaptur', capacidade = 15, tipo = 'outros' },
	{ hash = 1244288366, name = 'rr12', price = 50000, banido = false, modelo = 'rr12', capacidade = 15, tipo = 'outros' },
	{ hash = -404110988, name = 'santafe', price = 50000, banido = false, modelo = 'santafe', capacidade = 15, tipo = 'outros' },
	{ hash = -1586763167, name = 'sont18', price = 35000, banido = false, modelo = 'sont18', capacidade = 15, tipo = 'outros' },
	{ hash = -2120897359, name = 'supra2', price = 35000, banido = false, modelo = 'supra2', capacidade = 15, tipo = 'outros' },
	{ hash = 892803065, name = 'tiguan', price = 35000, banido = false, modelo = 'tiguan', capacidade = 15, tipo = 'outros' },
	{ hash = 1876694905, name = 'veloster', price = 150000, banido = false, modelo = 'veloster', capacidade = 15, tipo = 'outros' },
	{ hash = 1716918782, name = 'x5e53', price = 50000, banido = false, modelo = 'x5e53', capacidade = 15, tipo = 'outros' },
	{ hash = -2112200549, name = 'ysbrimpS11', price = 150000, banido = false, modelo = 'ysbrimpS11', capacidade = 75, tipo = 'carros' },
	{ hash = 421716276, name = 'yacht4', price = 40000, banido = false, modelo = 'yacht4', capacidade = 50, tipo = 'barcos' },
	{ hash = -1868899153, name = 'africaprf', price = 20000, banido = false, modelo = 'africaprf', capacidade = 15, tipo = 'outros' },
	{ hash = -1030258799, name = 'ec130PRF', price = 52000, banido = false, modelo = 'ec130PRF', capacidade = 20, tipo = 'helicopteros' },
	{ hash = -1030779560, name = 'l200prf', price = 50000, banido = false, modelo = 'l200prf', capacidade = 15, tipo = 'outros' },
	{ hash = -405833116, name = 'trailpm1', price = 50000, banido = false, modelo = 'trailpm1', capacidade = 15, tipo = 'outros' },
	{ hash = -1194139631, name = 'avalanches', price = 50000, banido = false, modelo = 'avalanches', capacidade = 15, tipo = 'outros' },
	{ hash = -823509173, name = 'barracks', price = 50000, banido = false, modelo = 'barracks', capacidade = 15, tipo = 'outros' },
	{ hash = GetHashKey('cgentrega'),  name = 'cgentrega', price = 50000, banido = false, modelo = 'cgentrega', capacidade = 15, tipo = 'outros' },
	{ hash = GetHashKey('taxi2'),  name = 'taxi2', price = 50000, banido = false, modelo = 'taxi2', capacidade = 15, tipo = 'outros' },
}


----------------------------------------------
----------------------------------------------


-- RETORNA A LISTA DE VEÍCULOS
config.getVehList = function()
	return config.vehList
end

-- RETORNA AS INFORMAÇÕES CONTIDAS NA LISTA DE UM VEÍCULO ESPECÍFICO
config.getVehicleInfo = function(vehicle)
	for i in ipairs(config.vehList) do
		if vehicle == config.vehList[i].hash or vehicle == config.vehList[i].name then
            return config.vehList[i]
        end
    end
    return false
end

-- RETORNA O MODELO DE UM VEÍCULO ESPECÍFICO (NOME BONITINHO)
config.getVehicleModel = function(vehicle)
	local vehInfo = config.getVehicleInfo(vehicle)
	if vehInfo then
		return vehInfo.modelo or vehicle
	end
	return vehicle
end

-- RETORNA A CAPACIDADE DO PORTA-MALAS DE UM VEÍCULO ESPECÍFICO
config.getVehicleTrunk = function(vehicle)
	local vehInfo = config.getVehicleInfo(vehicle)
	if vehInfo then
		return vehInfo.capacidade or 0
	end
	return 0
end

-- RETORNA O PREÇO DE UM VEÍCULO ESPECÍFICO
config.getVehiclePrice = function(vehicle)
	local vehInfo = config.getVehicleInfo(vehicle)
	if vehInfo then
		return vehInfo.price or 0
	end
	return 0
end

-- RETORNA O TIPO DE UM VEÍCULO ESPECÍFICO
config.getVehicleType = function(vehicle)
	local vehInfo = config.getVehicleInfo(vehicle)
	if vehInfo then
		return vehInfo.tipo or 0
	end
	return "none"
end

-- RETORNA O STATUS DE BANIDO DE UM VEÍCULO ESPECÍFICO
config.isVehicleBanned = function(vehicle)
	local vehInfo = config.getVehicleInfo(vehicle)
	if vehInfo then
		return vehInfo.banido
	end
	return false
end

function isPrivatedType(tipo)
    local tipos = { "aviao", "helicoptero", "barco", "caminhão" }
    for _, type in ipairs(tipos) do
        if type == tipo then 
			return true 
		end
    end
    return false
end


config.checkVehicleGarage = function(source,user_id,vehicle, garage)
    if not garage then return true end
    local vehInfo = config.getVehicleInfo(vehicle)
    if vehInfo then
        local tipo = vehInfo.tipo
        if (garage.vehicleType and tipo == garage.vehicleType) or (not garage.vehicleType and not isPrivatedType(tipo)) then
            return true
        end
    end
    return false
end


-----------------------------------------------------------------
------------- GARAGENS PÚBLICAS E DE SERVIÇO --------------------
-----------------------------------------------------------------
config.garages = {

	[1] = { type = "service", coords = vec3(437.25, -619.92, 28.71), perm = nil,
	vehiclePositions = {
		[1] = { vec3(432.72, -616.48, 27.96), h = 86.79},
		[2] = { vec3(432.88, -613.45, 27.96), h = 86.79},
		[3] = { vec3(432.54, -610.99, 27.96), h = 86.79},
	},
	vehicles = {
		{ vehicle = "weevil", modelo = "Fusquinha Importado" },
		}
	},
	
	
	[2] = { type = "service", coords = vec3(463.83, -982.03, 43.7),perm = "policia.permissao",
	vehiclePositions = {
		[1] = { vec3(449.16, -981.29, 43.7), h = 90.85},
	},
	vehicles = {
		{ vehicle = "cdaheli", modelo = "Policia Heli" },
		}
	},
	[3] = { type = "service", coords = vec3(461.31, -987.65, 25.7),perm = "policia.permissao",
	vehiclePositions = {
		[1] = { vec3(446.2, -991.51, 25.7), h = 271.82},
	},
	vehicles = {
		{ vehicle = "cdacivic", modelo = "Cívic TypeR" },
		{ vehicle = "cdaporsche", modelo = "Porshe Cayenne" },
		{ vehicle = "cda500x", modelo = "CB 500X" },
		{ vehicle = "cdapassat", modelo = "VW Passat" },
		{ vehicle = "cdaranger", modelo = "Ranger" },
		{ vehicle = "cdac7", modelo = "Corvette C7" },
		}
	},
	[4] = { type = "service", coords = vec3(383.43, -1616.42, 29.3),perm = "policia.permissao",
	vehiclePositions = {
		[1] = { vec3(387.31, -1615.67, 28.79), h = 232.79},
		[2] = { vec3(392.99, -1612.37, 28.79), h = 232.79},
	},
	vehicles = {
		{ vehicle = "caveiraopm", modelo = "Veiculo Policial" },
		{ vehicle = "frontierbope2", modelo = "Veiculo Policial" },
		{ vehicle = "hiluxbope", modelo = "Veiculo Policial" },
	
		}
	},
	[5] = { type = "service", coords = vec3(842.41, -1330.67, 26.13),perm = "policia.permissao",
	vehiclePositions = {
		[1] = { vec3(845.65, -1334.47, 25.61), h = 243.79},
		[2] = { vec3(845.35, -1341.04, 25.57), h = 243.79},
	},
	vehicles = {
		{ vehicle = "pajerodesc", modelo = "Veiculo Policial" },
		{ vehicle = "traildesc", modelo = "Veiculo Policial" },
		{ vehicle = "hiluxbope", modelo = "Veiculo Policial" },
	
		}
	},
	[6] = { type = "service", coords = vec3(-457.61, 5986.28, 31.31),perm = "policia.permissao",
	vehiclePositions = {
		[1] = { vec3(-474.72, 5988.29, 31.49), h = 243.79},
		
	},
	vehicles = {
		{ vehicle = "ecPRF", modelo = "Heli Policial" },
		
	
		}
	},
	
	
	[7] = { type = "service", coords = vec3(-482.65, 6020.61, 31.35), perm = "policia.permissao",
	vehiclePositions = {
		[1] = { vec3(-429.26, -353.39, 24.23), h = 110.10},
	},
	vehicles = {
		{ vehicle = "cdasprinter", modelo = "Sprinter" },
		}
	},


	[8] = { type = "service", coords = vec3(-838.03, -1235.28, 6.94), perm = "ems.permissao", 
	vehiclePositions = {
		[1] = { vec3(-838.17, -1231.4, 6.94), h = 51.36},
	},
	vehicles = {
		{ vehicle = "cdasprinter", modelo = "Sprinter" },
		}
	},
	[9] = { type = "service", coords = vec3(-782.39, -1196.76, 50.60), perm = "ems.permissao", marker = "helicóptero",
	vehiclePositions = {
		[1] = { vec3(-791.06, -1191.2, 53.41), h = 23.49},
	},
	vehicles = {
		{ vehicle = "cdamedicheli", modelo = "Atendimento rápido" },
		}
	},
	[10] = { type = "service", coords = vec3(854.12, -2114.11, 30.59), perm = "mecanico.permissao",
	vehiclePositions = {
		[1] = { vec3(851.43, -2123.77, 30.55), h = 265.23},
	},
	vehicles = {
		{ vehicle = "energy450", modelo = "Energy 450" },
		{ vehicle = "energyr1200", modelo = "Energy R1200" },
		{ vehicle = "energyraptor", modelo = "Energy Raptor" },
		{ vehicle = "energyrepair", modelo = "Energy Reparos" },
		}
	},
	[11] = { type = "service", coords = vec3(55.97, 111.44, 79.2), perm = nil,
	vehiclePositions = {
		[1] = { vec3(63.52, 116.97, 79.1), h = 82.50},
	},
	vehicles = {
		{ vehicle = "cdacaddy", modelo = "Correios" },
		}
	},
	[12] = { type = "service", coords = vec3(2569.29,2720.32,42.96), perm = nil, marker = "truck",
	vehiclePositions = {
		[1] = { vec3(2582.05,2728.45,42.71), h = 217.41},
	},
	vehicles = {
		{ vehicle = "tiptruck", modelo = "Minerador" },
		}
	},
	[13] = { type = "service", coords = vec3(412.7, -633.3, 28.51), perm = nil,
	vehiclePositions = {
		[1] = { vec3(408.8, -633.23, 28.51), h = 95.02},
	},
	vehicles = {
		{ vehicle = "panto", modelo = "Panto" },
		}
	},
	[14] = { type = "service", coords = vec3(20.36, -1604.74, 29.4), perm = nil, marker = "moto",
	vehiclePositions = {
		[1] = { vec3(21.37, -1607.03, 29.29), h = 136.79},
	},
	vehicles = {
		{ vehicle = "cdaentregas", modelo = "CG Motoboy" },
		}
	},
	[15] = { type = "service", coords = vec3(1200.51, -1277.36, 35.58), perm = nil,
	vehiclePositions = {
		[1] = { vec3(1200.89, -1270.09, 35.23), h = 253.88},
	},
	vehicles = {
		{ vehicle = "rebel", modelo = "Rebel" },
		}
	},
	[16] = { type = "service", coords = vec3(1704.69, 4723.22, 42.26), perm = nil,
	vehiclePositions = {
		[1] = { vec3(1700.74, 4722.11, 42.22), h = 198.17},
	},
	vehicles = {
		{ vehicle = "youga2", modelo = "Youga2" },
		}
	},

	[17] = { type = "service", coords = vec3(748.61, 6454.36, 31.97), perm = nil, marker = "truck",
	vehiclePositions = {
		[1] = { vec3(743.43, 6455.35, 31.62), h = 85.79},
	},
	vehicles = {
		{ vehicle = "tractor2", modelo = "Trator" },
		}
	},
	[18] = { type = "service", coords = vec3(819.81, -824.39, 26.29), perm = "mecanico.permissao",
	vehiclePositions = {
		[1] = { vec3(819.13, -827.97, 25.73), h = 357.23},
	},
	vehicles = {
		{ vehicle = "energy450", modelo = "Energy 450" },
		{ vehicle = "energyr1200", modelo = "Energy R1200" },
		{ vehicle = "energyraptor", modelo = "Energy Raptor" },
		{ vehicle = "energyrepair", modelo = "Energy Reparos" },
		}
	},
	[19] = { type = "service", coords = vec3(-34.98, -1020.06, 28.98), perm = "mecanico.permissao",
	vehiclePositions = {
		[1] = { vec3(-30.15, -1025.91, 28.17), h = 340.23},
	},
	vehicles = {
		{ vehicle = "energy450", modelo = "Energy 450" },
		{ vehicle = "energyr1200", modelo = "Energy R1200" },
		{ vehicle = "energyraptor", modelo = "Energy Raptor" },
		{ vehicle = "energyrepair", modelo = "Energy Reparos" },
		}
	},
	[20] = { type = "service", coords = vec3(-348.07, -148.42, 39.02), perm = "mecanico.permissao",
	vehiclePositions = {
		[1] = { vec3(-346.08, -150.72, 38.33), h = 289.23},
	},
	vehicles = {
		{ vehicle = "energy450", modelo = "Energy 450" },
		{ vehicle = "energyr1200", modelo = "Energy R1200" },
		{ vehicle = "energyraptor", modelo = "Energy Raptor" },
		{ vehicle = "energyrepair", modelo = "Energy Reparos" },
		}
	},
	[21] = { type = "service", coords = vec3(-1431.48, -444.68, 35.7), perm = "mecanico.permissao",
	vehiclePositions = {
		[1] = { vec3(-1429.67, -440.53, 35.22), h = 299.23},
	},
	vehicles = {
		{ vehicle = "energy450", modelo = "Energy 450" },
		{ vehicle = "energyr1200", modelo = "Energy R1200" },
		{ vehicle = "energyraptor", modelo = "Energy Raptor" },
		{ vehicle = "energyrepair", modelo = "Energy Reparos" },
		}
	},
	[22] = { type = "service", coords = vec3(160.42, -3012.47, 5.99), perm = "mecanico.permissao",
	vehiclePositions = {
		[1] = { vec3(165.46, -3009.43, 5.9), h = 270.23},
	},
	vehicles = {
		{ vehicle = "energy450", modelo = "Energy 450" },
		{ vehicle = "energyr1200", modelo = "Energy R1200" },
		{ vehicle = "energyraptor", modelo = "Energy Raptor" },
		{ vehicle = "energyrepair", modelo = "Energy Reparos" },
		}
	},
	[23] = { type = "public", coords = vec3(823.99, 1094.72, 304.09), perm = "cdd.permissao",
	vehiclePositions = {
		[1] = { vec3(823.12, 1089.45, 302.01), h = 255.98},
		},
	},
	[24] = { type = "public", coords = vec3(-46.46, -1108.93, 26.68), perm = nil,
	vehiclePositions = {
		[1] = { vec3(-44.98, -1115.39, 26.18), h = 335.70},
		},
	},
	[25] = { type = "public", coords = vec3(55.46,-876.29,30.66), name = "Garagem", 
		vehiclePositions = {
			[1] = { vec3(50.92,-872.96,30.44), h = 339.16},
			[2] = { vec3(47.28,-872.43,30.44), h = 339.16},
			[3] = { vec3(44.22,-871.12,30.44), h = 339.16}
		} 
	},

	[26] = { type = "public", coords = vec3(214.01,-805.44,31.01), 
		vehiclePositions = {
			[1] = { vec3(221.17,-806.73, 30.05), h = 68.82 },
			[2] = { vec3(215.25,-801.47, 30.82), h = 247.14},
			[3] = { vec3(223.01,-801.70, 30.03), h = 67.95 }
		} 
	},

	[27] = { type = "public", coords = vec3(-348.93,-874.38,31.31), perm = "vip.permissao",
		vehiclePositions = {
			[1] = { vec3(-343.16,-874.99,31.07), h = 167.73 },
			[2] = { vec3(-339.70,-875.44,31.07), h = 159.65 },
			[3] = { vec3(-336.19,-876.35,31.07), h = 170.92 }
		} 
	},

	[28] = { type = "public", coords = vec3(-73.47,-2004.55,18.27), 
		vehiclePositions = {
			[1] = { vec3(-81.71,-2006.66,18.01), h = 347.38},
			[2] = { vec3(-89.22,-2005.61,18.01), h = 344.18},
			[3] = { vec3(-85.47,-2005.38,18.01), h = 354.17}
		} 
	},
	
	[29] = { type = "public", coords = vec3(596.67, 91.22, 93.13), 
		vehiclePositions = { 
			[1] = { vec3(598.35, 98.5, 92.91), h = 250.28},
			[2] = { vec3(599.25, 102.31, 92.91), h = 250.28},
			[3] = { vec3(608.63, 103.99, 92.81), h = 71.01}
		} 
	},

	[30] = { type = "public", coords = vec3(362.06, 298.07, 103.89), 
		vehiclePositions = { 
			[1] = { vec3(361.09, 293.61, 103.50), h = 244.01},
			[2] = { vec3(359.86, 289.91, 103.50), h = 254.50},
			[3] = { vec3(358.01, 286.39, 103.50), h = 242.90}
		} 
	},

	[31] = { type = "public", coords = vec3(275.33, -345.41, 45.18), 
		vehiclePositions = { 
			[1] = { vec3(283.89, -342.66, 44.92), h = 248.74},
			[2] = { vec3(284.96, -339.21, 44.92), h = 244.73},
			[3] = { vec3(286.07, -336.02, 44.92), h = 245.42}
		} 
	},

	[32] = { type = "public", coords = vec3(-1184.42, -1509.6, 4.65), 
		vehiclePositions = { 
			[1] = { vec3(-1183.07, -1495.60, 4.38), h = 121.19},
			[2] = { vec3(-1185.00, -1492.94, 4.38), h = 123.01},
			[3] = { vec3(-1186.66, -1490.42, 4.38), h = 119.76}
		} 
	},

	[33] = { type = "public", coords = vec3(-2030.53, -465.49, 11.61), 
		vehiclePositions = { 
			[1] = { vec3(-2024.31, -471.84, 11.41), h = 146.42},
			[2] = { vec3(-2021.67, -473.56, 11.41), h = 142.45},
			[3] = { vec3(-2019.22, -475.65, 11.41), h = 139.62}
		} 
	},

	[34] = { type = "public", coords = vec3(-340.72, 266.76, 85.68), 
		vehiclePositions = { 
			[1] = { vec3(-340.01, 279.13, 85.55), h = 275.98},
			[2] = { vec3(-339.82, 283.18, 85.48), h = 275.00},
			[3] = { vec3(-340.40, 286.75, 85.45), h = 274.15}
		} 
	},

	[35] = { type = "public", coords = vec3(100.62, -1073.33, 29.38), 
		vehiclePositions = { 
			[1] = { vec3(106.10, -1063.55, 29.19), h = 250.85},
			[2] = { vec3(107.74, -1059.97, 29.19), h = 246.28},
			[3] = { vec3(108.91, -1056.32, 29.19), h = 241.29}
		} 
	},

	[36] = { type = "public", coords = vec3(65.62, -615.85, 31.91), 
		vehiclePositions = { 
			[1] = { vec3(65.64, -611.45, 31.63), h = 67.54},
			[2] = { vec3(67.15, -608.01, 31.63), h = 65.91},
			[3] = { vec3(68.06, -604.21, 31.63), h = 70.56}
		} 
	},

    [37] = { type = "public", coords = vec3(-796.07, -2023.03, 9.17), 
		vehiclePositions = { 
			[1] = { vec3(-776.34, -2024.49, 8.88), h = 216.46},
			[2] = { vec3(-772.94, -2023.11, 8.88), h = 219.15},
			[3] = { vec3(-770.45, -2020.34, 8.88), h = 225.49}
		} 
	},

	[38] = { type = "public", coords = vec3(-609.53, -2238.54, 6.26), 
		vehiclePositions = { 
			[1] = { vec3(-604.73, -2219.10, 5.99), h = 187.33},
			[2] = { vec3(-609.38, -2215.60, 6.00), h = 178.17},
			[3] = { vec3(-614.30, -2211.29, 6.00), h = 183.82}
		} 
	},

	[39] = { type = "public", coords = vec3(527.81, -146.38, 58.38), 
		vehiclePositions = { 
			[1] = { vec3(536.72, -136.31, 59.60), h = 177.99},
			[2] = { vec3(540.95, -136.16, 59.46), h = 183.64},
			[3] = { vec3(544.70, -135.98, 59.37), h = 177.09}
		} 
	},

    [40] = { type = "public", coords = vec3(391.87, -758.94, 29.3), 
		vehiclePositions = { 
			[1] = { vec3(391.43, -767.59, 29.29), h = 359.89},
			[2] = { vec3(387.65, -767.31, 29.29), h = 356.24},
			[3] = { vec3(384.07, -767.27, 29.29), h = 356.24}
		} 
	},

	[41] = { type = "public", coords = vec3(985.8, -208.48, 70.92), 
		vehiclePositions = { 
			[1] = { vec3(982.43, -212.05, 70.78), h = 229.19},
			[2] = { vec3(978.35, -217.14, 70.47), h = 230.55},
			[3] = { vec3(975.59, -222.43, 70.24), h = 234.92}
		} 
	},

	[42] = { type = "public", coords = vec3(817.34, -2146.96, 29.34), 
		vehiclePositions = { 
			[1] = { vec3(822.51, -2142.73, 28.86), h = 359.06},
			[2] = { vec3(820.94, -2117.88, 29.35), h = 174.48},
			[3] = { vec3(812.93, -2117.12, 29.35), h = 175.23}
		} 
	},

	[43] = { type = "public", coords = vec3(42.67, -1599.22, 29.6), 
		vehiclePositions = { 
			[1] = { vec3(38.99, -1594.64, 29.46), h = 43.72},
			[2] = { vec3(41.06, -1592.35, 29.46), h = 47.95},
			[3] = { vec3(42.46, -1589.35, 29.46), h = 50.04}
		} 
	},

	[44] = { type = "public", coords = vec3(-1583.97, -887.13, 9.87), 
		vehiclePositions = { 
			[1] = { vec3(-1591.17, -896.05, 9.56), h = 320.17},
			[2] = { vec3(-1588.91, -898.02, 9.60), h = 320.65},
			[3] = { vec3(-1586.43, -899.79, 9.62), h = 311.61}
		} 
	},

	[45] = { type = "public", coords = vec3(-723.09, -71.41, 37.55), 
		vehiclePositions = { 
			[1] = { vec3(-718.33, -74.92, 37.56), h = 243.49},
			[2] = { vec3(-721.83, -76.57, 37.55), h = 238.01},
			[3] = { vec3(-725.71, -78.64, 37.56), h = 249.91}
		} 
	},

	[46] = { type = "public", coords = vec3(1183.63, 2702.0, 38.17), 
		vehiclePositions = { 
			[1] = { vec3(1186.59, 2696.77, 37.96), h = 185.48},
			[2] = { vec3(1190.26, 2696.29, 37.95), h = 178.63},
			[3] = { vec3(1193.57, 2695.67, 37.93), h = 184.93}
		} 
	},

	[47] = { type = "public", coords = vec3(902.39, 3657.62, 32.69), 
		vehiclePositions = { 
			[1] = { vec3(900.33, 3653.32, 32.76), h = 90.00},
			[2] = { vec3(900.09, 3649.69, 32.76), h = 91.48},
			[3] = { vec3(899.83, 3646.14, 32.76), h = 91.48}
		} 
	},

	[48] = { type = "public", coords = vec3(1553.6, 3797.03, 34.26), 
		vehiclePositions = { 
			[1] = { vec3(1557.09, 3788.28, 34.10), h = 208.36},
			[2] = { vec3(1549.74, 3784.01, 34.07), h = 200.04},
			[3] = { vec3(1546.11, 3782.46, 34.06), h = 195.85}
		} 
	},

	[49] = { type = "public", coords = vec3(2736.88, 3438.09, 56.41), 
		vehiclePositions = { 
			[1] = { vec3(2730.22, 3435.86, 56.37), h = 152.27},
			[2] = { vec3(2726.71, 3437.69, 56.22), h = 149.39},
			[3] = { vec3(2722.98, 3439.21, 56.08), h = 150.92}
		} 
	},

	[50] = { type = "public", coords = vec3(1695.06, 4783.03, 42.0), 
		vehiclePositions = { 
			[1] = { vec3(1691.73, 4778.46, 41.92), h = 90.29},
			[2] = { vec3(1691.61, 4774.40, 41.92), h = 89.73},
			[3] = { vec3(1691.64, 4770.41, 41.92), h = 87.60}
		} 
	},

	[51] = { type = "public", coords = vec3(-274.63, 6070.14, 31.47), 
		vehiclePositions = { 
			[1] = { vec3(-270.30, 6070.37, 31.46), h = 123.27},
			[2] = { vec3(-267.63, 6067.51, 31.46), h = 123.05},
			[3] = { vec3(-265.07, 6064.78, 31.46), h = 117.52}
		} 
	},

	[52] = { type = "public", coords = vec3(1712.83, 6423.73, 32.75), 
		vehiclePositions = { 
			[1] = { vec3(1720.29, 6422.03, 33.56), h = 67.05},
			[2] = { vec3(1718.98, 6419.67, 33.56), h = 66.49},
			[3] = { vec3(1717.71, 6416.40, 33.56), h = 69.28}
		} 
	},

	[53] = { type = "public", coords = vec3(-1158.97, -739.99, 19.89), 
		vehiclePositions = { 
			[1] = { vec3(-1145.54, -745.42, 19.67), h = 104.13},
			[2] = { vec3(-1143.08, -748.27, 19.53), h = 115.84},
			[3] = { vec3(-1140.12, -751.22, 19.39), h = 112.41}
		} 
	},

	[54] = { type = "public", coords = vec3(-2070.34, -311.27, 13.3), 
		vehiclePositions = { 
			[1] = { vec3(-2074.91, -301.55, 13.16), h = 184.43},
			[2] = { vec3(-2071.49, -301.81, 13.16), h = 173.64},
			[3] = { vec3(-2068.05, -301.99, 13.16), h = 172.37}
		} 
	},

	[55] = { type = "service", coords = vec3(-1034.3, -2726.15, 13.76), marker = "bicicleta", 
		vehiclePositions = {
			[1] = { vec3(-1032.10, -2723.58, 13.69), h = 336.84},
			[2] = { vec3(-1018.97, -2731.78, 13.67), h = 240.36},
			[3] = { vec3(-1045.51, -2716.05, 13.68), h = 65.09}
		},
		vehicles = {
			{ vehicle = "scorcher", modelo = "Scorcher" },
			{ vehicle = "tribike", modelo = "Tribike" },
			{ vehicle = "tribike2", modelo = "Tribike 2" },
			{ vehicle = "tribike3", modelo = "Tribike 3" },
			{ vehicle = "fixter", modelo = "Fixter" },
			{ vehicle = "cruiser", modelo = "Cruiser" },
			{ vehicle = "bmx", modelo = "Bmx" },
		} 
	},

	[56] = { type = "service", coords = vec3(-348.57, -1572.03, 25.23), marker = "truck",
		vehiclePositions = {
			[1] = { vec3(-334.80, -1564.41, 25.23), h = 56.90},
			[2] = { vec3(-341.72, -1558.79, 25.23), h = 178.68},
			[3] = { vec3(-344.62, -1575.51, 25.23), h = 10.73}
		},
		vehicles = {
			{ vehicle = "trash", modelo = "Trash" },
			{ vehicle = "trash2", modelo = "Trash 2" }
		} 
	},

	[57] = { type = "service", coords = vec3(898.88, -177.08, 73.82),
		vehiclePositions = {
			[1] = { vec3(908.77, -183.16, 74.21), h = 55.38},
			[2] = { vec3(907.04, -186.39, 74.01), h = 56.39},
			[3] = { vec3(905.35, -189.10, 73.79), h = 58.51}
		},
		vehicles = {
			{ vehicle = "taxi2", modelo = "Taxi" },
		} 
	},

	[58] = { type = "service", coords = vec3(454.19, -600.59, 28.58), marker = "truck",
		vehiclePositions = {
			[1] = { vec3(462.37, -605.27, 28.50), h = 213.13},
			[2] = { vec3(461.21, -611.50, 28.50), h = 215.52},
			[3] = { vec3(460.64, -619.10, 28.50), h = 211.85}
		},
		vehicles = {
			{ vehicle = "coach", modelo = "Coach" },
			{ vehicle = "airbus", modelo = "Airbus" }
		} 
	},

	[59] = { type = "service", coords = vec3(-1556.03, -1154.62, 3.92), marker = "barco",
		vehiclePositions = {
			[1] = { vec3(-1624.41, -1191.40, 0.82), h = 89.05},
			[2] = { vec3(-1641.21, -1178.09, 0.59), h = 151.70},
			[3] = { vec3(-1651.34, -1164.61, 0.34), h = 123.69}
		},
		vehicles = {
			{ vehicle = "dinghy", modelo = "Dinghy" },
			{ vehicle = "jetmax", modelo = "jetmax" },
			{ vehicle = "marquis", modelo = "marquis" },
			{ vehicle = "seashark3", modelo = "seashark3" },
			{ vehicle = "speeder", modelo = "speeder" },
			{ vehicle = "speeder2", modelo = "speeder2" },
			{ vehicle = "squalo", modelo = "squalo" },
			{ vehicle = "suntrap", modelo = "suntrap" },
			{ vehicle = "toro", modelo = "toro" },
			{ vehicle = "toro2", modelo = "toro2" },
			{ vehicle = "tropic", modelo = "tropic" },
			{ vehicle = "tropic2", modelo = "tropic2" }
		} 
	},
	[60] = { type = "public", coords = vec3(855.92, -2107.57, 30.55), 
		vehiclePositions = { 
			[1] = { vec3(849.4, -2102.0, 30.55), h = 267.63}
		} 
	},

	[61] = { type = "public", coords = vec3(4028.44, 4802.06, 510.87), 
		vehiclePositions = { 
			[1] = { vec3(1651.92, 2500.76, 45.56), h = 267.63}
		} 
	},
	
	[62] = { type = "service", coords = vec3(715.06, 4107.59, 35.78), marker = "barco",
		vehiclePositions = {
			[1] = { vec3(4030.02, 4796.88, 512.12), h = 282.26}
		},
		vehicles = {
			{ vehicle = "dinghy", modelo = "Dinghy" },
			{ vehicle = "jetmax", modelo = "jetmax" },
			{ vehicle = "marquis", modelo = "marquis" },
			{ vehicle = "seashark3", modelo = "seashark3" },
			{ vehicle = "speeder", modelo = "speeder" },
			{ vehicle = "speeder2", modelo = "speeder2" },
			{ vehicle = "squalo", modelo = "squalo" },
			{ vehicle = "suntrap", modelo = "suntrap" },
			{ vehicle = "toro", modelo = "toro" },
			{ vehicle = "toro2", modelo = "toro2" },
			{ vehicle = "tropic", modelo = "tropic" },
			{ vehicle = "tropic2", modelo = "tropic2" }
		} 
	},
	[63] = { type = "service", coords = vec3(3110.01, -4806.67, 15.27), marker = "aviao",
		vehiclePositions = {
			[1] = { vec3(3099.47, -4809.94, 15.27), h = 34.21}
		},
		vehicles = {
			{ vehicle = "hydra", modelo = "Hydra" },
			{ vehicle = "buzzard", modelo = "Buzzard" },
			{ vehicle = "cargobob", modelo = "Cargobob" },
			{ vehicle = "akula", modelo = "Akula" },
			{ vehicle = "bombushka", modelo = "Bombushka" },
			{ vehicle = "dodo", modelo = "Dodo" },
			{ vehicle = "nokota", modelo = "Nokota" },
			{ vehicle = "apc", modelo = "APC" },
		} 
	},

	[64] = { type = "public", coords = vec3(3070.47, -4673.82, 15.27), 
		vehiclePositions = { 
			[1] = { vec3(3070.58, -4669.0, 15.27), h = 267.63}
		} 
	},
}


-----------------------------------------------------------------
------------------ GARAGENS DAS CASAS ---------------------------
-----------------------------------------------------------------

config.homeGarages = {}

-----------------------------------------------------------------
-----------------------------------------------------------------
-----------------------------------------------------------------


 -- funcao de cobrar a taxa de detido / desmanche / ipva

config.checkTax = function(source,user_id,vehicle,type, garage, home)
    local vehicleInfo = vRP.query("vRP/getVehicle", {user_id = user_id, vehicle = vehicle})
    if vehicleInfo and #vehicleInfo > 0 then
        local price = getVehiclePrice(vehicle)
        if vehicleInfo[1].detido == 0 and parseInt(tonumber(vehicleInfo[1].ipva or 0) + 24 * 15 * 60 * 60) > parseInt(os.time()) and not config.getVehicleTax then
            return true
        end
        if vehicleInfo[1].detido == 1 then
            if parseInt(vehicleInfo[1].time) == 0 then
                price = parseInt(price * (config.seguradora / 100))
            else
                price = parseInt(price * (config.detido / 100))
            end
        elseif type and type == "exclusive" then
            vRP.execute("vRP/setIpva", { user_id = user_id, vehicle = vehicle, ipva = parseInt(os.time())})
            return true
        elseif parseInt(tonumber(vehicleInfo[1].ipva) + 24 * 15 * 60 * 60) <= parseInt(os.time()) then
            price = parseInt(price * ((config.ipva or 1) / 100))
        elseif config.getVehicleTax then
            price = config.getVehicleTax(user_id, vehicle, price, home)
        end
        if config.use_tryFullPayment then
            if vRP.tryGetInventoryItem(user_id, "dinheiro", price) then
                vRP.execute("vRP/setDetido", { detido = 0, time = "0", user_id = user_id, vehicle = vehicle, ipva = parseInt(os.time())})
                return true
            end
        elseif vRP.tryPayment(user_id, price) then
            vRP.execute("vRP/setDetido", { detido = 0, time = "0", user_id = user_id, vehicle = vehicle, ipva = parseInt(os.time())})
            return true
        end
    elseif garage and garage.type == "service" and config.getRentedVehicleTax then
        local price = config.getRentedVehicleTax(user_id, vehicle, garage)
        if config.use_tryFullPayment then
            if vRP.tryGetInventoryItem(user_id, "dinheiro", price) then
                return true
            end
        elseif vRP.tryPayment(user_id, price) then
            return true
        end
    end
    return false
end


 
--[[ config.getVehiclePlate = function(source,veh)
    local user_id = vRP.getUserId(source
	local vehicle = vRP.query("vRP/getVehicle", { user_id = user_id, vehicle = veh })
	if vehicle[1] then
		return vehicle[1].plate
	end
end
 ]]




 -- cobrar por cada vez que puxar um veiculo na garagem

-- config.getVehicleTax = function(user_id,vehicle, price)
-- 	local tax = parseInt(price * 0.1)
-- 	-- if tax > 10000 then
-- 	-- 	tax = 10000
-- 	-- end
-- 	return tax
-- end



 config.webhook = " SEU WEBHOOK "

config.webhookMessage = function(user_id, hash, placa, coords)
	local message = "ERROR"
	if user_id and hash and placa and coords then	
		local identity = vRP.getUserIdentity(user_id)
		local vname = config.getVehicleModel(hash)
		local x,y,z = table.unpack(coords)
		message = "```prolog\n[PASSAPORTE]: "..user_id.." | "..identity.name.." "..identity.firstname.." \n[USOU]: /dv \n[EM]: "..vname.." | "..placa.." \n[XYZ]: "..x..", "..y..", "..z.." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```"
	end
	return message
end


config.pt_BR = {
	vehicleOutOfGarage = "Você já tem um veículo deste modelo fora da garagem.",
	allSlotsOccupied = "Todas as vagas estão ocupadas no momento.",
	vehicleUnavailable = "Veículo em falta na cidade!",
	seizedVehicle = "Veículo apreendido.",
	detainedVehicle = "Veículo detido.",
	noPermission = "Você não tem permissao",
	idUnavailable = function(id) return "ID "..id.." não está disponível" end,
	borrowedKey = function(vehicle,id) return "Chave do veículo <b>"..vehicle.."</b> emprestada para o ID <b>"..id.."</b>" end,
	alreadyHasKey = function(id) return "ID "..id.." já possui a chave desse veículo" end,
	removedKey = function(vehicle,id) return "Chave do veículo <b>"..vehicle.."</b> removida do ID <b>"..id.."</b>" end,
	idHasNoKey = function(id) return "ID "..id.." não possui a chave desse veículo" end,
	borrowedKeys = "Chaves emprestadas:",
	keyCommand = "chave",
	keyTutorial = "Utilize /chave <b>(add/remove/list) (veículo) (id)</b>",
	hasNoVehicle = function(vehicle) return "Você não possui o veículo <b>"..vehicle.."</b>" end,
	anchorCommand = "ancorar",
	disabled = "Desativado",
	installed = "Instalado",
	uninstalled = "Desinstalado",
	level = "Level",
	spawningVehicle = "Já existe um veículo sendo retirado."
}

config.en_US = {
	vehicleOutOfGarage = "You already have a vehicle of this model outside the garage.",
	allSlotsOccupied = "All slots are currently occupied.",
	vehicleUnavailable = "Missing vehicle in town!",
	seizedVehicle = "Seized vehicle.",
	detainedVehicle = "Detained vehicle.",
	noPermission = "You do not have permission",
	idUnavailable = function(id) return "ID "..id.." is not available" end,
	borrowedKey = function(vehicle,id) return "Vehicle key <b>"..vehicle.."</b> borrowed for ID <b>"..id.."</b>" end,
	alreadyHasKey = function(id) return "ID "..id.." already has the key to that vehicle" end,
	removedKey = function(vehicle,id) return "Vehicle key <b>"..vehicle.."</b> removed for ID <b>"..id.."</b>" end,
	idHasNoKey = function(id) return "ID "..id.." does not have a vehicle key" end,
	borrowedKeys = "Borrowed keys:",
	keyCommand = "key",
	keyTutorial = "Use /key <b> (add/remove/list) (vehicle) (id) </b>",
	hasNoVehicle = function(vehicle) return "You do not own the vehicle <b> "..vehicle .." </b>" end,
	anchorCommand = "anchor",
	disabled = "Disabled",
	installed = "Installed",
	uninstalled = "Uninstalled",
	level = "Level",
	spawningVehicle = "Spawning vehicle."
}

config.lang = config.pt_BR






config.garageThread = function()
	Citizen.CreateThread(function()
		while true do
			local idle = 500
			if not nui and length(nearestGarages) > 0 then
				local playercoords = GetEntityCoords(PlayerPedId())
				for i in pairs(nearestGarages) do
					if nearestGarages[i] then
						idle = 5
						local coords = nearestGarages[i].coords
						local marker = nearestGarages[i].marker 
						config.drawMarker(coords,marker)
						local distance = #(playercoords - coords)
						if distance < 2 and IsControlJustPressed(0,38) then
							if nearestGarages[i].type == "home" then
								if func.hasHome(nearestGarages[i].home) then
									homeGarage = nearestGarages[i].home
									toggleNui(nearestGarages[i])
								end
							elseif func.hasPermission(nearestGarages[i].perm) then
								homeGarage = false
								toggleNui(nearestGarages[i], nearestGarages[i].type == "service")
							end
						end
					end
				end
			end
			Citizen.Wait(idle)
		end
	end)
end

config.nearestGaragesThread = function()
	Citizen.CreateThread(function()
		while true do
			if not nui then
				local playercoords = GetEntityCoords(PlayerPedId())
				for i in pairs(config.garages) do 
					local distance = #(playercoords - config.garages[i].coords)
					if distance < 10 then
						nearestGarages[i] = config.garages[i]
					elseif nearestGarages[i] then
						nearestGarages[i] = nil
					end
				end
				for i in pairs(config.homeGarages) do 
					local distance = #(playercoords - config.homeGarages[i].coords)
					if distance < 10 then
						nearestGarages["home-"..i] = config.homeGarages[i]
					elseif nearestGarages["home-"..i] then
						nearestGarages["home-"..i] = nil
					end
				end
			end
			Citizen.Wait(500)
		end
	end)
end


config.customState = function(user_id, vehicle)
	local res = { liberacao = "Em dia", status = "Liberado", classLiberacao = "", classStatus = "", popup = false }
	if parseInt(vehicle.detido) > 0 then
		if parseInt(vehicle.time) == 0 then
			local price = vRP.format( vehicle.price * (config.seguradora / 100) )
			res.liberacao = "$ "..price
			res.status = "Apreendido"
			res.classStatus = "seguradora"
			res.popup = "veículo apreendido, deseja liberar pagando <b>$ "..price.."</b> ?"
		else
			local price = vRP.format( vehicle.price * (config.detido / 100) )
			res.liberacao = "$ "..price
			res.status = "Detido"
			res.classStatus = "detido"
			res.popup = "veículo detido, deseja liberar pagando <b>$ "..price.."</b> ?"
		end
		res.classLiberacao = "detido"
	elseif parseInt(vehicle.ipva + 24 * 15 * 60 * 60) <= parseInt(os.time()) then
		local price = vRP.format( vehicle.price * (config.ipva / 100) )
		res.liberacao = "$ "..price
		res.status = "IPVA Atrasado"
		res.classStatus = "seguradora"
		res.classLiberacao = "detido"
		res.popup = "veículo com ipva atrasado, deseja liberar pagando <b>$ "..price.."</b> ?"
		--[[ if vehicle.expiretime and vehicle.expiretime > 0 then
			price = config.getVehiclePriceDimas(vehicle.vehicle)
			res.liberacao = price.." dimas"
			res.popup = "veículo com ipva atrasado, deseja liberar pagando <b> "..price.." dimas</b> ?"
		end ]]
	elseif vehicle.tax then
		local price = vRP.format(vehicle.tax)
		res.liberacao = "$ "..price
		res.classLiberacao = "seguradora"
		res.popup = "deseja retirar o veículo "..vehicle.name.." por <b>$ "..price.."</b> ?"
	end
	return res
end

config.checkVehicle = function(source, user_id, vehicle, type, hash, home, garage)
	local lang = config.lang
	if not user_id then
        return
    elseif spawnedVehicles[hash] and spawnedVehicles[hash][user_id] and spawnedVehicles[hash][user_id].inStreet then
        TriggerClientEvent("Notify",source,"negado",lang.vehicleOutOfGarage or "Você já tem um veículo deste modelo fora da garagem.",3000)
        fclient.toggleNui(source)
        return
    elseif config.checkPlayer and not config.checkPlayer(source, user_id, vehicle, garage) then
        fclient.toggleNui(source)
        return
    end
    if type and type == "service" and checkGarageVehicle(vehicle, garage) then
        local vehicleInfo = { vehicle = vehicle, engine = 1000, body = 1000, fuel = 100 }
        fclient.checkSpot(source,vehicleInfo, vRP.getUserRegistration(user_id))
        return
    end
    local vehicleInfo = vRP.query("vRP/getVehicle", {user_id = user_id, vehicle = vehicle})
    if vehicleInfo and #vehicleInfo > 0 then
        if (vehicleInfo[1].detido and vehicleInfo[1].detido == 0) or (vehicleInfo[1].arrest and vehicleInfo[1].arrest == 0) then
            if config.payTax then
                if config.payTax(source,user_id,vehicle, home) then
                    fclient.checkSpot(source,vehicleInfo[1],vehicleInfo[1].plate)
                    return
                end
            else
                if not config.checkVehicleGarage or config.checkVehicleGarage(source,user_id,vehicle, garage) then
                    fclient.checkSpot(source,vehicleInfo[1],vehicleInfo[1].plate)
                    return
                end
            end
        else
            if parseInt(vehicleInfo[1].time) == 0 then
                TriggerClientEvent("Notify",source,"negado",lang.seizedVehicle or "Veículo apreendido.",3000)
            else
                TriggerClientEvent("Notify",source,"negado",lang.detainedVehicle or "Veículo detido.",3000)
            end
        end
        fclient.toggleNui(source)
    end
end

if IsDuplicityVersion() then
	RegisterServerEvent("nation_garages:log")
	AddEventHandler("nation_garages:log", function(tipo, coord, vname, id)
		local source = source
		local user_id = id or vRP.getUserId(source)
		local webhook = "SEU WEBHOOK"
		if tipo == "RETIROU" then
			TriggerEvent('Procurado:ChecarProcurados')
			webhook = "SEU WEBHOOK"	
		end
		local message = "**["..tipo.."]**\n```prolog\n[COORDENADA]: "..coord.."\n[ID]: "..user_id.." "..tipo.." o veículo "..vname.."\n[DATA]: "..os.date("%d/%m/%Y [Hora]: %H:%M:%S").."\n\n```"
		SendWebhookMessage(webhook, message)
	end)
	AddEventHandler("nation:deleteVehicleSync", function(vnetid)
		local source = source
		local user_id = vRP.getUserId(source)
		local veh = NetworkGetEntityFromNetworkId(vnetid)
		if DoesEntityExist(veh) then
			local x,y,z = table.unpack(GetEntityCoords(veh))
			local coords = string.format("[X] = %.2f, [Y] = %.2f, [Z] = %.2f",x,y,z)
			local vname = config.getVehicleModel(GetEntityModel(veh))
			TriggerEvent("nation_garages:log", "GUARDOU", coords, vname, user_id)
		end
	end)
else
	AddEventHandler("nation:applymods", function(veh, vname)
		if DoesEntityExist(veh) then
			local x,y,z = table.unpack(GetEntityCoords(veh))
			local coords = string.format("[X] = %.2f, [Y] = %.2f, [Z] = %.2f",x,y,z)
			local vname = config.getVehicleModel(GetEntityModel(veh))
			TriggerEvent('Procurado:ChecarProcurados')
			TriggerServerEvent("nation_garages:log", "RETIROU", coords, vname)
		end
	end)
end


function SendWebhookMessage(webhook, message)
    if webhook and webhook ~= "" then
        PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
    end
end

--[[ config.customMYSQL = true
vRP._prepare("vRP/create_ipva", "ALTER TABLE vrp_vehicles ADD IF NOT EXISTS ipva varchar(255) DEFAULT '1630912803'")
vRP._prepare("vRP/getVehicles", "SELECT * FROM vrp_vehicles WHERE user_id = @user_id")
vRP._prepare("vRP/getVehicle", "SELECT * FROM vrp_vehicles WHERE user_id = @user_id AND vehicle = @vehicle")
vRP._prepare("vRP/setDetido", "UPDATE vrp_vehicles SET arrest = @detido, time = @time, ipva = @ipva WHERE user_id = @user_id AND vehicle = @vehicle")
vRP._prepare("vRP/setIpva", "UPDATE vrp_vehicles SET ipva = @ipva WHERE user_id = @user_id AND vehicle = @vehicle")
vRP._prepare("vRP/setVehicleData", "UPDATE vrp_vehicles SET engine = @engine, body = @body, fuel = @fuel, estado = @estado WHERE user_id = @user_id AND vehicle = @vehicle") ]]