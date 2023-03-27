local cfg = {}
cfg.GeneralConfig = {    
    config = {
        ['configSkinShopAll'] = {
            type = 'skinShop', -- não alterar
            input = 'skinshop', -- não alterar
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
                name = 'Loja de Roupas', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip
            shopType = "all", -- all (show all clouth), exclusive (displays only the set clothes), exclude (excludes set clothing)
            shopConfig = {
                [1] = {price = 500, item = {Male = {}, Female = {}}}, -- mascara
                [3] = {price = 500, item = {Male = {}, Female = {}}}, -- maos
                [4] = {price = 500, item = {Male = {}, Female = {}}}, -- calca
                [5] = {price = 500, item = {Male = {}, Female = {}}}, -- mochila
                [6] = {price = 500, item = {Male = {}, Female = {}}}, -- sapato
                [7] = {price = 500, item = {Male = {}, Female = {}}}, -- gravata
                [8] = {price = 500, item = {Male = {}, Female = {}}}, -- camisa
                [9] = {price = 500, item = {Male = {}, Female = {}}}, -- colete
                [11] = {price = 500, item = {Male = {}, Female = {}}}, -- jaqueta
                ['p0'] = {price = 500, item = {Male = {}, Female = {}}}, -- bone/chapeu
                ['p1'] = {price = 500, item = {Male = {}, Female = {}}}, -- oculos
                ['p2'] = {price = 500, item = {Male = {}, Female = {}}}, -- brinco
                ['p6'] = {price = 500, item = {Male = {}, Female = {}}}, -- relogio
                ['p7'] = {price = 500, item = {Male = {}, Female = {}}}, -- bracelete
            }    
        },
        ['configSkinShopAllPolice'] = {
            type = 'skinShop', -- não alterar
            input = 'skinshop', -- não alterar
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
                name = 'Loja de Roupas', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "policia.permissao", -- permissao para acessar o blip
            shopType = "all", -- all (show all clouth), exclusive (displays only the set clothes), exclude (excludes set clothing)
            shopConfig = {
                [1] = {price = 0, item = {Male = {}, Female = {}}}, -- mascara
                [3] = {price = 0, item = {Male = {}, Female = {}}}, -- maos
                [4] = {price = 0, item = {Male = {}, Female = {}}}, -- calca
                [5] = {price = 0, item = {Male = {}, Female = {}}}, -- mochila
                [6] = {price = 0, item = {Male = {}, Female = {}}}, -- sapato
                [7] = {price = 0, item = {Male = {}, Female = {}}}, -- gravata
                [8] = {price = 0, item = {Male = {}, Female = {}}}, -- camisa
                [9] = {price = 0, item = {Male = {}, Female = {}}}, -- colete
                [11] = {price = 0, item = {Male = {}, Female = {}}}, -- jaqueta
                ['p0'] = {price = 0, item = {Male = {}, Female = {}}}, -- bone/chapeu
                ['p1'] = {price = 0, item = {Male = {}, Female = {}}}, -- oculos
                ['p2'] = {price = 0, item = {Male = {}, Female = {}}}, -- brinco
                ['p6'] = {price = 0, item = {Male = {}, Female = {}}}, -- relogio
                ['p7'] = {price = 0, item = {Male = {}, Female = {}}}, -- bracelete
            }    
        },
        ['configSkinShopAllHospital'] = {
            type = 'skinShop', -- não alterar
            input = 'skinshop', -- não alterar
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
                name = 'Loja de Roupas', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "paramedico.permissao", -- permissao para acessar o blip
            shopType = "all", -- all (show all clouth), exclusive (displays only the set clothes), exclude (excludes set clothing)
            shopConfig = {
                [1] = {price = 0, item = {Male = {}, Female = {}}}, -- mascara
                [3] = {price = 0, item = {Male = {}, Female = {}}}, -- maos
                [4] = {price = 0, item = {Male = {}, Female = {}}}, -- calca
                [5] = {price = 0, item = {Male = {}, Female = {}}}, -- mochila
                [6] = {price = 0, item = {Male = {}, Female = {}}}, -- sapato
                [7] = {price = 0, item = {Male = {}, Female = {}}}, -- gravata
                [8] = {price = 0, item = {Male = {}, Female = {}}}, -- camisa
                [9] = {price = 0, item = {Male = {}, Female = {}}}, -- colete
                [11] = {price = 0, item = {Male = {}, Female = {}}}, -- jaqueta
                ['p0'] = {price = 0, item = {Male = {}, Female = {}}}, -- bone/chapeu
                ['p1'] = {price = 0, item = {Male = {}, Female = {}}}, -- oculos
                ['p2'] = {price = 0, item = {Male = {}, Female = {}}}, -- brinco
                ['p6'] = {price = 0, item = {Male = {}, Female = {}}}, -- relogio
                ['p7'] = {price = 0, item = {Male = {}, Female = {}}}, -- bracelete
            }    
        },
        ['configSkinShopExlude'] = {
            type = 'skinShop', -- não alterar
            input = 'skinshop', -- não alterar
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
                name = 'Loja de Roupas', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip
            shopType = "all", -- all (show all clouth), exclusive (displays only the set clothes), exclude (excludes set clothing)
            shopConfig = {
                [1] = {price = 500, item = {Male = {1,2,3,4,5,6,7,8,9,10}, Female = {}}}, -- mascara
                [3] = {price = 500, item = {Male = {}, Female = {}}}, -- maos
                [4] = {price = 500, item = {Male = {}, Female = {}}}, -- calca
                [5] = {price = 500, item = {Male = {}, Female = {}}}, -- mochila
                [6] = {price = 500, item = {Male = {}, Female = {}}}, -- sapato
                [7] = {price = 500, item = {Male = {}, Female = {}}}, -- gravata
                [8] = {price = 500, item = {Male = {}, Female = {}}}, -- camisa
                [9] = {price = 500, item = {Male = {}, Female = {}}}, -- colete
                [11] = {price = 500, item = {Male = {}, Female = {}}}, -- jaqueta
                ['p0'] = {price = 500, item = {Male = {}, Female = {}}}, -- bone/chapeu
                ['p1'] = {price = 500, item = {Male = {}, Female = {}}}, -- oculos
                ['p2'] = {price = 500, item = {Male = {}, Female = {}}}, -- brinco
                ['p6'] = {price = 500, item = {Male = {}, Female = {}}}, -- relogio
                ['p7'] = {price = 500, item = {Male = {}, Female = {}}}, -- bracelete
            }    
        },

        ['configSkinShopExclusive'] = {
            type = 'skinShop', -- não alterar
            input = 'skinshop', -- não alterar
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
                name = 'Loja de Roupas', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip
            shopType = "all", -- all (show all clouth), exclusive (displays only the set clothes), exclude (excludes set clothing)
            shopConfig = {
                [1] = {price = 500, item = {Male = {1,2,3,4,5,6,7,8,9,10}, Female = {}}}, -- mascara
                [3] = {price = 500, item = {Male = {}, Female = {}}}, -- maos
                [4] = {price = 500, item = {Male = {}, Female = {}}}, -- calca
                [5] = {price = 500, item = {Male = {}, Female = {}}}, -- mochila
                [6] = {price = 500, item = {Male = {}, Female = {}}}, -- sapato
                [7] = {price = 500, item = {Male = {}, Female = {}}}, -- gravata
                [8] = {price = 500, item = {Male = {}, Female = {}}}, -- camisa
                [9] = {price = 500, item = {Male = {}, Female = {}}}, -- colete
                [11] = {price = 500, item = {Male = {}, Female = {}}}, -- jaqueta
                ['p0'] = {price = 500, item = {Male = {}, Female = {}}}, -- bone/chapeu
                ['p1'] = {price = 500, item = {Male = {}, Female = {}}}, -- oculos
                ['p2'] = {price = 500, item = {Male = {}, Female = {}}}, -- brinco
                ['p6'] = {price = 500, item = {Male = {}, Female = {}}}, -- relogio
                ['p7'] = {price = 500, item = {Male = {}, Female = {}}}, -- bracelete
            }    
        },

        ['configSkinShopPerm'] = {
            type = 'skinShop', -- não alterar
            input = 'skinshop', -- não alterar
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
                name = 'Loja de Roupas', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip
            shopType = "all", -- all (show all clouth), exclusive (displays only the set clothes), exclude (excludes set clothing)
            shopConfig = {
                [1] = {price = 500, item = {Male = {}, Female = {}}}, -- mascara
                [3] = {price = 500, item = {Male = {}, Female = {}}}, -- maos
                [4] = {price = 500, item = {Male = {}, Female = {}}}, -- calca
                [5] = {price = 500, item = {Male = {}, Female = {}}}, -- mochila
                [6] = {price = 500, item = {Male = {}, Female = {}}}, -- sapato
                [7] = {price = 500, item = {Male = {}, Female = {}}}, -- gravata
                [8] = {price = 500, item = {Male = {}, Female = {}}}, -- camisa
                [9] = {price = 500, item = {Male = {}, Female = {}}}, -- colete
                [11] = {price = 500, item = {Male = {}, Female = {}}}, -- jaqueta
                ['p0'] = {price = 500, item = {Male = {}, Female = {}}}, -- bone/chapeu
                ['p1'] = {price = 500, item = {Male = {}, Female = {}}}, -- oculos
                ['p2'] = {price = 500, item = {Male = {}, Female = {}}}, -- brinco
                ['p6'] = {price = 500, item = {Male = {}, Female = {}}}, -- relogio
                ['p7'] = {price = 500, item = {Male = {}, Female = {}}}, -- bracelete
            }    
        },
        
    },

    locs = {
        -- Loja de Roupa 1
        {showBlip = true, coord = vector3(70.87,-1399.49,28.39), heading = 359.29, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(72.41,-1399.49,28.39), heading = 356.65, config = 'configSkinShopExlude'},
        {showBlip = false, coord = vector3(73.85,-1399.49,28.39), heading = 3.41, config = 'configSkinShopExclusive'},
        {showBlip = false, coord = vector3(75.37,-1399.49,28.39), heading = 0.1, config = 'configSkinShopPerm'},

        -- Loja de Roupa 2
        {showBlip = true, coord = vector3(430.1,-799.67,28.52), heading = 177.1, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(428.62,-799.67,28.52), heading = 173.11, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(427.06,-799.67,28.52), heading = 192.52, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(425.62,-799.67,28.52), heading = 181.76, config = 'configSkinShopAll'},

        -- Loja de Roupa 3
        {showBlip = true, coord = vector3(128.63,-220.14,53.56), heading = 115.46, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(129.23,-218.53,53.56), heading = 107.44, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(129.94,-216.27,53.56), heading = 128.95, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(130.7,-214.05,53.56), heading = 95.77, config = 'configSkinShopAll'},

        -- Loja de Roupa 4
        {showBlip = true, coord = vector3(-165.9,-310.94,38.74), heading = 248.85, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-165.6,-309.52,38.74), heading = 251.32, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-165.09,-308.15,38.74), heading = 213.57, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-164.74,-306.74,38.74), heading = 286.29, config = 'configSkinShopAll'},

        -- Loja de Roupa 5
        {showBlip = true, coord = vector3(-830.4,-1072.88,10.33), heading = 292.33, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-829.63,-1074.25,10.33), heading = 311.26, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-828.85,-1075.51,10.33), heading = 304.74, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-828.07,-1076.79,10.33), heading = 312.29, config = 'configSkinShopAll'},


        -- MECANICA
        {showBlip = false, coord = vector3(1423.99, -37.9, 136.14), heading = 312.29, config = 'configSkinShopAll'},

        -- Loja de Roupa 6
        {showBlip = true, coord = vector3(-714.24,-145.74,36.42), heading = 141.83, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-713.1,-147.37,36.42), heading = 130.49, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-712.46,-148.6,36.42), heading = 80.07, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-711.74,-149.56,36.42), heading = 178.12, config = 'configSkinShopAll'},

        -- Loja de Roupa 7
        {showBlip = true, coord = vector3(-1198.0,-769.28,16.32), heading = 222.52, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-1199.6,-770.57,16.32), heading = 217.49, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-1201.26,-771.96,16.32), heading = 179.08, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-1202.65,-773.12,16.32), heading = 214.11, config = 'configSkinShopAll'},

        -- Loja de Roupa 8
        {showBlip = true, coord = vector3(-1448.24,-235.21,48.82), heading = 95.97, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-1446.95,-233.58,48.82), heading = 10.74, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-1445.87,-232.37,48.82), heading = 56.05, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-1444.85,-231.29,48.82), heading = 50.59, config = 'configSkinShopAll'},

        -- Loja de Roupa 9
        {showBlip = true, coord = vector3(-3167.29,1047.19,19.87), heading = 84.66, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-3166.22,1049.4,19.87), heading = 95.4, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-3165.14,1051.79,19.87), heading = 74.04, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-3164.5,1053.44,19.87), heading = 66.15, config = 'configSkinShopAll'},

        -- Loja de Roupa 10
        {showBlip = true, coord = vector3(-1109.44,2709.55,18.11), heading = 311.52, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-1108.37,2708.43,18.11), heading = 314.75, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-1107.43,2707.32,18.11), heading = 307.39, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(-1106.33,2706.17,18.11), heading = 325.3, config = 'configSkinShopAll'},

        -- Loja de Roupa 11
        {showBlip = true, coord = vector3(612.87,2758.49,41.09), heading = 292.48, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(613.12,2756.56,41.09), heading = 283.19, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(613.13,2753.29,41.09), heading = 264.95, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(613.26,2751.39,41.09), heading = 280.25, config = 'configSkinShopAll'},

        -- Loja de Roupa 12
        {showBlip = true, coord = vector3(1190.08,2714.76,37.23), heading = 267.87, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(1190.18,2713.24,37.23), heading = 276.04, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(1190.09, 2711.73,37.23), heading = 280.45, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(1190.07,2710.23,37.23), heading = 283.45, config = 'configSkinShopAll'},

        -- Loja de Roupa 13
        {showBlip = true, coord = vector3(1697.49,4829.94,41.07), heading = 179.54, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(1695.95,4829.75,41.07), heading = 201.35, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(1694.54,4829.57,41.07), heading = 186.38, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(1693.04,4829.35,41.07), heading = 190.91, config = 'configSkinShopAll'},

        -- Loja de Roupa 14
        {showBlip = true, coord = vector3(12.7,6513.6,30.878), heading = 134.57, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(11.7,6514.76,30.878), heading = 134.28, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(10.74,6515.8,30.878), heading = 138.6, config = 'configSkinShopAll'},
        {showBlip = false, coord = vector3(9.66,6516.88,30.878), heading = 150.98, config = 'configSkinShopAll'},

        
        {showBlip = false, coord = vector3(1976.11, -941.69, 79.32), heading = 150.98, config = 'configSkinShopAll'},
        
        {showBlip = false, coord = vector3(-1511.7705078125,-3014.4389648438,-79.242195129395), heading = 355.70, config = 'configSkinShopAll'},
        
        
        {showBlip = false, coord = vector3(2515.09, -346.28, 101.9), heading = 355.70, config = 'configSkinShopAllPolice'},
        -- CIVIL
        {showBlip = true, coord = vector3(-1305.56,-564.29,31.73), heading = 220.80, config = 'configSkinShopAllPolice'},
        {showBlip = false, coord = vector3(-437.72,-308.58,34.92), heading = 200.70, config = 'configSkinShopAllHospital'},
        {showBlip = false, coord = vector3(-443.5,-311.0,34.92), heading = 355.70, config = 'configSkinShopAllHospital'},
    
        -- Suiça
        {showBlip = false, coord = vector3(-1088.19, 1100.12, 209.23), heading = 150.98, config = 'configSkinShopAll'},



        {showBlip = false, coord = vector3(1794.93, 448.96, 172.35), heading = 169.98, config = 'configSkinShopAll'},

        -- CASA LÁ 
        {showBlip = false, coord = vector3(-60.82, 994.97, 239.52 ), heading = 42.11, config = 'configSkinShopAll'},
        
        {showBlip = false, coord = vector3(462.54, -996.4, 30.69 ), heading = 91.67, config = 'configSkinShopAll'},

        -- Favelas
        {showBlip = true, coord = vector3(-458.79,-1265.72,25.48), heading = 41.14, config = 'configSkinShopAll'},
        {showBlip = true, coord = vector3(176.45,668.78,207.66), heading = 70.65, config = 'configSkinShopAll'},
        {showBlip = true, coord = vector3(-2430.76,1910.56,196.9), heading = 343.18, config = 'configSkinShopAll'},
        {showBlip = true, coord = vector3(1396.33,-127.41,128.89), heading = 359.12, config = 'configSkinShopAll'},
        {showBlip = true, coord = vector3(2081.29,3991.07,36.4), heading = 167.22, config = 'configSkinShopAll'},
        {showBlip = true, coord = vector3(667.72,2418.67,65.45), heading = 335.56, config = 'configSkinShopAll'},

        {showBlip = true, coord = vector3(-575.19,-713.69,36.39), heading = 295.76, config = 'configSkinShopAll'},
        
        
    },

    commands = {
        {showBlip = true, coord = vector3(70.87,-1399.49,28.39), raio = 100, command = "openSkinShop", config = 'configSkinShopAll'},
        {showBlip = true, coord = vector3(70.87,-1399.49,28.39), raio = 100, command = "openSkinShop2", config = 'configSkinShopPerm'},
    }
    

}

return cfg