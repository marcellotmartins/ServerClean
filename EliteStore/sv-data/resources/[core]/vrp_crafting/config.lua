craft = {}
-------- SCRIPT AFETADO: VRP_CRAFTING

craft.list = {
	["mafiaCrafting"] = {
        ['coords'] = { {1405.86, 1138.05, 109.75} },
        ['text'] = "Mesa de Trabalho",
		["perm"] = "mafia.permissao",
		['skillbar'] = true,
		["list"] = {
			["WEAPON_SNSPISTOL"] = {
				["amount"] = 1,
				["destroy"] = true,
				["require"] = {
					["corpo-pistola"] = 1,
					["molas"] = 1,
					["placa-metal"] = 5,
					["gatilho"] = 1,
				}
			},
			["WEAPON_PISTOL_MK2"] = {
				["amount"] = 1,
				["destroy"] = true,
				["require"] = {
					["corpo-pistola"] = 1,
					["molas"] = 3,
					["placa-metal"] = 20,
					["gatilho"] = 1,
				}
			},
			["WEAPON_ASSAULTSMG"] = {
				["amount"] = 1,
				["destroy"] = true,
				["require"] = {
					["corpo-sub"] = 1,
					["molas"] = 8,
					["placa-metal"] = 20,
					["gatilho"] = 1,
				}
			},
			["WEAPON_SAWNOFFSHOTGUN"] = {
				["amount"] = 1,
				["destroy"] = true,
				["require"] = {
					["corpo-doze"] = 1,
					["molas"] = 8,
					["placa-metal"] = 20,
					["gatilho"] = 1,
				}
			},
			["WEAPON_ASSAULTRIFLE"] = {
				["amount"] = 1,
				["destroy"] = true,
				["require"] = {
					["corpo-fuzil"] = 1,
					["molas"] = 12,
					["placa-metal"] = 30,
					["gatilho"] = 1,
				}
			},
			["WEAPON_ASSAULTRIFLE_MK2"] = {
				["amount"] = 1,
				["destroy"] = true,
				["require"] = {
					["corpo-fuzil"] = 1,
					["molas"] = 12,
					["placa-metal"] = 30,
					["gatilho"] = 1,
				}
			},
		}
	},
	["cartelCrafting"] = {
        ['coords'] = { {-1205.76,295.81,69.7} },
        ['text'] = "Mesa de Trabalho",
		["perm"] = "gunners.permissao",
		['skillbar'] = true,
		["list"] = {
			["WEAPON_SNSPISTOL"] = {
				["amount"] = 1,
				["destroy"] = true,
				["require"] = {
					["corpo-pistola"] = 1,
					["molas"] = 1,
					["placa-metal"] = 5,
					["gatilho"] = 1,
				}
			},
			["WEAPON_PISTOL_MK2"] = {
				["amount"] = 1,
				["destroy"] = true,
				["require"] = {
					["corpo-pistola"] = 1,
					["molas"] = 3,
					["placa-metal"] = 20,
					["gatilho"] = 1,
				}
			},
			["WEAPON_ASSAULTSMG"] = {
				["amount"] = 1,
				["destroy"] = true,
				["require"] = {
					["corpo-sub"] = 1,
					["molas"] = 8,
					["placa-metal"] = 20,
					["gatilho"] = 1,
				}
			},
			["WEAPON_SAWNOFFSHOTGUN"] = {
				["amount"] = 1,
				["destroy"] = true,
				["require"] = {
					["corpo-doze"] = 1,
					["molas"] = 8,
					["placa-metal"] = 20,
					["gatilho"] = 1,
				}
			},
			["WEAPON_ASSAULTRIFLE"] = {
				["amount"] = 1,
				["destroy"] = true,
				["require"] = {
					["corpo-fuzil"] = 1,
					["molas"] = 12,
					["placa-metal"] = 30,
					["gatilho"] = 1,
				}
			},
			["WEAPON_ASSAULTRIFLE_MK2"] = {
				["amount"] = 1,
				["destroy"] = true,
				["require"] = {
					["corpo-fuzil"] = 1,
					["molas"] = 12,
					["placa-metal"] = 30,
					["gatilho"] = 1,
				}
			},
		}
	},
	["minerCrafting"] = {
        ['coords'] = { {1087.53,-2001.72,30.89} },
        ['text'] = "Fundir",
		['skillbar'] = true,
		["list"] = {
			["diamante"] = {
				["amount"] = 1,
				["destroy"] = true,
				["require"] = {
					["minerio-diamante"] = 3,
				}
			},
			["barra-ouro"] = {
				["amount"] = 1,
				["destroy"] = true,
				["require"] = {
					["minerio-ouro"] = 3,
				}
			},
			["barra-prata"] = {
				["amount"] = 1,
				["destroy"] = true,
				["require"] = {
					["minerio-prata"] = 3,
				}
			},
			["barra-ferro"] = {
				["amount"] = 1,
				["destroy"] = true,
				["require"] = {
					["minerio-ferro"] = 3,
				}
			},
		}
	},
	["mcCrafting"] = {
        ['coords'] = { {1397.83, 3635.83, 34.88} },
        ['text'] = "Mesa de Trabalho",
		['skillbar'] = true,
		["perm"] = "mc.permissao",
		["list"] = {
			["placa"] = {
				["amount"] = 1,
				["destroy"] = true,
				["require"] = {
					["placa-aluminio"] = 2,
				}
			},
			["furadeira"] = {
				["amount"] = 1,
				["destroy"] = true,
				["require"] = {
					["placa-aluminio"] = 3,
					["broca"] = 1,
				}
			},
			["serra"] = {
				["amount"] = 1,
				["destroy"] = true,
				["require"] = {
					["placa-aluminio"] = 3,
					["disco-serra"] = 1,
				}
			},
			["lockpick"] = {
				["amount"] = 1,
				["destroy"] = true,
				["require"] = {
					["placa-aluminio"] = 1,
				}
			},

			["WEAPON_PISTOL_AMMO"] = {
				["amount"] = 100,
				["destroy"] = true,
				["require"] = {
					["capsulas"] = 5,
					["polvora"] = 5,
				}
			},
			["WEAPON_SMG_AMMO"] = {
				["amount"] = 100,
				["destroy"] = true,
				["require"] = {
					["capsulas"] = 10,
					["polvora"] = 10,
				}
			},
			["WEAPON_SHOTGUN_AMMO"] = {
				["amount"] = 100,
				["destroy"] = true,
				["require"] = {
					["capsulas"] = 15,
					["polvora"] = 15,
				}
			},
			["WEAPON_RIFLE_AMMO"] = {
				["amount"] = 100,
				["destroy"] = true,
				["require"] = {
					["capsulas"] = 20,
					["polvora"] = 20,
				}
			},
		}
	},
	["bdm"] = {
        ['coords'] = { 
			{-1367.09, -316.18, 39.59},
			{-1366.02, -318.23, 39.55},
		},
		['skillbar'] = true,
        ['text'] = "Mesa de Trabalho",
		["perm"] = "bdm.permissao",
		["list"] = {
			["maconha"] = {
				["amount"] = 1,
				["destroy"] = true,
				["require"] = {
					["folha-marijuana"] = 1,
				}
			},
			["baseado"] = {
				["amount"] = 1,
				["destroy"] = true,
				["require"] = {
					["maconha"] = 1,
					["seda"] = 1,
				}
			},
		}
	},
	["bnc"] = {
        ['coords'] = { 
			{-327.89, -2439.37, 7.36}, 
			{-327.0, -2437.22, 7.36}, 
		},
		['skillbar'] = true,
        ['text'] = "Mesa de Trabalho",
		["perm"] = "bnc.permissao",
		["list"] = {
			["cocaina"] = {
				["amount"] = 1,
				["destroy"] = true,
				["require"] = {
					["pasta-base"] = 1,
				}
			},
			["cocaina-embalada"] = {
				["amount"] = 1,
				["destroy"] = true,
				["require"] = {
					["cocaina"] = 1,
					["ziplock"] = 1,
				}
			},
		}
	},
	["bd13"] = {
        ['coords'] = { 
			{1951.25, 5179.12, 47.99},
			{1950.95, 5180.85, 47.99},
		},
		['skillbar'] = true,
        ['text'] = "Mesa de Trabalho",
		["perm"] = "bd13.permissao",
		["list"] = {
			["lsd"] = {
				["amount"] = 1,
				["destroy"] = true,
				["require"] = {
					["ergolina"] = 1,
				}
			},
			["lsdselo"] = {
				["amount"] = 1,
				["destroy"] = true,
				["require"] = {
					["lsd"] = 1,
					["folhadeselo"] = 1,
				}
			},
		}
	},
	["fdn"] = {
        ['coords'] = { 
			{ 892.66, -959.03, 39.28 },
			{ 893.5, -960.84, 39.28 },
		},
		['skillbar'] = true,
        ['text'] = "Mesa de Trabalho",
		["perm"] = "fdn.permissao",
		["list"] = {
			["cristal-metanfetamina"] = {
				["amount"] = 1,
				["destroy"] = true,
				["require"] = {
					["composito"] = 1,
				}
			},
			["metanfetamina"] = {
				["amount"] = 1,
				["destroy"] = true,
				["require"] = {
					["cristal-metanfetamina"] = 1,
					["acido"] = 1,
				}
			},
		}
	},
	["lavagem"] = {
        ['coords'] = { {-545.23, -203.77, 38.22} },
        ['text'] = "Conversar com o prefeito",
		["list"] = {
			["dinheiro"] = {
				["amount"] = 10000,
				["destroy"] = true,
				["require"] = {
					["dinheiro-sujo"] = 10000,
					["alvejante"] = 1,
				}
			},
		}
	},
}
