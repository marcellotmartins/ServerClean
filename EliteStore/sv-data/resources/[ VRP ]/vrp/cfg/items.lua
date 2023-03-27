items = {}
-------- SCRIPT AFETADO: VRP

items.list = {

	['mochila'] = { ['index'] = 'mochila', ['name'] = 'Mochila', ['type'] = 'use', ['weight'] = 1.5 },

	['plano-one'] = { ['index'] = 'plano-one', ['name'] = 'Plano 1', ['type'] = 'use', ['weight'] = 0.5 },
	['plano-three'] = { ['index'] = 'plano-three', ['name'] = 'Plano 3', ['type'] = 'use', ['weight'] = 0.5 },
	['plano-five'] = { ['index'] = 'plano-five', ['name'] = 'Plano 5', ['type'] = 'use', ['weight'] = 0.5 },
	['plano-ten'] = { ['index'] = 'plano-ten', ['name'] = 'Plano 10', ['type'] = 'use', ['weight'] = 0.5 },

	['celular'] = { ['index'] = 'celular', ['name'] = 'SmartPhone', ['type'] = 'use', ['weight'] = 1.0 },
	['celular-pro'] = { ['index'] = 'celular-pro', ['name'] = 'SmartPhone Pro', ['type'] = 'use', ['weight'] = 0.5 },
	['jbl'] = { ['index'] = 'jbl', ['name'] = 'JBL', ['type'] = 'use', ['weight'] = 0.5 },
	['calculadora'] = { ['index'] = 'calculadora', ['name'] = 'Calculadora', ['type'] = 'use', ['weight'] = 0.5 },
	['tablet'] = { ['index'] = 'tablet', ['name'] = 'Tablet', ['type'] = 'use', ['weight'] = 0.5 },
	['notebook'] = { ['index'] = 'notebook', ['name'] = 'Notebook', ['type'] = 'use', ['weight'] = 0.5 },
	['controleremoto'] = { ['index'] = 'controleremoto', ['name'] = 'Controle remoto', ['type'] = 'use', ['weight'] = 0.5 },
	['baterias'] = { ['index'] = 'baterias', ['name'] = 'Baterias', ['type'] = 'use', ['weight'] = 0.5 },
	['radio'] = { ['index'] = 'radio', ['name'] = 'WalkTalk', ['type'] = 'use', ['weight'] = 1.0 },
	['chapeu'] = { ['index'] = 'chapeu', ['name'] = 'Chapeu', ['type'] = 'use', ['weight'] = 0.5 },
	['mascara'] = { ['index'] = 'mascara', ['name'] = 'Mascara', ['type'] = 'use', ['weight'] = 0.5 },
	['oculos'] = { ['index'] = 'oculos', ['name'] = 'Óculos', ['type'] = 'use', ['weight'] = 0.5 },
	['passaporte'] = { ['index'] = 'passaporte', ['name'] = 'Passaporte', ['type'] = 'use', ['weight'] = 0.5 },
	['portearmas'] = { ['index'] = 'portearmas', ['name'] = 'Porte de Armas', ['type'] = 'use', ['weight'] = 0.5 },
	['identidade'] = { ['index'] = 'identidade', ['name'] = 'Identidade', ['type'] = 'use', ['weight'] = 0.5 },
	['cnh'] = { ['index'] = 'cnh', ['name'] = 'CNH', ['type'] = 'use', ['weight'] = 0.5 },
	['colete'] = { ['index'] = 'colete', ['name'] = 'Colete Balístico', ['type'] = 'use', ['weight'] = 3.0 },
	['repairkit'] = { ['index'] = 'repairkit', ['name'] = 'Kit de Reparos', ['type'] = 'use', ['weight'] = 3.0 },
	['dinheiro'] = { ['index'] = 'dinheiro', ['name'] = 'Dinheiro', ['type'] = 'use', ['weight'] = 0.0 },
	['cartao-debito'] = { ['index'] = 'cartao-debito', ['name'] = 'Cartão de débito', ['type'] = 'use', ['weight'] = 0.05 },
	['maquininha'] = { ['index'] = 'maquininha', ['name'] = 'Maquininha', ['type'] = 'use', ['weight'] = 0.5 },
	['paninho'] = { ['index'] = 'paninho', ['name'] = 'Pano de Microfibra', ['type'] = 'use', ['weight'] = 0.5 },
	['carrinho'] = { ['index'] = 'carrinho', ['name'] = 'Carrinho', ['type'] = 'use', ['weight'] = 0.5 },
	['camisinha'] = { ['index'] = 'camisinha', ['name'] = 'Camisinha', ['type'] = 'use', ['weight'] = 0.5 },
	['vibrador'] = { ['index'] = 'vibrador', ['name'] = 'Vibrador', ['type'] = 'use', ['weight'] = 0.5 },
	['kit'] = { ['index'] = 'kit', ['name'] = 'Kit de Sex Shop', ['type'] = 'use', ['weight'] = 0.5 },
	['roupas'] = { ['index'] = 'roupas', ['name'] = 'Roupas', ['type'] = 'use', ['weight'] = 8.0 },

	['alvejante'] = { ['index'] = 'alvejante', ['name'] = 'Alvejante', ['type'] = 'use', ['weight'] = 2.0 },

	--[ Illegal Utilities ]--------------------------------------------------------------------------------------------

	['dinheiro-sujo'] = { ['index'] = 'dinheiro-sujo', ['name'] = 'Dinheiro Sujo', ['type'] = 'use', ['weight'] = 0.0001 },
	['algema'] = { ['index'] = 'algema', ['name'] = 'Algema', ['type'] = 'use', ['weight'] = 1.5 },
	['lockpick'] = { ['index'] = 'lockpick', ['name'] = 'Lockpick', ['type'] = 'use', ['weight'] = 4.5 },
	['masterpick'] = { ['index'] = 'masterpick', ['name'] = 'Masterpick', ['type'] = 'use', ['weight'] = 5.5 },
	['capuz'] = { ['index'] = 'capuz', ['name'] = 'Capuz', ['type'] = 'use', ['weight'] = 2.5 },
	['placa'] = { ['index'] = 'placa', ['name'] = 'Placa', ['type'] = 'use', ['weight'] = 4.5 },
	['placa-aluminio'] = { ['index'] = 'placa-aluminio', ['name'] = 'Placa de Aluminio', ['type'] = 'use', ['weight'] = 0.5 },
	['plastico'] = { ['index'] = 'plastico', ['name'] = 'Plastico', ['type'] = 'use', ['weight'] = 0.1 },
	
	--[ Tools ] -------------------------------------------------------------------------------------------------------
	
	['furadeira'] = { ['index'] = 'furadeira', ['name'] = 'Furadeira', ['type'] = 'use', ['weight'] = 2.5 },
	['serra'] = { ['index'] = 'serra', ['name'] = 'Serra', ['type'] = 'use', ['weight'] = 2.5 },
	['broca'] = { ['index'] = 'broca', ['name'] = 'Broca', ['type'] = 'use', ['weight'] = 1.5 },
	['disco-serra'] = { ['index'] = 'disco-serra', ['name'] = 'Disco de Serra', ['type'] = 'use', ['weight'] = 1.5 },
	['pa-jardinagem'] = { ['index'] = 'pa-jardinagem', ['name'] = 'Pá de Jardinagem', ['type'] = 'use', ['weight'] = 0.5 },

	--[ Miscs ]------------------------------------------------------------------------------------------------------

	['garrafa-vazia'] = { ['index'] = 'garrafa-vazia', ['name'] = 'Garrafa vazia', ['type'] = 'use', ['weight'] = 0.5 },
	['ponta-britadeira'] = { ['index'] = 'ponta-britadeira', ['name'] = 'Ponta de britadeira', ['type'] = 'use', ['weight'] = 0.5 },

	--[ Miner Work ]------------------------------------------------------------------------------------------------------

	['minerio-diamante'] = { ['index'] = 'minerio-diamante', ['name'] = 'Minerio de Diamante', ['type'] = 'use', ['weight'] = 0.5 },
	['minerio-ouro'] = { ['index'] = 'minerio-ouro', ['name'] = 'Minerio de Ouro', ['type'] = 'use', ['weight'] = 0.5 },
	['minerio-prata'] = { ['index'] = 'minerio-prata', ['name'] = 'Minerio de Prata', ['type'] = 'use', ['weight'] = 0.5 },
	['minerio-ferro'] = { ['index'] = 'minerio-ferro', ['name'] = 'Minerio de Ferro', ['type'] = 'use', ['weight'] = 0.5 },


	['diamante'] = { ['index'] = 'diamante', ['name'] = 'Diamante Bruto', ['type'] = 'use', ['weight'] = 0.5 },
	['barra-ouro'] = { ['index'] = 'barra-ouro', ['name'] = 'Barra de Ouro', ['type'] = 'use', ['weight'] = 0.5 },
	['barra-prata'] = { ['index'] = 'barra-prata', ['name'] = 'Barra de Prata', ['type'] = 'use', ['weight'] = 0.5 },
	['barra-ferro'] = { ['index'] = 'barra-ferro', ['name'] = 'Barra de Ferro', ['type'] = 'use', ['weight'] = 0.5 },

	--[ Drinks ]-------------------------------------------------------------------------------------------------------
	
	['agua'] = { ['index'] = 'agua', ['name'] = 'Água', ['type'] = 'use', ['weight'] = 0.5 },
	['leite'] = { ['index'] = 'leite', ['name'] = 'Leite', ['type'] = 'use', ['weight'] = 0.5 },
	['cafe'] = { ['index'] = 'cafe', ['name'] = 'Café', ['type'] = 'use', ['weight'] = 0.5 },
	['cafecleite'] = { ['index'] = 'cafecleite', ['name'] = 'Café com Leite', ['type'] = 'use', ['weight'] = 0.5 },
	['cafeexpresso'] = { ['index'] = 'cafeexpresso', ['name'] = 'Café Expresso', ['type'] = 'use', ['weight'] = 0.5 },
	['capuccino'] = { ['index'] = 'capuccino', ['name'] = 'Capuccino', ['type'] = 'use', ['weight'] = 0.5 },
	['frappuccino'] = { ['index'] = 'frappuccino', ['name'] = 'Frapuccino', ['type'] = 'use', ['weight'] = 0.5 },
	['cha'] = { ['index'] = 'cha', ['name'] = 'Chá', ['type'] = 'use', ['weight'] = 0.5 },
	['icecha'] = { ['index'] = 'icecha', ['name'] = 'Chá Gelado', ['type'] = 'use', ['weight'] = 0.5 },
	['sprunk'] = { ['index'] = 'sprunk', ['name'] = 'Sprunk', ['type'] = 'use', ['weight'] = 0.5 },
	['cola'] = { ['index'] = 'cola', ['name'] = 'Cola', ['type'] = 'use', ['weight'] = 0.5 },
	['energetico'] = { ['index'] = 'energetico', ['name'] = 'Energético', ['type'] = 'use', ['weight'] = 0.5 },
	
	--[ Alcoholic Beverages ]------------------------------------------------------------------------------------------
	
	['pibwassen'] = { ['index'] = 'pibwassen', ['name'] = 'PibWassen', ['type'] = 'use', ['weight'] = 0.5 },
	['tequilya'] = { ['index'] = 'tequilya', ['name'] = 'Tequilya', ['type'] = 'use', ['weight'] = 0.5 },
	['patriot'] = { ['index'] = 'patriot', ['name'] = 'Patriot', ['type'] = 'use', ['weight'] = 0.5 },
	['blarneys'] = { ['index'] = 'blarneys', ['name'] = 'Blarneys', ['type'] = 'use', ['weight'] = 0.5 },
	['jakeys'] = { ['index'] = 'jakeys', ['name'] = 'Jakeys', ['type'] = 'use', ['weight'] = 0.5 },
	['barracho'] = { ['index'] = 'barracho', ['name'] = 'Barracho', ['type'] = 'use', ['weight'] = 0.5 },
	['ragga'] = { ['index'] = 'ragga', ['name'] = 'Ragga', ['type'] = 'use', ['weight'] = 0.5 },
	['nogo'] = { ['index'] = 'nogo', ['name'] = 'Nogo', ['type'] = 'use', ['weight'] = 0.5 },
	['mount'] = { ['index'] = 'mount', ['name'] = 'Mount', ['type'] = 'use', ['weight'] = 0.5 },
	['cherenkov'] = { ['index'] = 'cherenkov', ['name'] = 'Cherenkov', ['type'] = 'use', ['weight'] = 0.5 },
	['bourgeoix'] = { ['index'] = 'bourgeoix', ['name'] = 'Bourgeoix', ['type'] = 'use', ['weight'] = 0.5 },
	['bleuterd'] = { ['index'] = 'bleuterd', ['name'] = 'Bleuterd', ['type'] = 'use', ['weight'] = 0.5 },
	
	--[ FastFoods ]----------------------------------------------------------------------------------------------------
	
	['sanduiche'] = { ['index'] = 'sanduiche', ['name'] = 'Sanduíche', ['type'] = 'use', ['weight'] = 0.5 },
	['rosquinha'] = { ['index'] = 'rosquinha', ['name'] = 'Rosquinha', ['type'] = 'use', ['weight'] = 0.5 },
	['hotdog'] = { ['index'] = 'hotdog', ['name'] = 'HotDog', ['type'] = 'use', ['weight'] = 0.5 },
	['xburguer'] = { ['index'] = 'xburguer', ['name'] = 'xBurguer', ['type'] = 'use', ['weight'] = 0.5 },
	['chips'] = { ['index'] = 'chips', ['name'] = 'Batata Chips', ['type'] = 'use', ['weight'] = 0.5 },
	['batataf'] = { ['index'] = 'batataf', ['name'] = 'Batata Frita', ['type'] = 'use', ['weight'] = 0.5 },
	['pizza'] = { ['index'] = 'pizza', ['name'] = 'Pedaço de Pizza', ['type'] = 'use', ['weight'] = 0.5 },
	['frango'] = { ['index'] = 'frango', ['name'] = 'Frango Frito', ['type'] = 'use', ['weight'] = 0.5 },
	['bcereal'] = { ['index'] = 'bcereal', ['name'] = 'Barra de Cereal', ['type'] = 'use', ['weight'] = 0.5 },
	['bchocolate'] = { ['index'] = 'bchocolate', ['name'] = 'Barra de Chocolate', ['type'] = 'use', ['weight'] = 0.5 },
	['taco'] = { ['index'] = 'taco', ['name'] = 'Taco', ['type'] = 'use', ['weight'] = 0.5 },
	
	--[ Drugs ]--------------------------------------------------------------------------------------------------------
	
	['paracetamil'] = { ['index'] = 'paracetamil', ['name'] = 'Paracetamil', ['type'] = 'use', ['weight'] = 0.5 },
	['voltarom'] = { ['index'] = 'voltarom', ['name'] = 'Voltarom', ['type'] = 'use', ['weight'] = 0.5 },
	['trandrylux'] = { ['index'] = 'trandrylux', ['name'] = 'Trandrylux', ['type'] = 'use', ['weight'] = 0.5 },
	['dorfrex'] = { ['index'] = 'dorfrex', ['name'] = 'Dorfrex', ['type'] = 'use', ['weight'] = 0.5 },
	['buscopom'] = { ['index'] = 'buscopom', ['name'] = 'Buscopom', ['type'] = 'use', ['weight'] = 0.5 },
	
	--[ Prescription ]-------------------------------------------------------------------------------------------------
	
	['r-paracetamil'] = { ['index'] = 'r-paracetamil', ['name'] = 'Receituário Paracetamil', ['type'] = 'use', ['weight'] = 0.5 },
	['r-voltarom'] = { ['index'] = 'r-voltarom', ['name'] = 'Receituário Voltarom', ['type'] = 'use', ['weight'] = 0.5 },
	['r-trandrylux'] = { ['index'] = 'r-trandrylux', ['name'] = 'Receituário Trandrylux', ['type'] = 'use', ['weight'] = 0.5 },
	['r-dorfrex'] = { ['index'] = 'r-dorfrex', ['name'] = 'Receituário Dorfrex', ['type'] = 'use', ['weight'] = 0.5 },
	['r-buscopom'] = { ['index'] = 'r-buscopom', ['name'] = 'Receituário Buscopom', ['type'] = 'use', ['weight'] = 0.5 },
	['headblock'] = { ['index'] = 'headblock', ['name'] = 'Headblock', ['type'] = 'use', ['weight'] = 0.1 },
	['gesso'] = { ['index'] = 'gesso', ['name'] = 'Gesso', ['type'] = 'use', ['weight'] = 0.1 },
	['cinta'] = { ['index'] = 'cinta', ['name'] = 'Cinta', ['type'] = 'use', ['weight'] = 0.1 },
	['bandagem'] = { ['index'] = 'bandagem', ['name'] = 'Bandagem', ['type'] = 'use', ['weight'] = 0.1 },

	--[ Drogas ]-------------------------------------------------------------------------------------------------

	['composito'] = { ['index'] = 'composito', ['name'] = 'Compósito', ['type'] = 'use', ['weight'] = 0.8 },
	['cristal-metanfetamina'] = { ['index'] = 'cristal-metanfetamina', ['name'] = 'Cristal Metanfetamina', ['type'] = 'use', ['weight'] = 0.4 },
	['acido'] = { ['index'] = 'acido', ['name'] = 'Acido', ['type'] = 'use', ['weight'] = 0.4 },
	['metanfetamina'] = { ['index'] = 'metanfetamina', ['name'] = 'Metanfetamina', ['type'] = 'use', ['weight'] = 1.0 },

	['pasta-base'] = { ['index'] = 'pasta-base', ['name'] = 'Pasta Base', ['type'] = 'use', ['weight'] = 0.8 },
	['ziplock'] = { ['index'] = 'ziplock', ['name'] = 'Zip-Lock', ['type'] = 'use', ['weight'] = 0.4 },
	['cocaina'] = { ['index'] = 'cocaina', ['name'] = 'Cocaína', ['type'] = 'use', ['weight'] = 0.4 },
	['cocaina-embalada'] = { ['index'] = 'cocaina-embalada', ['name'] = 'Cocaína Embalada', ['type'] = 'use', ['weight'] = 1.0 },

	['ergolina'] = { ['index'] = 'ergolina', ['name'] = 'Quimico Ergolina', ['type'] = 'use', ['weight'] = 0.8 },
	['lsd'] = { ['index'] = 'lsd', ['name'] = 'LSD', ['type'] = 'use', ['weight'] = 0.4 },
	['folhadeselo'] = { ['index'] = 'folhadeselo', ['name'] = 'Folha de Selo', ['type'] = 'use', ['weight'] = 0.4 },
	['lsdselo'] = { ['index'] = 'lsdselo', ['name'] = 'LSD Selo', ['type'] = 'use', ['weight'] = 1.0 },

	['folha-marijuana'] = { ['index'] = 'folha-marijuana', ['name'] = 'Folha de Marijuana', ['type'] = 'use', ['weight'] = 0.8 },
	['maconha'] = { ['index'] = 'maconha', ['name'] = 'Maconha', ['type'] = 'use', ['weight'] = 0.4 },
	['seda'] = { ['index'] = 'seda', ['name'] = 'Seda', ['type'] = 'use', ['weight'] = 0.4 },
	['baseado'] = { ['index'] = 'baseado', ['name'] = 'Baseado', ['type'] = 'use', ['weight'] = 1.0 },
	
	--[ Weapons body ][ Weapons Production ]---------------------------------------------------------------------------
	
	['corpo-fuzil'] = { ['index'] = 'corpo-fuzil', ['name'] = 'Corpo de Fuzil', ['type'] = 'use', ['weight'] = 1.9 },
	['corpo-sub'] = { ['index'] = 'corpo-sub', ['name'] = 'Corpo de SUB', ['type'] = 'use', ['weight'] = 1.7 },
	['corpo-pistola'] = { ['index'] = 'corpo-pistola', ['name'] = 'Corpo de Pistola', ['type'] = 'use', ['weight'] = 1.5 },
	['corpo-doze'] = { ['index'] = 'corpo-doze', ['name'] = 'Corpo de Escopeta', ['type'] = 'use', ['weight'] = 1.5 },


	--[ Miscellaneous ][ Weapons Production ]--------------------------------------------------------------------------
	
	['molas'] = { ['index'] = 'molas', ['name'] = 'Molas', ['type'] = 'use', ['weight'] = 0.3 },
	['placa-metal'] = { ['index'] = 'placa-metal', ['name'] = 'Placa de Metal', ['type'] = 'use', ['weight'] = 0.45 },
	['gatilho'] = { ['index'] = 'gatilho', ['name'] = 'Gatilho', ['type'] = 'use', ['weight'] = 0.4 },
	['capsulas'] = { ['index'] = 'capsulas', ['name'] = 'Capsulas', ['type'] = 'use', ['weight'] = 0.2 },
	['polvora'] = { ['index'] = 'polvora', ['name'] = 'Polvora', ['type'] = 'use', ['weight'] = 0.4 },

	--[ Emprego ][ Leiteiro ]------------------------------------------------------------------------------------------

	['garrafa-leite'] = { ['index'] = 'garrafa-leite', ['name'] = 'Garrafa com Leite', ['type'] = 'use', ['weight'] = 0.5 },

	--[ Emprego ][ Pescador ]------------------------------------------------------------------------------------------

	['isca'] = { ['index'] = 'isca', ['name'] = 'Iscas de Pesca', ['type'] = 'use', ['weight'] = 0.5 },

	--[ Emprego ][ Lenhador ]------------------------------------------------------------------------------------------

	['tora'] = { ['index'] = 'tora', ['name'] = 'Tora de Madeira', ['type'] = 'use', ['weight'] = 0.9 },

	--[ Emprego ][ Lixeiro ]------------------------------------------------------------------------------------------

	['saco-lixo'] = {['index'] = 'saco-lixo', ['name'] = 'Saco de Lixo', ['type'] = 'use', ['weight'] = 0.5 },

	--[ Emprego ][ Carteiro ]------------------------------------------------------------------------------------------

	['encomenda'] = { ['index'] = 'encomenda', ['name'] = 'Encomenda', ['type'] = 'use', ['weight'] = 1.0 },
	['caixa-vazia'] = { ['index'] = 'caixa-vazia', ['name'] = 'Caixa Vazia', ['type'] = 'use', ['weight'] = 1.0 },

	--[ Emprego ][ Transporter ]------------------------------------------------------------------------------------------

	['malote'] = { ['index'] = 'malote', ['name'] = 'Malote de Dinheiro', ['type'] = 'use', ['weight'] = 0.5 },

	--[ Emprego ][ Farmer ]------------------------------------------------------------------------------------------

	['semente-marijuana'] = { ['index'] = 'semente-maconha', ['name'] = 'Sementes Genericas', ['type'] = 'use', ['weight'] = 0.5 },
	['semente-blueberry'] = { ['index'] = 'semente-blueberry', ['name'] = 'Sementes de Blueberry', ['type'] = 'use', ['weight'] = 0.5 },
	['semente-tomate'] = { ['index'] = 'semente-tomate', ['name'] = 'Semente de Tomate', ['type'] = 'use', ['weight'] = 0.5 },
	['semente-laranja'] = { ['index'] = 'semente-laranja', ['name'] = 'Semente de Laranja', ['type'] = 'use', ['weight'] = 0.5 },
	
	['laranja'] = { ['index'] = 'laranja', ['name'] = 'Laranja', ['type'] = 'use', ['weight'] = 0.5 },
	['tomate'] = { ['index'] = 'tomate', ['name'] = 'Tomate', ['type'] = 'use', ['weight'] = 0.5 },
	['blueberry'] = { ['index'] = 'blueberry', ['name'] = 'Blueberry', ['type'] = 'use', ['weight'] = 0.5 },

	['graosimpuros'] = { ['index'] = 'graosimpuros', ['name'] = 'Graos Impuros', ['type'] = 'use', ['weight'] = 0.5 },
	['graos'] = { ['index'] = 'graos', ['name'] = 'Graos', ['type'] = 'use', ['weight'] = 0.5 },

	--[ Desmanche ]------------------------------------------------------------------------------------------

	['transmissao'] = { ['index'] = 'transmissao', ['name'] = 'Transmissao', ['type'] = 'use', ['weight'] = 0.5 },
	['suspensao'] = { ['index'] = 'suspensao', ['name'] = 'Suspensao', ['type'] = 'use', ['weight'] = 0.5 },
	['portas'] = { ['index'] = 'portas', ['name'] = 'Portas', ['type'] = 'use', ['weight'] = 0.5 },
	['borrachas'] = { ['index'] = 'borrachas', ['name'] = 'Borrachas', ['type'] = 'use', ['weight'] = 0.5 },
	['pneus'] = { ['index'] = 'pneus', ['name'] = 'Pneus', ['type'] = 'use', ['weight'] = 0.5 },
	['capo'] = { ['index'] = 'capo', ['name'] = 'Capo', ['type'] = 'use', ['weight'] = 0.5 },
	['bateria-carro'] = { ['index'] = 'bateria-carro', ['name'] = 'Bateria de Carro', ['type'] = 'use', ['weight'] = 0.5 },
	['motor'] = { ['index'] = 'motor', ['name'] = 'Motor', ['type'] = 'use', ['weight'] = 0.5 },

	--[ Itens danificados ]--------------------------------------------------------------------------------------------

	['celular-queimado'] = { ['index'] = 'celular-queimado', ['name'] = 'Celular queimado', ['type'] = 'use', ['weight'] = 0.5 },
	['jbl-queimada'] = { ['index'] = 'jbl-queimada', ['name'] = 'JBL queimada', ['type'] = 'use', ['weight'] = 0.5 },
	['calculadora-queimada'] = { ['index'] = 'calculadora-queimada', ['name'] = 'Calculadora queimada', ['type'] = 'use', ['weight'] = 0.5 },
	['tablet-queimado'] = { ['index'] = 'tablet-queimado', ['name'] = 'Tablet queimado', ['type'] = 'use', ['weight'] = 0.5 },
	['notebook-queimado'] = { ['index'] = 'notebook-queimado', ['name'] = 'Notebook queimado', ['type'] = 'use', ['weight'] = 0.5 },
	['controleremoto-queimado'] = { ['index'] = 'controleremoto-queimado', ['name'] = 'Controle remoto queimado', ['type'] = 'use', ['weight'] = 0.5 },
	['baterias-queimadas'] = { ['index'] = 'baterias-queimadas', ['name'] = 'Baterias queimadas', ['type'] = 'use', ['weight'] = 0.5 },
	['radio-queimado'] = { ['index'] = 'radio-queimado', ['name'] = 'Rádio queimado', ['type'] = 'use', ['weight'] = 0.5 },
	['maquininha-queimada'] = { ['index'] = 'maquininha-queimada', ['name'] = 'Maquininha queimada', ['type'] = 'use', ['weight'] = 0.5 },

	--[ MUNICOES ]--------------------------------------------------------------------------------------------

	['WEAPON_PISTOL_AMMO'] = { ['index'] = 'WEAPON_PISTOL_AMMO', ['name'] = 'M-PISTOLA', ['type'] = 'recharge', ['weight'] = 0.01 },
	['WEAPON_SMG_AMMO'] = { ['index'] = 'WEAPON_SMG_AMMO', ['name'] = 'M-SMG', ['type'] = 'recharge', ['weight'] = 0.01 },
	['WEAPON_RIFLE_AMMO'] = { ['index'] = 'WEAPON_RIFLE_AMMO', ['name'] = 'M-RIFLE', ['type'] = 'recharge', ['weight'] = 0.01 },
	['WEAPON_SHOTGUN_AMMO'] = { ['index'] = 'WEAPON_SHOTGUN_AMMO', ['name'] = 'M-SHOTGUN', ['type'] = 'recharge', ['weight'] = 0.01 },
	['WEAPON_PETROLCAN_AMMO'] = { ['index'] = 'WEAPON_PETROLCAN_AMMO', ['name'] = 'M-GASOLINA', ['type'] = 'recharge', ['weight'] = 0.01 },
	['WEAPON_SNIPER_AMMO'] = { ['index'] = 'WEAPON_SNIPER_AMMO', ['name'] = 'M-SNIPER', ['type'] = 'recharge', ['weight'] = 0.01 },
	
	--[ Weapons ][ Melee]----------------------------------------------------------------------------------------------

	['WEAPON_DAGGER'] = { ['index'] = 'WEAPON_DAGGER', ['name'] = 'Adaga', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_BAT'] = { ['index'] = 'WEAPON_BAT', ['name'] = 'Taco de Baseball', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_BOTTLE'] = { ['index'] = 'WEAPON_BOTTLE', ['name'] = 'Garrafa quebrada', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_CROWBAR'] = { ['index'] = 'WEAPON_CROWBAR', ['name'] = 'Pé de Cabra', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_FLASHLIGHT'] = { ['index'] = 'WEAPON_FLASHLIGHT', ['name'] = 'Lanterna', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_GOLFCLUB'] = { ['index'] = 'WEAPON_GOLFCLUB', ['name'] = 'Taco de Golf', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_HAMMER'] = { ['index'] = 'WEAPON_HAMMER', ['name'] = 'Martelo', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_HATCHET'] = { ['index'] = 'WEAPON_HATCHET', ['name'] = 'Machado', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_KNUCKLE'] = { ['index'] = 'WEAPON_KNUCKLE', ['name'] = 'Soco Inglês', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_KNIFE'] = { ['index'] = 'WEAPON_KNIFE', ['name'] = 'Faca', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_MACHETE'] = { ['index'] = 'WEAPON_MACHETE', ['name'] = 'Machado', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_SWITCHBLADE'] = { ['index'] = 'WEAPON_SWITCHBLADE', ['name'] = 'Canivete', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_NIGHTSTICK'] = { ['index'] = 'WEAPON_NIGHTSTICK', ['name'] = 'Cassetete', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_WHENCH'] = { ['index'] = 'WEAPON_WHENCH', ['name'] = 'Grifo', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_BATTLEAXE'] = { ['index'] = 'WEAPON_BATTLEAXE', ['name'] = 'Machado De Batalha', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_POOLCUE'] = { ['index'] = 'WEAPON_POOLCUE', ['name'] = 'Taco de Sinuca', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_STONE_HATCHET'] = { ['index'] = 'WEAPON_STONE_HATCHET', ['name'] = 'Machado de Pedra', ['type'] = 'equip', ['weight'] = 1.0 },

	--[ Handguns ][ Weapons ]------------------------------------------------------------------------------------------
	
	['WEAPON_PISTOL'] = { ['index'] = 'WEAPON_PISTOL', ['name'] = 'USP', ['type'] = 'equip', ['weight'] = 3.0 },
	['WEAPON_PISTOL_MK2'] = { ['index'] = 'WEAPON_PISTOL_MK2', ['name'] = 'Five-Seven', ['type'] = 'equip', ['weight'] = 3.0 },
	['WEAPON_COMBATPISTOL'] = { ['index'] = 'WEAPON_COMBATPISTOL', ['name'] = 'GLOCK', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_APPISTOL'] = { ['index'] = 'WEAPON_APPISTOL', ['name'] = 'XSE 1911', ['type'] = 'equip', ['weight'] = 3.0 },
	['WEAPON_STUNGUN'] = { ['index'] = 'WEAPON_STUNGUN', ['name'] = 'Taser', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_PISTOL50'] = { ['index'] = 'WEAPON_PISTOL50', ['name'] = 'Desert Eagle', ['type'] = 'equip', ['weight'] = 3.0 },
	['WEAPON_SNSPISTOL'] = { ['index'] = 'WEAPON_SNSPISTOL', ['name'] = 'HK', ['type'] = 'equip', ['weight'] = 3.0 },
	['WEAPON_SNSPISTOL_MK2'] = { ['index'] = 'WEAPON_SNSPISTOL_MK2', ['name'] = 'Walther PPK2', ['type'] = 'equip', ['weight'] = 3.0 },
	['WEAPON_HEAVYPISTOL'] = { ['index'] = 'WEAPON_HEAVYPISTOL', ['name'] = 'Wide 1911', ['type'] = 'equip', ['weight'] = 3.0 },
	['WEAPON_VINTAGEPISTOL'] = { ['index'] = 'WEAPON_VINTAGEPISTOL', ['name'] = 'FN 1903', ['type'] = 'equip', ['weight'] = 3.0 },
	['WEAPON_FLAREGUN'] = { ['index'] = 'WEAPON_FLAREGUN', ['name'] = 'Sinalizador', ['type'] = 'equip', ['weight'] = 3.0 },
	['WEAPON_MARKSMANPISTOL'] = { ['index'] = 'WEAPON_MARKSMANPISTOL', ['name'] = 'Musket Pistol', ['type'] = 'equip', ['weight'] = 3.0 },
	['WEAPON_REVOLVER'] = { ['index'] = 'WEAPON_REVOLVER', ['name'] = 'ASG CO2', ['type'] = 'equip', ['weight'] = 3.0 },
	['WEAPON_REVOLVER_MK2'] = { ['index'] = 'WEAPON_REVOLVER_MK2', ['name'] = 'Raging Bull', ['type'] = 'equip', ['weight'] = 3.0 },
	['WEAPON_DOUBLEACTION'] = { ['index'] = 'WEAPON_DOUBLEACTION', ['name'] = 'Python', ['type'] = 'equip', ['weight'] = 3.0 },
	['WEAPON_RAYPISTOL'] = { ['index'] = 'WEAPON_RAYPISTOL', ['name'] = 'Raypistol', ['type'] = 'equip', ['weight'] = 3.0 },
	['WEAPON_CERAMICPISTOL'] = { ['index'] = 'WEAPON_CERAMICPISTOL', ['name'] = 'Koch P7', ['type'] = 'equip', ['weight'] = 3.0 },
	['WEAPON_NAVYREVOLVER'] = { ['index'] = 'WEAPON_NAVYREVOLVER', ['name'] = 'Colt 1851', ['type'] = 'equip', ['weight'] = 3.0 },

	--[ Submachine Guns ][ Weapons ]-----------------------------------------------------------------------------------

	['WEAPON_MICROSMG'] = { ['index'] = 'WEAPON_MICROSMG', ['name'] = 'Micro Uzi', ['type'] = 'equip', ['weight'] = 5.0 },
	['WEAPON_SMG'] = { ['index'] = 'WEAPON_SMG', ['name'] = 'MP5', ['type'] = 'equip', ['weight'] = 5.0 },
	['WEAPON_SMG_MK2'] = { ['index'] = 'WEAPON_SMG_MK2', ['name'] = 'MP5K', ['type'] = 'equip', ['weight'] = 5.0 },
	['WEAPON_ASSAULTSMG'] = { ['index'] = 'WEAPON_ASSAULTSMG', ['name'] = 'P90', ['type'] = 'equip', ['weight'] = 5.0 },
	['WEAPON_COMBATPDW'] = { ['index'] = 'WEAPON_COMBATPDW', ['name'] = 'MPX-SD', ['type'] = 'equip', ['weight'] = 5.0 },
	['WEAPON_MACHINEPISTOL'] = { ['index'] = 'WEAPON_MACHINEPISTOL', ['name'] = 'TEC-DC9', ['type'] = 'equip', ['weight'] = 5.0 },
	['WEAPON_MINISMG'] = { ['index'] = 'WEAPON_MINISMG', ['name'] = 'VZ.82', ['type'] = 'equip', ['weight'] = 5.0 },
	['WEAPON_RAYCARBINE'] = { ['index'] = 'WEAPON_RAYCARBINE', ['name'] = 'Ray Carbine', ['type'] = 'equip', ['weight'] = 5.0 },

	--[ Shotguns ][ Weapons ]------------------------------------------------------------------------------------------

	['WEAPON_PUMPSHOTGUN'] = { ['index'] = 'WEAPON_PUMPSHOTGUN', ['name'] = 'Mossberg 590', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_PUMPSHOTGUN_MK2'] = { ['index'] = 'WEAPON_PUMPSHOTGUN_MK2', ['name'] = 'Remington 870', ['type'] = 'equip', ['weight'] = 7.0 },
	['WEAPON_SAWNOFFSHOTGUN'] = { ['index'] = 'WEAPON_SAWNOFFSHOTGUN', ['name'] = 'Cano Curto', ['type'] = 'equip', ['weight'] = 7.0 },
	['WEAPON_ASSAULTSHOTGUN'] = { ['index'] = 'WEAPON_ASSAULTSHOTGUN', ['name'] = 'UTS-15', ['type'] = 'equip', ['weight'] = 7.0 },
	['WEAPON_BULLPUPSHOTGUN'] = { ['index'] = 'WEAPON_BULLPUPSHOTGUN', ['name'] = 'Kel-Tec KSG ', ['type'] = 'equip', ['weight'] = 7.0 },
	['WEAPON_MUSKET'] = { ['index'] = 'WEAPON_MUSKET', ['name'] = 'Musket', ['type'] = 'equip', ['weight'] = 7.0 },
	['WEAPON_HEAVYSHOTGUN'] = { ['index'] = 'WEAPON_HEAVYSHOTGUN', ['name'] = 'Saiga 12', ['type'] = 'equip', ['weight'] = 7.0 },
	['WEAPON_DBSHOTGUN'] = { ['index'] = 'WEAPON_DBSHOTGUN', ['name'] = 'Zabala', ['type'] = 'equip', ['weight'] = 7.0 },
	['WEAPON_AUTOSHOTGUN'] = { ['index'] = 'WEAPON_AUTOSHOTGUN', ['name'] = 'Armsel Protecta', ['type'] = 'equip', ['weight'] = 7.0 },

	--[ Assault Rifles ][ Weapons ]------------------------------------------------------------------------------------

	['WEAPON_ASSAULTRIFLE'] = { ['index'] = 'WEAPON_ASSAULTRIFLE', ['name'] = 'AKS', ['type'] = 'equip', ['weight'] = 10.0 },
	['WEAPON_ASSAULTRIFLE_MK2'] = { ['index'] = 'WEAPON_ASSAULTRIFLE_MK2', ['name'] = 'AK-47', ['type'] = 'equip', ['weight'] = 10.0 },
	['WEAPON_CARBINERIFLE'] = { ['index'] = 'WEAPON_CARBINERIFLE', ['name'] = 'AR-15', ['type'] = 'equip', ['weight'] = 10.0 },
	['WEAPON_CARBINERIFLE_MK2'] = { ['index'] = 'WEAPON_CARBINERIFLE_MK2', ['name'] = 'M4-A1', ['type'] = 'equip', ['weight'] = 10.0 },
	['WEAPON_ADVANCEDRIFLE'] = { ['index'] = 'WEAPON_ADVANCEDRIFLE', ['name'] = 'Tavor CTAR-21', ['type'] = 'equip', ['weight'] = 10.0 },
	['WEAPON_SPECIALCARBINE'] = { ['index'] = 'WEAPON_SPECIALCARBINE', ['name'] = 'G36C', ['type'] = 'equip', ['weight'] = 10.0 },
	['WEAPON_SPECIALCARBINE_MK2'] = { ['index'] = 'WEAPON_SPECIALCARBINE_MK2', ['name'] = 'G36K', ['type'] = 'equip', ['weight'] = 10.0 },
	['WEAPON_BULLPUPRIFLE'] = { ['index'] = 'WEAPON_BULLPUPRIFLE', ['name'] = 'Norinco 86S', ['type'] = 'equip', ['weight'] = 10.0 },
	['WEAPON_BULLPUPRIFLE_MK2'] = { ['index'] = 'WEAPON_BULLPUPRIFLE_MK2', ['name'] = 'HS VHS-D2', ['type'] = 'equip', ['weight'] = 10.0 },
	['WEAPON_COMPACTRIFLE'] = { ['index'] = 'WEAPON_COMPACTRIFLE', ['name'] = 'Draco', ['type'] = 'equip', ['weight'] = 10.0 },

	--[ Light Machine Guns ][ Weapons ]--------------------------------------------------------------------------------

	['WEAPON_MG'] = { ['index'] = 'WEAPON_MG', ['name'] = 'PKM', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_COMBATMG'] = { ['index'] = 'WEAPON_COMBATMG', ['name'] = 'M60', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_COMBATMG_MK2'] = { ['index'] = 'WEAPON_COMBATMG_MK2', ['name'] = 'M60E4', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_GUSENBERG'] = { ['index'] = 'WEAPON_GUSENBERG', ['name'] = 'Thompson', ['type'] = 'equip', ['weight'] = 1.0 },

	--[ Sniper Rifles ][ Weapons ]-------------------------------------------------------------------------------------

	['WEAPON_SNIPERRIFLE'] = { ['index'] = 'WEAPON_SNIPERRIFLE', ['name'] = 'AW-F', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_HEAVYSNIPER'] = { ['index'] = 'WEAPON_HEAVYSNIPER', ['name'] = 'Barrett M107', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_HEAVYSNIPER_MK2'] = { ['index'] = 'WEAPON_HEAVYSNIPER_MK2', ['name'] = 'Serbu BFG-50A', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_MASKMANRIFLE'] = { ['index'] = 'WEAPON_MASKMANRIFLE', ['name'] = 'M39', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_MASKMANRIFLE_MK2'] = { ['index'] = 'WEAPON_MASKMANRIFLE_MK2', ['name'] = 'M1A', ['type'] = 'equip', ['weight'] = 1.0 },

	--[ Heavy Weapons ][ Weapons ]-------------------------------------------------------------------------------------

	['WEAPON_RPG'] = { ['index'] = 'WEAPON_RPG', ['name'] = 'RPG', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_GRENADELAUNCHER'] = { ['index'] = 'WEAPON_GRENADELAUNCHER', ['name'] = 'Lançador de Granadas', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_GRENADELAUNCHER_SMOKE'] = { ['index'] = 'WEAPON_GRENADELAUNCHER_SMOKE', ['name'] = 'Lançador de Granadas de Smoke', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_MINIGUN'] = { ['index'] = 'WEAPON_MINIGUN', ['name'] = 'Minigun', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_FIREWORK'] = { ['index'] = 'WEAPON_FIREWORK', ['name'] = 'Firework', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_RAILGUN'] = { ['index'] = 'WEAPON_RAILGUN', ['name'] = 'Railgun', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_HOMINGLAUNCHER'] = { ['index'] = 'WEAPON_HOMINGLAUNCHER', ['name'] = 'Railgun', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_COMPACTLAUNCHER'] = { ['index'] = 'WEAPON_COMPACTLAUNCHER', ['name'] = 'Lançador de Granadas Compacto', ['type'] = 'equip', ['weight'] = 1.0 },
	['WEAPON_RAYMINIGUN'] = { ['index'] = 'WEAPON_RAYMINIGUN', ['name'] = 'Rayminigun', ['type'] = 'equip', ['weight'] = 1.0 },

	--[ Miscellaneous ]------------------------------------------------------------------------------------------------

	['GADGET_PARACHUTE'] = { ['index'] = 'GADGET_PARACHUTE', ['name'] = 'Paraquédas', ['type'] = 'pqd', ['weight'] = 1.0 },

	['wammoWEAPON_PETROLCAN'] = { ['index'] = 'wammoWEAPON_PETROLCAN', ['name'] = 'Galão de Gasolina', ['type'] = 'equip', ['weight'] = 1.0 },
	['wammoWEAPON_FIREEXTINGUISHER'] = { ['index'] = 'wammoWEAPON_FIREEXTINGUISHER', ['name'] = 'Extintor', ['type'] = 'equip', ['weight'] = 1.0 }
}