groups = {}

groups.list = {
------------------------------------------------------
--[	Staff ]------------------------------------------------------------------

	["Manager"] = {
		_config = {
			title = "Manager",
			gtype = "staff",
			salario = 2500 
		},
		"baus.permissao", -- Permissão para acessar qualquer baú de FAC ou ORG
		"retirarAdm.permissao", -- Permissão para retirar itens de qualquer baú de FAC ou ORG
		"addhomes.permissao", -- Permissão para adicionar casas
		"remhomes.permissao", -- Permissão para remover casas
		"antiafk.permissao", -- Permissão para não ser kickado por estar AFK
		"cor.permissao", -- Permissão para colocar cor nas armas
		"animacao.permissao", -- Permissão para usar o /e2
		"kill.permissao", -- Permissão para matar qualquer ID
		"reset.permissao", -- Permissão para resetar personagens
		"carregarh.permissao", -- Permissão para Carregar os Players
		"vsync.permissao", -- Permissão para mexer com Tempo e Hora da cidade
		"spawncar.permissao",  -- Spawn de carros
		"god.permissao",  -- Permisão para Reviver
		"godall.permissao",  -- Permisão para Reviver todos do servidor
		"group.permissao", -- Permissão de Setagem
		"vgroup.permissao", -- Permissão para ver setagens globais
		"renomear.permissao", -- Permissão para resetar RG do cidadão
		"geral.permissao", -- Permissão que todos os STAFFs tem (Incuindo suporte)
		"addcar.permissao", -- Permissão para adicionar e remover carros
		"uncuff.permissao", -- Permissão para se desalgemar
		"skin.permissao", -- Permissão para setar skin
		"fix.permissao", -- Permissão para reparar o carro
		"tuning.permissao", -- Permissão para tunar o carro /tuning
		"wl.permissao", -- Permissão adicionar ou Remover Wl /wl /unwl
		"kick.permissao", -- Permissão para expulsar players da cidade
		"kickall.permissao", -- Permissão para expulsar TODOS da cidade
		"ban.permissao", -- Permissão para banir e desbanir players
		"money.permisao", -- Permissão para spawn de DIN no banco
		"noclip.permissao", -- Permissão para dar noclip
		"teleport.permissao", -- Permissão para os TPs
		"limparinv.permissao", -- Permissão para Limpar Inventário do player
		"tratamento.permissao", -- Permissão para dar tratamento e /re
		"spawnitem.permissao", -- Permissão para Spawn de ITEM
		"uservehs.permissao", -- Permissão para ver os carros que o Player tem
		"rg.permissao", -- Permissão para dar /rg
		"detido.permissao", -- Permissão para dar /detido
		"placa.permissao", -- Permissão para dar /placa
		"prender.permissao", -- Permissão para Prender
		"clima.permissao", -- Permissão para mexer no Clima
		"time.permissão", -- Permissão para mexer nas horas /time
		"dv.permissao", -- Permissão para dar DV
		"tabletpm.permissao", -- Permissão para poder acessar o tablet policial
		"instagram.permissao", -- Permissão para adicionar verificado no Celular
		"coins.permissao", -- Permissão para adicionar COINS para os players
		"vroupas.permissao", -- Permissão para o uso do comando /vroupas
		"roupas.permissao", -- Permissão para poder usar os comandos de roupas
		"manager.permissao", -- Permissão exclusiva de manager
		"farda.recruta", -- Fardamento de Recruta
		"farda.soldado", -- Fardamento de Soldado
		"farda.cabo", -- Fardamento de Cabo
		"farda.sargento", -- Fardamento de Sargento
		"farda.subtenente", -- Fardamento de SubTenente
		"farda.tenente", -- Fardamento de Tenente
		"farda.capitao", -- Fardamento de Capitão
		"farda.major", -- Fardamento de Major
		"farda.tencoronel", -- Fardamento de TenCoronel
		"farda.coronel", -- Fardamento de Coronel
		"managersrv.permissao", -- Permissão para sair de serviço STAFF
	},
	
	["ManagerAP"] = {
		_config = {
			title = "Manager OFF",
			gtype = "staff"
		},
		"managerp.permissao" -- Permissão para entrar de serviço STAFF

	},

	["Administrador"] = {
		_config = {
			title = "Administrador",
			gtype = "staff"
		},
		"retirarAdm.permissao", -- Permissão para retirar itens de qualquer baú de FAC ou ORG
		"baus.permissao", -- Permissão para acessar qualquer baú de FAC ou ORG
		"antiafk.permissao", -- Permissão para não ser kickado por estar AFK
		"roupas.permissao", -- Permissão para poder usar os comandos de roupas
		"cor.permissao", -- Permissão para colocar cor nas armas
		"animacao.permissao", -- Permissão para usar o /e2
		"kill.permissao", -- Permissão para matar qualquer ID
		"reset.permissao", -- Permissão para resetar personagens
		"vsync.permissao", -- Permissão para mexer com Tempo e Hora da cidade
		"spawncar.permissao", -- Spawn de carros
		"god.permissao",  -- Permisão para Reviver
		"godall.permissao",  -- Permisão para Reviver todos do servidor
		"group.permissao", -- Permissão de Setagem
		"vgroup.permissao", -- Permissão para ver setagens globais
		"renomear.permissao", -- Permissão para resetar RG do cidadão
		"geral.permissao", -- Permissão que todos os STAFFs tem (Incuindo suporte)
		"addcar.permissao", -- Permissão para adicionar e remover carros
		"uncuff.permissao", -- Permissão para se desalgemar
		"skin.permissao", -- Permissão para setar skin
		"fix.permissao", -- Permissão para reparar o carro
		"tuning.permissao", -- Permissão para tunar o carro /tuning
		"wl.permissao", -- Adicionar ou Remover Wl /wl /unwl
		"kick.permissao", -- Permissão para expulsar players da cidade
		"kickall.permissao", -- Permissão para expulsar TODOS da cidade
		"ban.permissao", -- Permissão para banir e desbanir players
		"noclip.permissao", -- Permissão para dar noclip
		"teleport.permissao", -- Permissão para os TPs
		"limparinv.permissao", -- Permissão para Limpar Inventário do player
		"tratamento.permissao", -- Permissão para dar tratamento e /re
		"spawnitem.permissao", -- Permissão para Spawn de ITEM
		"uservehs.permissao", -- Permissão para ver os carros que o Player tem
		"rg.permissao", -- Permissão para dar /rg
		"placa.permissao", -- Permissão para dar /placa
		"detido.permissao", -- Permissão para dar /detido
		"prender.permissao", -- Permissão para Prender
		"carregarh.permissao", -- Permissão para carregar no H
		"clima.permissao", -- Permissão para mexer no Clima
		"time.permissão", -- Permissão para mexer nas horas /time
		"dv.permissao", -- Permissão para dar DV
		"tabletpm.permissao", -- Permissão para poder acessar o tablet policial
		"instagram.permissao", -- Permissão para adicionar verificado no Celular
		"coins.permissao", -- Permissão para adicionar COINS para os players
		"vroupas.permissao", -- Permissão para o uso do comando /vroupas
		"administrador.permissao", -- Permissão esclusiva para o administrador
		"farda.recruta", -- Fardamento de Recruta
		"farda.soldado", -- Fardamento de Soldado
		"farda.cabo", -- Fardamento de Cabo
		"farda.sargento", -- Fardamento de Sargento
		"farda.subtenente", -- Fardamento de SubTenente
		"farda.tenente", -- Fardamento de Tenente
		"farda.capitao", -- Fardamento de Capitão
		"farda.major", -- Fardamento de Major
		"farda.tencoronel", -- Fardamento de TenCoronel
		"farda.coronel", -- Fardamento de Coronel
		"administradorsrv.permissao" -- Permissão para sair de serviço STAFF
	},
	["AdministradorAP"] = {
		_config = {
			title = "Administrador OFF",
			gtype = "staff"
		},
		"administradorp.permissao" -- Permissão para entrar de serviço STAFF

	},

	["Moderador"] = {
		_config = {
			title = "Moderador(a)",
			gtype = "staff"
		},
		"cor.permissao", -- Permissão para colocar cor nas armas
		"animacao.permissao", -- Permissão para usar o /e2
		"kill.permissao", -- Permissão para matar qualquer ID
		"god.permissao",  -- Permisão para Reviver
		"group.permissao", -- Permissão de Setagem
		"vgroup.permissao", -- Permissão para ver setagens globais
		"geral.permissao", -- Permissão que todos os STAFFs tem (Incuindo suporte)
		"uncuff.permissao", -- Permissão para se desalgemar
		"fix.permissao", -- Permissão para reparar o carro
		"wl.permissao", -- Adicionar ou Remover Wl /wl /unwl
		"kick.permissao", -- Permissão para expulsar players da cidade
		"ban.permissao", -- Permissão para banir e desbanir players
		"noclip.permissao", -- Permissão para dar noclip
		"teleport.permissao", -- Permissão para os TPs
		"limparinv.permissao", -- Permissão para Limpar Inventário do player
		"tratamento.permissao", -- Permissão para dar tratamento e /re
		"uservehs.permissao", -- Permissão para ver os carros que o Player tem
		"rg.permissao", -- Permissão para dar /rg
		"spawncar.permissao", -- Spawn de carros
		"placa.permissao", -- Permissão para dar /placa
		"detido.permissao", -- Permissão para dar /detido
		"carregarh.permissao", -- Permissão para carregar no H
		"dv.permissao", -- Permissão para dar DV
		"renomear.permissao", -- Permissão para resetar RG do cidadão
		"vroupas.permissao", -- Permissão para o uso do comando /vroupas
		"moderador.permissao",
		"moderadorsrv.permissao" -- Permissão para sair de serviço STAFF
	},
	["ModeradorAP"] = {
		_config = {
			title = "Moderador OFF",
			gtype = "staff"
		},
		"moderadorp.permissao" -- Permissão para entrar de serviço STAFF

	},
	["Suporte"] = {
		_config = {
			title = "Suporte",
			gtype = "staff"
		},
		"animacao.permissao", -- Permissão para usar o /e2
		"geral.permissao", -- Permissão que todos os STAFFs tem (Incuindo suporte)
		"god.permissao",  -- Permisão para Reviver
		"fix.permissao", -- Permissão para reparar o carro
		"wl.permissao", -- Adicionar ou Remover Wl /wl /unwl
		"kick.permissao", -- Permissão para expulsar players da cidade
		"noclip.permissao", -- Permissão para dar noclip
		"teleport.permissao", -- Permissão para os TPs
		"rg.permissao", -- Permissão para dar /rg
		"carregarh.permissao", -- Permissão para carregar no H
		"dv.permissao", -- Permissão para dar DV
		"renomear.permissao", -- Permissão para resetar RG do cidadão
		"vroupas.permissao", -- Permissão para o uso do comando /vroupas
		"suporte.permissao",
		"suportesrv.permissao" -- Permissão para sair de serviço STAFF
	},
	["SuporteAP"] = {
		_config = {
			title = "Suporte OFF",
			gtype = "staff"
		},
		"suportep.permissao" -- Permissão para entrar de serviço STAFF

	},
	--[	Civil ]------------------------------------------------
	
	["civil"] = {
		_config = {
			title = "CIVIL",
			gtype = "job"
		},
		"civil.permissao",
		"portas.permissao"
	},
	["Taxista"] = {
		_config = {
			title = "Taxista",
			gtype = "job2"
		},
		"taxista.permissao",
		"portas.permissao"
	},

	--[	Cargos Policiais ]------------------------------------------------

	["Recruta"] = {
		_config = {
			title = "Recruta",
			gtype = "job"
		},
		"portas.permissao",
		"recruta.permissao",
		"carropm.permissao",
		"disparos.permissao",
		"farda.recruta", -- Fardamento de Recruta
		"detido.permissao", -- Permissão para dar /detido
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"baupolicia.permissao", -- Acesso ao Baú
		"multar.permissao", -- Permissão para dar multas
		"loc.permissao", -- Permissão para enviar e receber loc
		"rg.permissao", -- Permissão para dar /rg
		"placa.permissao", -- Permissão para dar /placa
		"prender.permissao", -- Permissão para Prender
		"algemar.permissao", -- Permissão para algemar
		"carregarh.permissao", -- Permissão para carregar no H
		"tabletpm.permissao", -- Permissão para poder acessar o tablet policial
		"policia.permissao",
		"ptr.permissao"
	},

	["RecrutaAP"] = {
		_config = {
			title = "Recruta AP",
			gtype = "job"
		},
		"portas.permissao",
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"recrutaAP.permissao",
		"policiapaisana.permissao"
	},
	------------------------------------------------
	["Soldado"] = {
		_config = {
			title = "Soldado",
			gtype = "job"
		},
		"portas.permissao",
		"soldado.permissao",
		"disparos.permissao",
		"policia.permissao",
		"ptr.permissao",
		"farda.soldado", -- Fardamento de Soldado
		"detido.permissao", -- Permissão para dar /detido
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"baupolicia.permissao", -- Acesso ao Baú
		"carregarh.permissao", -- Permissão para carregar no H
		"algemar.permissao", -- Permissão para algemar
		"prender.permissao", -- Permissão para Prender
		"multar.permissao", -- Permissão para dar multas
		"loc.permissao", -- Permissão para enviar e receber loc
		"placa.permissao", -- Permissão para dar /placa
		"rg.permissao", -- Permissão para dar /rg
		"tabletpm.permissao" -- Permissão para poder acessar o tablet policial
	},

	["SoldadoAP"] = {
		_config = {
			title = "Soldado AP",
			gtype = "job"
		},
		"portas.permissao",
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"soldadoAP.permissao",
		"policiapaisana.permissao"
	},
	------------------------------------------------
	["Cabo"] = {
		_config = {
			title = "Cabo",
			gtype = "job"
		},
		"portas.permissao",
		"cabo.permissao",
		"carropm.permissao",
		"disparos.permissao",
		"policia.permissao",
		"ptr.permissao",
		"detido.permissao", -- Permissão para dar /detido
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"baupolicia.permissao", -- Acesso ao Baú
		"carregarh.permissao", -- Permissão para carregar no H
		"algemar.permissao", -- Permissão para algemar
		"prender.permissao", -- Permissão para Prender
		"multar.permissao", -- Permissão para dar multas
		"loc.permissao", -- Permissão para enviar e receber loc
		"placa.permissao", -- Permissão para dar /placa
		"rg.permissao", -- Permissão para dar /rg
		"tabletpm.permissao", -- Permissão para poder acessar o tablet policial
		"farda.cabo", -- Fardamento de Cabo
		"baupolicia.permissao"
	},
	["CaboAP"] = {
		_config = {
			title = "Cabo AP",
			gtype = "job"
		},
		"portas.permissao",
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"caboAP.permissao",
		"policiapaisana.permissao"
	},
	------------------------------------------------
	["3Sargento"] = {
		_config = {
			title = "3ºSargento",
			gtype = "job"
		},
		"portas.permissao",
		"3sargento.permissao",
		"disparos.permissao",
		"policia.permissao",
		"carropm.permissao",
		"detido.permissao", -- Permissão para dar /detido
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"baupolicia.permissao", -- Acesso ao Baú
		"carregarh.permissao", -- Permissão para carregar no H
		"algemar.permissao", -- Permissão para algemar
		"prender.permissao", -- Permissão para Prender
		"multar.permissao", -- Permissão para dar multas
		"loc.permissao", -- Permissão para enviar e receber loc
		"placa.permissao", -- Permissão para dar /placa
		"rg.permissao", -- Permissão para dar /rg
		"tabletpm.permissao", -- Permissão para poder acessar o tablet policial
		"ptr.permissao",
		"farda.sargento", -- Fardamento de Sargento
		"baupolicia.permissao"
	},

	["3SargentoAP"] = {
		_config = {
			title = "3º Sargento AP",
			gtype = "job"
		},
		"portas.permissao",
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"3sargentoAP.permissao",
		"policiapaisana.permissao"
	},
	------------------------------------------------
	["2Sargento"] = {
		_config = {
			title = "2º Sargento",
			gtype = "job"
		},
		"portas.permissao",
		"2sargento.permissao",
		"carropm.permissao",
		"disparos.permissao",
		"policia.permissao",
		"detido.permissao", -- Permissão para dar /detido
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"baupolicia.permissao", -- Acesso ao Baú
		"carregarh.permissao", -- Permissão para carregar no H
		"algemar.permissao", -- Permissão para algemar
		"prender.permissao", -- Permissão para Prender
		"multar.permissao", -- Permissão para dar multas
		"loc.permissao", -- Permissão para enviar e receber loc
		"placa.permissao", -- Permissão para dar /placa
		"rg.permissao", -- Permissão para dar /rg
		"tabletpm.permissao", -- Permissão para poder acessar o tablet policial
		"farda.sargento", -- Fardamento de Sargento
		"ptr.permissao",
		"baupolicia.permissao"
	},

	["2SargentoAP"] = {
		_config = {
			title = "2º Sargento AP",
			gtype = "job"
		},
		"portas.permissao",
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"2sargentoAP.permissao",
		"policiapaisana.permissao"
	},
	------------------------------------------------
	["1Sargento"] = {
		_config = {
			title = "1º Sargento",
			gtype = "job"
		},
		"portas.permissao",
		"1sargento.permissao",
		"disparos.permissao",
		"policia.permissao",
		"carropm.permissao",
		"detido.permissao", -- Permissão para dar /detido
		"baupolicia.permissao", -- Acesso ao Baú
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"carregarh.permissao", -- Permissão para carregar no H
		"algemar.permissao", -- Permissão para algemar
		"prender.permissao", -- Permissão para Prender
		"multar.permissao", -- Permissão para dar multas
		"loc.permissao", -- Permissão para enviar e receber loc
		"placa.permissao", -- Permissão para dar /placa
		"rg.permissao", -- Permissão para dar /rg
		"tabletpm.permissao", -- Permissão para poder acessar o tablet policial
		"farda.sargento", -- Fardamento de Sargento
		"ptr.permissao",
		"baupolicia.permissao"
	},

	["1SargentoAP"] = {
		_config = {
			title = "1º Sargento AP",
			gtype = "job"
		},
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"portas.permissao",
		"1sargentoAP.permissao",
		"policiapaisana.permissao"
	},
	------------------------------------------------

	["Subtenente"] = {
		_config = {
			title = "SubTenente",
			gtype = "job"
		},
		"portas.permissao",
		"subtenente.permissao",
		"disparos.permissao",
		"policia.permissao",
		"detido.permissao", -- Permissão para dar /detido
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"baupolicia.permissao", -- Acesso ao Baú
		"carregarh.permissao", -- Permissão para carregar no H
		"algemar.permissao", -- Permissão para algemar
		"prender.permissao", -- Permissão para Prender
		"multar.permissao", -- Permissão para dar multas
		"loc.permissao", -- Permissão para enviar e receber loc
		"placa.permissao", -- Permissão para dar /placa
		"rg.permissao", -- Permissão para dar /rg
		"tabletpm.permissao", -- Permissão para poder acessar o tablet policial
		"farda.subtenente", -- Fardamento de SubTenente
		"carropm.permissao",
		"ptr.permissao",
		"baupolicia.permissao"
	},

	["SubtenenteAP"] = {
		_config = {
			title = "Tenente AP",
			gtype = "job"
		},
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"portas.permissao",
		"subtenenteAP.permissao",
		"policiapaisana.permissao"
	},
	------------------------------------------------

	["Tenente"] = {
		_config = {
			title = "Tenente",
			gtype = "job"
		},
		"portas.permissao",
		"tenente.permissao",
		"carropm.permissao",
		"disparos.permissao",
		"policia.permissao",
		"detido.permissao", -- Permissão para dar /detido
		"baupolicia.permissao", -- Acesso ao Baú
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"carregarh.permissao", -- Permissão para carregar no H
		"algemar.permissao", -- Permissão para algemar
		"prender.permissao", -- Permissão para Prender
		"multar.permissao", -- Permissão para dar multas
		"loc.permissao", -- Permissão para enviar e receber loc
		"placa.permissao", -- Permissão para dar /placa
		"rg.permissao", -- Permissão para dar /rg
		"tabletpm.permissao", -- Permissão para poder acessar o tablet policial
		"farda.tenente", -- Fardamento de Tenente
		"ptr.permissao",
		"baupolicia.permissao"
	},

	["TenenteAP"] = {
		_config = {
			title = "Tenente AP",
			gtype = "job"
		},
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"portas.permissao",
		"tenenteAP.permissao",
		"policiapaisana.permissao"
	},
------------------------------------------------
	["Capitao"] = {
		_config = {
			title = "Capitão",
			gtype = "job"
		},
		"portas.permissao",
		"capitao.permissao",
		"disparos.permissao",
		"policia.permissao",
		"detido.permissao", -- Permissão para dar /detido
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"baupolicia.permissao", -- Acesso ao Baú
		"carregarh.permissao", -- Permissão para carregar no H
		"algemar.permissao", -- Permissão para algemar
		"prender.permissao", -- Permissão para Prender
		"multar.permissao", -- Permissão para dar multas
		"loc.permissao", -- Permissão para enviar e receber loc
		"placa.permissao", -- Permissão para dar /placa
		"rg.permissao", -- Permissão para dar /rg
		"tabletpm.permissao", -- Permissão para poder acessar o tablet policial
		"farda.capitao", -- Fardamento de Capitão
		"carropm.permissao",
		"ptr.permissao",
		"baupolicia.permissao"
	},

	["CapitaoAP"] = {
		_config = {
			title = "Capitaão AP",
			gtype = "job"
		},
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"portas.permissao",
		"capitaoAP.permissao",
		"policiapaisana.permissao"
	},
------------------------------------------------
	["Major"] = {
		_config = {
			title = "Major",
			gtype = "job"
		},
		"portas.permissao",
		"major.permissao",
		"detido.permissao", -- Permissão para dar /detido
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"baupolicia.permissao", -- Acesso ao Baú
		"carregarh.permissao", -- Permissão para carregar no H
		"algemar.permissao", -- Permissão para algemar
		"prender.permissao", -- Permissão para Prender
		"multar.permissao", -- Permissão para dar multas
		"loc.permissao", -- Permissão para enviar e receber loc
		"placa.permissao", -- Permissão para dar /placa
		"rg.permissao", -- Permissão para dar /rg
		"tabletpm.permissao", -- Permissão para poder acessar o tablet policial

		"carropm.permissao",
		"disparos.permissao",
		"policia.permissao",
		"ptr.permissao",
		"farda.major", -- Fardamento de Major
		"baupolicia.permissao"
	},

	["MajorAP"] = {
		_config = {
			title = "Major AP",
			gtype = "job"
		},
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"portas.permissao",
		"majorAP.permissao",
		"policiapaisana.permissao"
	},
	------------------------------------------------
	["Tencoronel"] = {
		_config = {
			title = "Tenente Coronel",
			gtype = "job"
		},
		"portas.permissao",
		"tcel.permissao",
		"carropm.permissao",
		"disparos.permissao",
		"policia.permissao",
		"detido.permissao", -- Permissão para dar /detido
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"baupolicia.permissao", -- Acesso ao Baú
		"carregarh.permissao", -- Permissão para carregar no H
		"algemar.permissao", -- Permissão para algemar
		"prender.permissao", -- Permissão para Prender
		"multar.permissao", -- Permissão para dar multas
		"loc.permissao", -- Permissão para enviar e receber loc
		"placa.permissao", -- Permissão para dar /placa
		"rg.permissao", -- Permissão para dar /rg
		"tabletpm.permissao", -- Permissão para poder acessar o tablet policial
		"farda.tencoronel", -- Fardamento de TenCoronel
		"ptr.permissao",
		"baupolicia.permissao"
	},

	["TencoronelAP"] = {
		_config = {
			title = "Tenente Coronel AP",
			gtype = "job"
		},
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"portas.permissao",
		"tcelAP.permissao",
		"policiapaisana.permissao"
	},
	------------------------------------------------
	["Coronel"] = {
		_config = {
			title = "Coronel",
			gtype = "job"
		},
		"portas.permissao",
		"detido.permissao", -- Permissão para dar /detido
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"baupolicia.permissao", -- Acesso ao Baú
		"carregarh.permissao", -- Permissão para carregar no H
		"algemar.permissao", -- Permissão para algemar
		"prender.permissao", -- Permissão para Prender
		"multar.permissao", -- Permissão para dar multas
		"loc.permissao", -- Permissão para enviar e receber loc
		"placa.permissao", -- Permissão para dar /placa
		"rg.permissao", -- Permissão para dar /rg
		"tabletpm.permissao", -- Permissão para poder acessar o tablet policial
		"farda.coronel", -- Fardamento de Coronel
		"coronel.permissao",
		"disparos.permissao",
		"policia.permissao",
		"carropm.permissao",
		'retirarbau.permissao',
		"ptr.permissao",
		"baupolicia.permissao"
	},

	["CoronelAP"] = {
		_config = {
			title = "Coronel AP",
			gtype = "job"
		},
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"portas.permissao",
		"coronelAP.permissao",
		"policiapaisana.permissao"
	},
	------------------------------------------------

	["Subcomandante"] = {
		_config = {
			title = "Sub Comandante",
			gtype = "job"
		},
		"portas.permissao",
		"subcomandante.permissao",
		"disparos.permissao",
		"policia.permissao",
		"farda.recruta", -- Fardamento de Recruta
		"farda.soldado", -- Fardamento de Soldado
		"farda.cabo", -- Fardamento de Cabo
		"farda.sargento", -- Fardamento de Sargento
		"farda.subtenente", -- Fardamento de SubTenente
		"farda.tenente", -- Fardamento de Tenente
		"farda.capitao", -- Fardamento de Capitão
		"farda.major", -- Fardamento de Major
		"farda.tencoronel", -- Fardamento de TenCoronel
		"farda.coronel", -- Fardamento de Coronel
		"detido.permissao", -- Permissão para dar /detido
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"baupolicia.permissao", -- Acesso ao Baú
		"carregarh.permissao", -- Permissão para carregar no H
		"algemar.permissao", -- Permissão para algemar
		"prender.permissao", -- Permissão para Prender
		"multar.permissao", -- Permissão para dar multas
		"loc.permissao", -- Permissão para enviar e receber loc
		"placa.permissao", -- Permissão para dar /placa
		"rg.permissao", -- Permissão para dar /rg
		"tabletpm.permissao", -- Permissão para poder acessar o tablet policial
		'retirarbau.permissao',
		"carropm.permissao",
		"ptr.permissao",
		"baupolicia.permissao"
	},
	

	["SubcomandanteAP"] = {
		_config = {
			title = "Sub Comandante AP",
			gtype = "job"
		},
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"portas.permissao",
		"subcomandanteAP.permissao",
		"policiapaisana.permissao"
	},
	------------------------------------------------

	["Comandante"] = {
		_config = {
			title = "Comandante",
			gtype = "job"
		},
		"portas.permissao",
		"comandante.permissao",
		"carropm.permissao",
		'retirarbau.permissao',
		"farda.recruta", -- Fardamento de Recruta
		"farda.soldado", -- Fardamento de Soldado
		"farda.cabo", -- Fardamento de Cabo
		"farda.sargento", -- Fardamento de Sargento
		"farda.subtenente", -- Fardamento de SubTenente
		"farda.tenente", -- Fardamento de Tenente
		"farda.capitao", -- Fardamento de Capitão
		"farda.major", -- Fardamento de Major
		"farda.tencoronel", -- Fardamento de TenCoronel
		"farda.coronel", -- Fardamento de Coronel
		"detido.permissao", -- Permissão para dar /detido
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"baupolicia.permissao", -- Acesso ao Baú
		"carregarh.permissao", -- Permissão para carregar no H
		"algemar.permissao", -- Permissão para algemar
		"prender.permissao", -- Permissão para Prender
		"multar.permissao", -- Permissão para dar multas
		"loc.permissao", -- Permissão para enviar e receber loc
		"placa.permissao", -- Permissão para dar /placa
		"rg.permissao", -- Permissão para dar /rg
		"tabletpm.permissao", -- Permissão para poder acessar o tablet policial

		"disparos.permissao",
		"ptr.permissao",
		"policia.permissao",
		"baupolicia.permissao"
	},
	

	["ComandanteAP"] = {
		_config = {
			title = "Comandante AP",
			gtype = "job"
		},
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"portas.permissao",
		"comandanteAP.permissao",
		"policiapaisana.permissao"
	},
	--[	Cargos Mecanicos ] --------------------------------------------------------
	--------------------------------------------------------
	
		["Mecanico"] = {
			_config = {
				title = "Mecanico",
				gtype = "job"
			},
			"portas.permissao",
			'mecanico.permissao',
			'mecanico1.permissao',
			"baumec.permissao",
			"reparar.permissao",
			"carromecanico.permissao",
			"toogle.permissao", -- Permissão de acesso ao Blip de serviço
			"funcionariomec.permissao"
		},
	
		["MecanicoAP"] = {
			_config = {
				title = "Mecanico AP",
				gtype = "job"
			},
			"toogle.permissao", -- Permissão de acesso ao Blip de serviço
			"portas.permissao",
			"mecanicoAP.permissao"
		},
	--------------------------------------------------------
	
		["Estagiariomec"] = {
			_config = {
				title = "Mecanico Estagiario",
				gtype = "job"
			},
			"portas.permissao",
			"baumec.permissao",
			"estagiomec.permissao",
			"mecanico.permissao",
			"reparar.permissao",
			"toogle.permissao", -- Permissão de acesso ao Blip de serviço
			"carromecanico.permissao"
		},
	
		["EstagiariomecAP"] = {
			_config = {
				title = "Mecanico Estagiario AP",
				gtype = "job"
			},
			"toogle.permissao", -- Permissão de acesso ao Blip de serviço
			"portas.permissao",
			"estagiariomecAP.permissao"
		},
	--------------------------------------------------------
	
		["Gerentemec"] = {
			_config = {
				title = "Mecanico Gerente",
				gtype = "job"
			},
			"portas.permissao",
			"gerentemec.permissao",
			"baumec.permissao",
			"mecanico.permissao",
			"reparar.permissao",
			"toogle.permissao", -- Permissão de acesso ao Blip de serviço
			"carromecanico.permissao"
		},
	
		["GerentemecAP"] = {
			_config = {
				title = "Mecanico Gerente AP",
				gtype = "job"
			},
			"toogle.permissao", -- Permissão de acesso ao Blip de serviço
			"portas.permissao",
			"gerentemecAP.permissao"
		},
	
		["Lidermec"] = {
			_config = {
				title = "Mecanico Chefe",
				gtype = "job"
			},
			"portas.permissao",
			'lidermec.permissao',
			'retirarbau.permissao',
			"baumec.permissao",
			"mecanico.permissao",
			"reparar.permissao",
			"toogle.permissao", -- Permissão de acesso ao Blip de serviço
			"carromecanico.permissao"
		},
	
		["LidermecAP"] = {
			_config = {
				title = "Mecanico Chefe AP",
				gtype = "job"
			},
			"toogle.permissao", -- Permissão de acesso ao Blip de serviço
			"portas.permissao",
			"lidermecanicoAP.permissao"
		},

	--[	Cargos Hospitalares ] 	--------------------------------------------------------
	--------------------------------------------------------
	
	["Enfermeiroems"] = {
		_config = {
			title = "Enfermeiro EMS",
			gtype = "job"
		},
		"portas.permissao",
		"garagemhp.permissao",
		'enfermeiroems.permissao',
		"bauhp.permissao",
		"ems.permissao",
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"carregarh.permissao"
	},
	
	["EnfermeiroemsAP"] = {
		_config = {
			title = "Enfermeiro EMS AP",
			gtype = "job"
		},
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"portas.permissao",
		"enfermeiroemsAP.permissao"
	},
	--------------------------------------------------------
	
	["Medicoems"] = {
		_config = {
			title = "Médico EMS",
			gtype = "job"
		},
		"portas.permissao",
		"garagemhp.permissao",
		'medicoems.permissao',
		"bauhp.permissao",
		"ems.permissao",
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"carregarh.permissao"
	},
	
	["MedicoemsAP"] = {
		_config = {
			title = "Médico EMS AP",
			gtype = "job"
		},
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"portas.permissao",
		"medicoemsAP.permissao"
	},
	--------------------------------------------------------
	
	["Paramedicoems"] = {
		_config = {
			title = "Paramedico EMS",
			gtype = "job"
		},
		"portas.permissao",
		"garagemhp.permissao",
		'paramedicoems.permissao',
		"bauhp.permissao",
		"ems.permissao",
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"carregarh.permissao"
	},
	
	["ParamedicoemsAP"] = {
		_config = {
			title = "Paramedico EMS AP",
			gtype = "job"
		},
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"portas.permissao",
		"paramedicoemsAP.permissao"
	},
	--------------------------------------------------------
	
	["Vicediretorems"] = {
		_config = {
			title = "Vice Diretor EMS",
			gtype = "job"
		},
		"portas.permissao",
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"garagemhp.permissao",
		'vicediretorems.permissao',
		"bauhp.permissao",
		"ems.permissao",
		"carregarh.permissao"
	},
	
	["VicediretoremsAP"] = {
		_config = {
			title = "Vice Diretor EMS AP",
			gtype = "job"
		},
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"portas.permissao",
		'retirarbau.permissao',
		"vicediretoremsAP.permissao"
	},
	--------------------------------------------------------
	
	["Diretorems"] = {
		_config = {
			title = "Diretor EMS",
			gtype = "job"
		},
		"portas.permissao",
		"garagemhp.permissao",
		'diretorems.permissao',
		"bauhp.permissao",
		"ems.permissao",
		'retirarbau.permissao',
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"carregarh.permissao"
	},
	
	["DiretoremsAP"] = {
		_config = {
			title = "Diretor EMS AP",
			gtype = "job"
		},
		"toogle.permissao", -- Permissão de acesso ao Blip de serviço
		"portas.permissao",
		"diretoremsAP.permissao"
	},

	-------------------------------------------
	--[	Cargos do Ilegal ] --------------------------------------------------------
	-------------------------------------------
	---------------[serpentes]-----------------
	-------------------------------------------
	["Liderserpentes"] = {
		_config = {
			title = "Lider Serpentes",
			gtype = "job"
		},
		"liderserpentes.permissao",
		"serpentes.permissao",
		"bauserpentes.permissao",
		'retirarbau.permissao',
		"portas.permissao"
	},

	["Gerenteserpentes"] = {
		_config = {
			title = "Gerente Serpentes",
			gtype = "job"
		},
		"gerenteserpentes.permissao",
		"serpentes.permissao",
		"bauserpentes.permissao",
		"portas.permissao"
	},
	["serpentes"] = {
		_config = {
			title = "Serpentes Membro",
			gtype = "job"
		},
		"serpentes.permissao",
		"bauserpentes.permissao",
		"portas.permissao"
	},

	-------------------------------------------
	---------------[Máfia Russa]---------------
	-------------------------------------------
    ["Lidermafia"] = {
        _config = {
            title = "Líder Máfia Russa",
            gtype = "job"
        },
        "lidermafia.permissao",
        "mafia.permissao",
		'retirarbau.permissao',
        "baumafia.permissao",
        "portas.permissao"
    },
	
    ["Gerentemafia"] = {
        _config = {
            title = "Gerente Máfia Russa",
            gtype = "job"
        },
        "Gerentemafia.permissao",
        "mafia.permissao",
        "baumafia.permissao",
        "portas.permissao"
    },
	
    ["Mafia"] = {
        _config = {
            title = "Máfia Russa Membro",
            gtype = "job"
        },
        "mafia.permissao",
        "baumafia.permissao",
        "portas.permissao"
    },
	-------------------------------------------
	---------------[ Vermelhos ]---------------
	-------------------------------------------
	["Lidervermelhos"] = {
        _config = {
            title = "Líder Vermelhos",
            gtype = "job",
			onjoin = function(player)
				local user_id = vRP.getUserId(player)
				if user_id then
					vRP.addUserGroup(user_id,"Vermelhosdominacao")
				end
			end,
			onleave = function(player)
				local user_id = vRP.getUserId(player)
				if user_id then
					vRP.removeUserGroup(user_id,"Vermelhosdominacao")
				end
			end
        },
        "lidervermelhos.permissao",
        "vermelhos.permissao",
		'retirarbau.permissao',
        "bauvermelhos.permissao",
		"vender.drogas",
        "portas.permissao"
    },

    ["Gerentevermelhos"] = {
        _config = {
            title = "Gerente Vermelhos",
            gtype = "job",
			onjoin = function(player)
				local user_id = vRP.getUserId(player)
				if user_id then
					vRP.addUserGroup(user_id,"Vermelhosdominacao")
				end
			end,
			onleave = function(player)
				local user_id = vRP.getUserId(player)
				if user_id then
					vRP.removeUserGroup(user_id,"Vermelhosdominacao")
				end
			end
        },
        "lidervermelhos.permissao",
        "vermelhos.permissao",
        "bauvermelhos.permissao",
		"vender.drogas",
        "portas.permissao"
    },

    ["Vermelhos"] = {
        _config = {
            title = "Vermelhos Membro",
            gtype = "job",
			onjoin = function(player)
				local user_id = vRP.getUserId(player)
				if user_id then
					vRP.addUserGroup(user_id,"Vermelhosdominacao")
				end
			end,
			onleave = function(player)
				local user_id = vRP.getUserId(player)
				if user_id then
					vRP.removeUserGroup(user_id,"Vermelhosdominacao")
				end
			end
        },
        "vermelhos.permissao",
        "bauvermelhos.permissao",
		"vender.drogas",
        "portas.permissao"
    },
	---------[ Vermelhos Dominação ]-------------------
	["Vermelhosdominacao"] = {
		_config = {
			gtype = "gang",
		},
		"dominacao.permissao"
	},
	["Vermelhosterritorio"] = {
		"vermelhos.permissao"
	},
	---------------------------------------------------
    ---------------[Azuis Facção]----------------------
    ---------------------------------------------------
    ["Liderazuis"] = {
        _config = {
            title = "Líder Azuis",
            gtype = "job",
			onjoin = function(player)
				local user_id = vRP.getUserId(player)
				if user_id then
					vRP.addUserGroup(user_id,"Azuisdominacao")
				end
			end,
			onleave = function(player)
				local user_id = vRP.getUserId(player)
				if user_id then
					vRP.removeUserGroup(user_id,"Azuisdominacao")
				end
			end
        },
        "liderazuis.permissao",
        "azuis.permissao",
		'retirarbau.permissao',
        "bauazuis.permissao",
		"vender.drogas",
        "portas.permissao"
    },

    ["Gerenteazuis"] = {
        _config = {
            title = "Gerente Azuis",
            gtype = "job",
			onjoin = function(player)
				local user_id = vRP.getUserId(player)
				if user_id then
					vRP.addUserGroup(user_id,"Azuisdominacao")
				end
			end,
			onleave = function(player)
				local user_id = vRP.getUserId(player)
				if user_id then
					vRP.removeUserGroup(user_id,"Azuisdominacao")
				end
			end
        },
        "liderazuis.permissao",
        "azuis.permissao",
        "bauazuis.permissao",
		"vender.drogas",
        "portas.permissao"
    },
	
    ["Azuis"] = {
        _config = {
            title = "Azuis Membro",
            gtype = "job",
			onjoin = function(player)
				local user_id = vRP.getUserId(player)
				if user_id then
					vRP.addUserGroup(user_id,"Azuisdominacao")
				end
			end,
			onleave = function(player)
				local user_id = vRP.getUserId(player)
				if user_id then
					vRP.removeUserGroup(user_id,"Azuisdominacao")
				end
			end
        },
        "azuis.permissao",
        "bauazuis.permissao",
		"vender.drogas",
        "portas.permissao"
    },	
	---------[ Azuis Dominação ]----------------------
	["Azuisdominacao"] = {
		_config = {
			gtype = "gang",
		},
		"dominacao.permissao"
	},
	["Azuisterritorio"] = {
		"azuis.permissao"
	},
	---------------------------------------------------
    -----------------[LARANJAS]-------------------------
    ---------------------------------------------------
    ["Liderlaranjas"] = {
        _config = {
            title = "Líder Laranjas",
            gtype = "job",
			onjoin = function(player)
				local user_id = vRP.getUserId(player)
				if user_id then
					vRP.addUserGroup(user_id,"Laranjasdominacao")
				end
			end,
			onleave = function(player)
				local user_id = vRP.getUserId(player)
				if user_id then
					vRP.removeUserGroup(user_id,"Laranjasdominacao")
				end
			end
        },
		"liderlaranjas.permissao",
        "laranjas.permissao",
		'retirarbau.permissao',
        "baularanjas.permissao",
        "desmanche.permissao",
		"vender.drogas",
        "portas.permissao"
    },

	["Gerentelaranjas"] = {
        _config = {
            title = "Gerente Laranjas",
            gtype = "job",
			onjoin = function(player)
				local user_id = vRP.getUserId(player)
				if user_id then
					vRP.addUserGroup(user_id,"Laranjasdominacao")
				end
			end,
			onleave = function(player)
				local user_id = vRP.getUserId(player)
				if user_id then
					vRP.removeUserGroup(user_id,"Laranjasdominacao")
				end
			end
        },
		"gerentelaranjas.permissao",
        "laranjas.permissao",
        "baularanjas.permissao",
        "desmanche.permissao",
		"vender.drogas",
        "portas.permissao"
    },

    ["Laranjas"] = {
		_config = {
			title = "Laranjas Membro",
            gtype = "job",
			onjoin = function(player)
				local user_id = vRP.getUserId(player)
				if user_id then
					vRP.addUserGroup(user_id,"Laranjasdominacao")
				end
			end,
			onleave = function(player)
				local user_id = vRP.getUserId(player)
				if user_id then
					vRP.removeUserGroup(user_id,"Laranjasdominacao")
				end
			end
        },
        "laranjas.permissao",
        "baularanjas.permissao",
		"desmanche.permissao",
		"vender.drogas",
        "portas.permissao"
    },
	---------[ Laranjas Dominação ]----------------------
	["Laranjasdominacao"] = {
		_config = {
			gtype = "gang",
		},
		"dominacao.permissao"
	},
	["Laranjasterritorio"] = {
		"azuis.permissao"
	},
	-------------------------------------------
	-------------[ Triade ]----------------
	-------------------------------------------
    ["Lidertriade"] = {
        _config = {
            title = "Líder Triade ",
            gtype = "job"
        },
		"lidertriade.permissao",
        "triade.permissao",
		'retirarbau.permissao',
        "bautriade.permissao",
        "portas.permissao",
    },

	["Gerentetriade"] = {
        _config = {
            title = "Gerente Triade ",
            gtype = "job"
        },
		"gerentetriade.permissao",
        "triade.permissao",
        "bautriade.permissao",
        "portas.permissao",
    },

    ["Triade"] = {
        _config = {
            title = " Triade Membro",
            gtype = "job"
        },
        "triade.permissao",
        "bautriade.permissao",
        "portas.permissao",
    },
	-------------------------------------------
	---------------[Cartel]-------------------
	-------------------------------------------
    ["Lidercartel"] = {
        _config = {
            title = "Líder Cartel",
            gtype = "job"
        },
        "lidercartel.permissao",
		'retirarbau.permissao',
        "cartel.permissao",
        "baucartel.permissao",
        "portas.permissao"
    },

    ["Gerentecartel"] = {
        _config = {
            title = "Gerente Cartel",
            gtype = "job"
        },
        "Gerentecartel.permissao",
        "cartel.permissao",
        "baucartel.permissao",
        "portas.permissao"
    },

    ["Cartel"] = {
        _config = {
            title = "Cartel Membro",
            gtype = "job"
        },
        "cartel.permissao",
        "baucartel.permissao",
        "portas.permissao"
    },

	-------------------------------------------
	---------------[Anonymous]-----------------
	-------------------------------------------
	    ["Lideranonymous"] = {
        _config = {
            title = "Líder Anonymous",
            gtype = "job"
        },
        "lideranonymous.permissao",
		'retirarbau.permissao',
        "anonymous.permissao",
        "bauanonymous.permissao",
        "portas.permissao"
    },

    ["Gerenteanonymous"] = {
        _config = {
            title = "Gerente Anonymous",
            gtype = "job"
        },
        "Gerenteanonymous.permissao",
        "anonymous.permissao",
        "bauanonymous.permissao",
        "portas.permissao"
    },

    ["Anonymous"] = {
        _config = {
            title = "Anonymous Membro",
            gtype = "job"
        },
        "anonymous.permissao",
        "bauanonymous.permissao",
        "portas.permissao"
    },
	-------------------------------------------
	---------------[RUSSOS]-----------------
	-------------------------------------------
	    ["Liderrussos"] = {
        _config = {
            title = "Líder Russos",
            gtype = "job"
        },
        "liderrussos.permissao",
        "russos.permissao",
		'retirarbau.permissao',
        "baurussos.permissao",
        "portas.permissao"
    },

    ["Gerenterussos"] = {
        _config = {
            title = "Gerente Russos",
            gtype = "job"
        },
        "Gerenterussos.permissao",
        "russos.permissao",
        "baurussos.permissao",
        "portas.permissao"
    },

    ["Russos"] = {
        _config = {
            title = "Russos Membro",
            gtype = "job"
        },
        "russos.permissao",
        "baurussos.permissao",
        "portas.permissao"
    },
	-------------------------------------------
	---------------[The LOST]-------------------
	-------------------------------------------
    ["Liderthelost"] = {
        _config = {
            title = "Líder The Lost",
            gtype = "job"
        },
        "liderthelost.permissao",
        "thelost.permissao",
		'retirarbau.permissao',
        "bauthelost.permissao",
        "portas.permissao"
    },
    ---------------------------------------------------
    ["Gerentethelost"] = {
        _config = {
            title = "Gerente The Lost",
            gtype = "job"
        },
        "gerentehelost.permissao",
        "thelost.permissao",
        "bauthelost.permissao",
        "portas.permissao"
    },
    ---------------------------------------------------
    ["Thelost"] = {
        _config = {
            title = "The Lost Membro",
            gtype = "job"
        },
        "thelost.permissao",
        "bauthelost.permissao",
        "portas.permissao"
    },
	---------------------------------------------------
    ----------------- [ I.A.A ] -----------------------
    ---------------------------------------------------
    ["Lideriaa"] = {
        _config = {
            title = "Líder IAA",
            gtype = "job"
        },
		"lideriaa.permissao",
        "iaa.permissao",
		'retirarbau.permissao',
        "bauiaa.permissao",
        "portas.permissao"
    },

	["Gerenteiaa"] = {
        _config = {
            title = "Gerente IAA",
            gtype = "job"
        },
		"gerenteiaa.permissao",
        "iaa.permissao",
        "bauiaa.permissao",
        "portas.permissao"
    },

    ["Iaa"] = {
        _config = {
            title = "Iaa Membro",
            gtype = "job"
        },
        "iaa.permissao",
        "bauiaa.permissao",
        "portas.permissao"
    },

	--[	Organização de Lavagem e Bares  ]------------------------------
    ["Lidervanilla"] = {
        _config = {
            title = "Líder Vanilla",
            gtype = "job",
        },
		"lidervanilla.permissao",
        "vanilla.permissao",
		'retirarbau.permissao',
        "bauvanilla.permissao",
        "lavar.dinheiro",
        "portas.permissao"
    },
    ---------------------------------------------------
    ["Gerentevanilla"] = {
        _config = {
            title = "Gerente Vanilla",
            gtype = "job",
        },
		"gerentevanilla.permissao",
        "vanilla.permissao",
        "bauvanilla.permissao",
        "lavar.dinheiro",
        "portas.permissao"
    },
    ---------------------------------------------------
    ["Vanilla"] = {
        _config = {
            title = "Vanilla Membro",
            gtype = "job",
        },
        "vanilla.permissao",
        "bauvanilla.permissao",
        "lavar.dinheiro",
        "portas.permissao"
    },
    ---------------------------------------------------
    -----------------[Bahamas]-------------------------
    ---------------------------------------------------
    ["Liderbahamas"] = {
        _config = {
            title = "Líder Bahamas",
            gtype = "job"
        },
		"liderbahamas.permissao",
		'retirarbau.permissao',
        "bahamas.permissao",
        "baubahamas.permissao",
        "lavar.dinheiro",
        "portas.permissao"
    },
    ---------------------------------------------------
	["Gerentebahamas"] = {
        _config = {
            title = "Gerente Bahamas",
            gtype = "job"
        },
		"gerentebahamas.permissao",
        "bahamas.permissao",
        "baubahamas.permissao",
        "lavar.dinheiro",
        "portas.permissao"
    },
    ---------------------------------------------------
    ["Bahamas"] = {
        _config = {
            title = "Bahamas Membro",
            gtype = "job"
        },
        "bahamas.permissao",
        "baubahamas.permissao",
        "lavar.dinheiro",
        "portas.permissao"
    },

	---------------------------------------------------
    ----------------- [WEAZEL NEWS] -------------------
    ---------------------------------------------------
    ---------------------------------------------------
    ["Jornallider"] = {
        _config = {
            title = "Chefe News",
            gtype = "job"
        },
		"liderweazel.permissao",
        "weazel.permissao",
        "bauweazel.permissao",
		'retirarbau.permissao',
        "portas.permissao"
    },
    ---------------------------------------------------
	["Gerentejornal"] = {
        _config = {
            title = "Gerente News",
            gtype = "job"
        },
		"gerenteweazel.permissao",
        "weazel.permissao",
        "bauweazel.permissao",
        "portas.permissao"
    },
    ---------------------------------------------------
    ["Jornal"] = {
        _config = {
            title = "Func News",
            gtype = "job"
        },
        "weazel.permissao",
        "bauweazel.permissao",
        "portas.permissao"
    },
	---------------------------------------------------
	---------------- [Jurídico] -----------------------
	---------------------------------------------------
    ["Advogado"] = {
        _config = {
            title = "Advogado",
            gtype = "job2"
        },
        "advogado.permissao",
        "bauadv.permissao",
        "portas.permissao"
    },
    ["Juiz"] = {
        _config = {
            title = "Juiz",
            gtype = "job"
        },
        "juiz.permissao",
		'retirarbau.permissao',
        "bauadv.permissao",
        "portas.permissao"
    },
    ["Ministrostj"] = {
        _config = {
            title = "Ministro do STJ",
            gtype = "job"
        },
        "ministrostj.permissao",
        "bauadv.permissao",
		'retirarbau.permissao',
        "portas.permissao"
    },
    ["Ministrostf"] = {
        _config = {
            title = "Ministro do STF",
            gtype = "job"
        },
        "ministrostf.permissao",
        "bauadv.permissao",
		'retirarbau.permissao',
        "portas.permissao" 
    },
	-------------------------------------------------------------------
	--[	EMPREGOS COMUM ]-----------------------------------------------
	-------------------------------------------------------------------
    ["Leiteiro"] = {
        _config = {
            title = "Leiteiro",
            gtype = "jobTemp"
        },
        "leiteiro.permissao"
    },
    ["Lenhador"] = {
        _config = {
            title = "Lenhador",
            gtype = "jobTemp"
        },
        "lenhador.permissao"
    },
    ["Motorista"] = {
        _config = {
            title = "Motorista",
            gtype = "jobTemp"
        },
        "motorista.permissao"
    },
    ["ColetorGraos"] = {
        _config = {
            title = "ColetorGraos",
            gtype = "jobTemp"
        },
        "coletorgraos.permissao"
    },
    ["EntregadorGrao"] = {
        _config = {
            title = "EntregadorGrao",
            gtype = "jobTemp"
        },
        "entregadorgrao.permissao"
    },
    ["Minerador"] = {
        _config = {
            title = "Minerador",
            gtype = "jobTemp"
        },
        "minerador.permissao"
    },
    ["Ifood"] = {
        _config = {
            title = "Ifood",
            gtype = "jobTemp"
        },
        "ifood.permissao"
    },
    ["Pescador"] = {
        _config = {
            title = "Pescador",
            gtype = "jobTemp"
        },
        "pescador.permissao"
    },
    ["Carteiro"] = {
        _config = {
            title = "Carteiro",
            gtype = "jobTemp"
        },
        "carteiro.permissao"
    },
	-------------------------------------------------------------------
	--[	Vips ]---------------------------------------------------------
	-------------------------------------------------------------------
	["Elite"] = {
		_config = {
			title = "Elite",
			gtype = "vip3"
		},
		"vip.permissao",
		"attachs.permissao",
		"roupas.permissao",
		"som.permissao",
		"instagram.permissao",
		"mochila.permissao",
		"cor.permissao",
		"personagens.permissao",
		"instagram.permissao", -- Permissão para adicionar verificado no Celular
		"elite.permissao"
	},
	["Monster"] = {
		_config = {
			title = "Monster",
			gtype = "vip8"
		},
		"vip.permissao",
		"attachs.permissao",
		"instagram.permissao",
		"roupas.permissao",
		"cor.permissao",
		"som.permissao",
		"personagens.permissao",
		"instagram.permissao", -- Permissão para adicionar verificado no Celular
		"mochila.permissao",
		"monster.permissao"
	},
	["Supremo"] = {
		_config = {
			title = "Supremo",
			gtype = "vip7"
		},
		"vip.permissao",
		"instagram.permissao",
		"attachs.permissao",
		"roupas.permissao",
		"cor.permissao",
		"mochila.permissao",
		"som.permissao",
		"personagens.permissao",
		"supremo.permissao"
	},
	["Platina"] = {
		_config = {
			title = "Platina",
			gtype = "vip6"
		},
		"vip.permissao",
		"attachs.permissao",
		"instagram.permissao",
		"roupas.permissao",
		"cor.permissao",
		"som.permissao",
		"personagens.permissao",
		"mochila.permissao",
		"platina.permissao"
	},
	["Ouro"] = {
		_config = {
			title = "Ouro",
			gtype = "vip5"
		},
		"vip.permissao",
		"som.permissao",
		"roupas.permissao",
		"mochila.permissao",
		"attachs.permissao",
		"cor.permissao",
		"ouro.permissao"
	},
	["Prata"] = {
		_config = {
			title = "Prata",
			gtype = "vip4"
		},
		"vip.permissao",
		"som.permissao",
		"prata.permissao"
	},
	["Bronze"] = {
		_config = {
			title = "Bronze",
			gtype = "vip3"
		},
		"vip.permissao",
		"bronze.permissao"
	},
	["Streamer"] = {
		_config = {
			title = "Streamer",
			gtype = "vip2"
		},
		"vip.permissao",
		"attachs.permissao",
		"cor.permissao",
		"streamer.permissao"
	},
	["MultiChar"] = {
		_config = {
			title = "MultiChar",
			gtype = "MultiChar"
		},
		"multipersonagens.permissao"
	},
	["Spotify"] = {
		_config = {
			title = "Spotify",
			gtype = "vip1"
		},
		"som.permissao"
	},
	["Garagem2"] = {
		_config = {
			title = "Garagem2",
			gtype = "vip"
		},
		"garagem2.permissao"
	},
}