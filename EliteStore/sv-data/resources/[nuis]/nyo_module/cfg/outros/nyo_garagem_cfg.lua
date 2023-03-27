local cfg = {}
cfg.GeneralConfig = {   
    config = { 

        ['taxTime'] = 15, -- Intervalo de dias que vai ser cobrado ipva do veículo
        ['taxPrice'] = 0.01, -- Porcentagem do preço total do veículo que é cobrado de ipva

        ['configGaragem'] = {
            type = 'garagem', -- não alterar
            input = 'garagem', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {255,255,255,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
                bobUpAndDown = false, -- marker bopUpAndDown
                faceCamera = false, -- marker faceCamera
                rotation = true, -- marker rotation
                custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                }
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Garagem', -- Name to display on the map!
                blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 0, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip               
            garagemConfig = {
               payment = false,
               paymentType = 1, -- 1 predefinido, 2 porcentagem
               paymentPrefix = 100, -- Caso Type = 1 define valor para retirar o veiculo
               paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo   

               deleteVehicleDistance = 30.0, -- Distância máxima para poder deletar o veículo
               garagemType = 'public', -- tipo de gargem (public, home, work)
               garagemMenu = {
                carro = true, -- veículos terrestres
                helicoptero = false, -- veículos aéreos
                barco = false, -- veículos áquaticos
               },
               vehicles = {
               }, -- caso for work, definir os veiculos aqui
            }
        },

        ['configGaragemHomes'] = {
            type = 'garagem', -- não alterar
            input = 'garagem', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {0,255,0,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
                bobUpAndDown = false, -- marker bopUpAndDown
                faceCamera = false, -- marker faceCamera
                rotation = true, -- marker rotation
                custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                }
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Garagem', -- Name to display on the map!
                blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 0, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip               
            garagemConfig = {
               payment = false,
               paymentType = 1, -- 1 predefinido, 2 porcentagem
               paymentPrefix = 100, -- Caso Type = 1 define valor para retirar o veiculo
               paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo   

               garagemType = 'home', -- tipo de gargem (public, home, work)
               garagemMenu = {
                carro = true, -- veículos terrestres
                helicoptero = false, -- veículos aéreos
                barco = false, -- veículos áquaticos
               },
               vehicles = {
               }, -- caso for work, definir os veiculos aqui
            }
        },

        ['configGaragemPolice'] = {
            type = 'garagem', -- não alterar
            input = 'garagem', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {0,255,0,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
                bobUpAndDown = false, -- marker bopUpAndDown
                faceCamera = false, -- marker faceCamera
                rotation = true, -- marker rotation
                custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                }
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Garagem', -- Name to display on the map!
                blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 0, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "policia.permissao", -- permissao para acessar o blip               
            garagemConfig = {
               payment = false,
               paymentType = 1, -- 1 predefinido, 2 porcentagem
               paymentPrefix = 100, -- Caso Type = 1 define valor para retirar o veiculo
               paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo   

               garagemType = 'work', -- tipo de gargem (public, home, work)
               garagemMenu = {
                carro = true, -- veículos terrestres
                helicoptero = true, -- veículos aéreos
                barco = false, -- veículos áquaticos
               },
               vehicles = {
                {vehicle = 'policeb', extras = {}, livery = 0, perm = "soldado.permissao"}
               }, -- caso for work, definir os veiculos aqui
            }
        },

        ['configGaragemLixeiro'] = {
            type = 'garagem', -- não alterar
            input = 'garagem', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {0,255,0,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
                bobUpAndDown = false, -- marker bopUpAndDown
                faceCamera = false, -- marker faceCamera
                rotation = true, -- marker rotation
                custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                }
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Garagem', -- Name to display on the map!
                blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 0, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip               
            garagemConfig = {
               payment = false,
               paymentType = 1, -- 1 predefinido, 2 porcentagem
               paymentPrefix = 100, -- Caso Type = 1 define valor para retirar o veiculo
               paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo   

               garagemType = 'work', -- tipo de gargem (public, home, work)
               garagemMenu = {
                carro = true, -- veículos terrestres
                helicoptero = true, -- veículos aéreos
                barco = true, -- veículos áquaticos
               },
               vehicles = {
                   {vehicle = 'trash2', extras = {}, livery = 0}
               }, -- caso for work, definir os veiculos aqui
            }
        },

        ['configGaragemOnibus'] = {
            type = 'garagem', -- não alterar
            input = 'garagem', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {0,255,0,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotacao = {0.0, 180.0, 130.0}, -- marker Rotation (x,y,z)
                bobUpAndDown = false, -- marker bopUpAndDown
                faceCamera = false, -- marker faceCamera
                rotation = true, -- marker rotation
                custom = { -- Custom Marker
                    active = false,
                    dict = '',
                    name = ''
                }
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Garagem', -- Name to display on the map!
                blipId = 357, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 0, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip               
            garagemConfig = {
               payment = false,
               paymentType = 1, -- 1 predefinido, 2 porcentagem
               paymentPrefix = 100, -- Caso Type = 1 define valor para retirar o veiculo
               paymentPorcent = 0.5, -- Caso Type = 2 define a % do caro para retirar o veiculo   

               garagemType = 'work', -- tipo de gargem (public, home, work)
               garagemMenu = {
                carro = true, -- veículos terrestres
                helicoptero = true, -- veículos aéreos
                barco = true, -- veículos áquaticos
               },
               vehicles = {
                   {vehicle = 'coach', extras = {}, livery = 0},
                   {vehicle = 'bus', extras = {}, livery = 0}
               }, -- caso for work, definir os veiculos aqui
            }
        },
    },

    locs = {
        -- Garagens Publicas
        {showBlip = true, coord = vector3(55.43,-876.19,29.66), heading = 359.29, config = 'configGaragem', homeName = '', spawn = {
            vector4(50.66,-873.02,30.45,159.65),
            vector4(47.34,-871.81,30.45,159.65),
            vector4(44.17,-870.50,30.45,159.65)
        }},
        {showBlip = true, coord = vector3(596.40,90.65,92.12), heading = 359.29, config = 'configGaragem', homeName = '', spawn = {
            vector4(599.38,98.16,92.06,249.86),
            vector4(600.74,101.16,92.06,249.86)
        }},
        {showBlip = true, coord = vector3(-340.76,265.97,84.67), heading = 359.29, config = 'configGaragem', homeName = '', spawn = {
            vector4(-329.74,274.20,85.44,93.80),
            vector4(-329.88,277.63,85.43,93.80)
        }},
        {showBlip = true, coord = vector3(-2030.01,-465.97,10.60), heading = 359.29, config = 'configGaragem', homeName = '', spawn = {
            vector4(-2024.27,-471.93,11.40,140.0),
		    vector4(-2021.90,-474.17,11.40,140.0)
        }},
        {showBlip = true, coord = vector3(-1184.92,-1510.00,4.64), heading = 359.29, config = 'configGaragem', homeName = '', spawn = {
            vector4(-1183.49,-1495.92,4.37,125.0),
		    vector4(-1186.70,-1490.54,4.37,125.0)
        }},
        {showBlip = true, coord = vector3(-73.44,-2004.99,18.27), heading = 359.29, config = 'configGaragem', homeName = '', spawn = {
            vector4(-84.96,-2004.22,18.01,352.0)
        }},
        {showBlip = true, coord = vector3(214.02,-808.44,31.01), heading = 359.29, config = 'configGaragem', homeName = '', spawn = {
            vector4(222.11,-804.16,29.83,247.0),
		    vector4(224.14,-799.27,29.83,247.0)
        }},
        {showBlip = true, coord = vector3(-348.88,-874.02,31.31), heading = 359.29, config = 'configGaragem', homeName = '', spawn = {
            vector4(-343.73,-875.45,30.22,168.42),
		    vector4(-340.11,-877.03,30.22,168.42),
		    vector4(-336.49,-877.69,30.22,168.42)
        }},
        {showBlip = true, coord = vector3(67.74,12.27,69.21), heading = 359.29, config = 'configGaragem', homeName = '', spawn = {
            vector4(64.17,17.22,68.37,339.38),
		    vector4(61.17,18.40,68.42,339.38)
        }},
        {showBlip = true, coord = vector3(361.90,297.81,103.88), heading = 359.29, config = 'configGaragem', homeName = '', spawn = {
            vector4(361.08,293.50,102.65,249.67),
		    vector4(360.02,289.80,102.64,249.67),
		    vector4(358.35,286.42,102.62,249.67)
        }},
        {showBlip = true, coord = vector3(-773.34,5598.15,33.60), heading = 359.29, config = 'configGaragem', homeName = '', spawn = {
            vector4(-772.82,5578.48,32.64,89.01),
		    vector4(-773.07,5575.31,32.64,89.01)
        }},
        {showBlip = true, coord = vector3(275.17,-345.5,45.18), heading = 359.29, config = 'configGaragem', homeName = '', spawn = {
            vector4(283.04,-342.29,44.55,249.40),
		    vector4(284.19,-338.85,44.55,249.40)
        }},
        {showBlip = true, coord = vector3(317.25,2623.14,44.46), heading = 359.29, config = 'configGaragem', homeName = '', spawn = {
            vector4(334.52,2623.09,44.49,20.0)
        }},
        {showBlip = true, coord = vector3(1156.90,-453.73,66.98), heading = 359.29, config = 'configGaragem', homeName = '', spawn = {
            vector4(1155.20,-461.58,65.97,167.96),
		    vector4(1151.76,-460.61,65.96,167.96)
        }},
        {showBlip = true, coord = vector3(-102.21,6345.18,31.57), heading = 359.29, config = 'configGaragem', homeName = '', spawn = {
            vector4(-98.29,6341.76,30.64,224.27),
		    vector4(-95.52,6344.59,30.64,224.27),
		    vector4(-92.98,6347.16,30.64,224.27),
		    vector4(-85.39,6338.94,30.64,44.80)
        }},
        

        -- Garagens de Empregos
        {showBlip = false, coord = vector3(-340.83547973633,-1567.5225830078,24.228786468506), heading = 359.29, config = 'configGaragemLixeiro', homeName = '', spawn = {
            vector4(-345.04,-1561.55,25.23,94.55)
        }},

        {showBlip = false, coord = vector3(453.89,-600.57,27.68), heading = 359.29, config = 'configGaragemOnibus', homeName = '', spawn = {
            vector4(462.51,-605.27,29.32,214.04),
		    vector4(461.44,-611.34,29.33,214.04)
        }},

        
        -- Garagens de Casas 
        {showBlip = false, coord = vector3(1382.40,-596.33,73.63), heading = 359.29, config = 'configGaragemHomes', homeName = 'LS05', spawn = {
            vector4(1379.16,-597.16,74.33,49.49)
        }},
        
        -- Garagens de Polícia
        {showBlip = false, coord = vector3(457.18,-1009.31,27.53), heading = 359.29, config = 'configGaragemPolice', homeName = '', spawn = {
            vector4(445.76,-1024.88,28.22,7.21)
        }},
        
    },
    
}

return cfg