local cfg = {}
cfg.GeneralConfig = {    
    config = {
        ['configRotaMaconha'] = {
            type = 'rota', -- não alterar
            input = 'rota', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {0,255,0,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Rota 1', -- Name to display on the map!
                blipId = 1, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 1, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissão para acessar o elevador (vazio = todo mundo)

            rotas = {
                type = "seq", -- seq = rota sequenciada || rand = rota randomica
                itemFim = {index = '', qtd = ''}, -- Item exibido na primeira Coluna, ele é apenas visual

                itemRequest = {
                    { type = 'item', index = 'maconha', qtdmin = 1, qtdmax = 3 },
                },

                itemRewardFix = { -- itens que ele vai receber em todo ponto de rota { type "item" = um item | "money" = dinheiro }
                    { type = 'item', index = 'dinheiro-sujo', qtdmin = 1600, qtdmax = 1700 },
                },

                itemRewardRand = { -- itens randomicos que ele pode receber (apenas 1 por ponto) { type "item" = um item | "money" = dinheiro }
                    { type = 'item', index = '', qtdmin = 0, qtdmax = 100 },
                },

                route = { -- aqui vai ficar as coordenadas da rota
                    vector3(-952.31,-1077.87,2.48),
                    vector3(-978.23,-1108.09,2.16),
                    vector3(-1024.49,-1139.6,2.75), 
                    vector3(-1063.76,-1159.88,2.56), 
                    vector3(-1001.68,-1218.78,5.75), 
                    vector3(-1171.54,-1575.61,4.51), 
                    vector3(-1097.94,-1673.36,8.4), 
                    vector3(-1286.17,-1267.12,4.52), 
                    vector3(-1335.75,-1146.55,6.74), 
                    vector3(-1750.47,-697.09,10.18), 
                    vector3(-1876.84,-584.39,11.86), 
                    vector3(-1772.23,-378.12,46.49), 
                    vector3(-1821.38,-404.97,46.65), 
                    vector3(-1965.33,-296.96,41.1), 
                    vector3(-3089.24,221.49,14.07), 
                    vector3(-3088.62,392.3,11.45),
                    vector3(-3077.98,658.9,11.67), 
                    vector3(-3243.07,931.84,17.23),
                    vector3(1230.8,-1590.97,53.77), 
                    vector3(1286.53,-1604.26,54.83), 
                    vector3(1379.38,-1515.23,58.24), 
                    vector3(1379.38,-1515.23,58.24), 
                    vector3(1437.37,-1492.53,63.63), 
                    vector3(450.04,-1863.49,27.77),
                    vector3(403.75,-1929.72,24.75), 
                    vector3(430.16,-1559.31,32.8), 
                    vector3(446.06,-1242.17,30.29),
                    vector3(322.39,-1284.7,30.57), 
                    vector3(369.65,-1194.79,31.34),
                    vector3(474.27,-635.05,25.65), 
                    vector3(158.87,-1215.65,29.3), 
                    vector3(154.68,-1335.62,29.21), 
                    vector3(215.54,-1461.67,29.19),
                    vector3(167.46,-1709.3,29.3),
                    vector3(-444.47,287.68,83.3), 
                    vector3(-179.56,314.25,97.88), 
                    vector3(-16.07,216.7,106.75), 
                    vector3(164.02,151.87,105.18),
                    vector3(840.2,-181.93,74.19), 
                    vector3(952.27,-252.17,67.77),
                    vector3(1105.27,-778.84,58.27), 
                    vector3(1099.59,-345.68,67.19), 
                    vector3(-1211.12,-401.56,38.1), 
                    vector3(-1302.69,-271.32,40.0), 
                    vector3(-1468.65,-197.3,48.84), 
                    vector3(-1583.18,-265.78,48.28), 
                    vector3(-603.96,-774.54,25.02),
                    vector3(-805.14,-959.54,18.13), 
                    vector3(-325.07,-1356.35,31.3), 
                    vector3(-321.94,-1545.74,31.02), 
                    vector3(-428.95,-1728.13,19.79), 
                    vector3(-582.38,-1743.65,22.44), 
                    vector3(-670.43,-889.09,24.5)
                },
            },           

            
        },
    },

    locs = {
        {showBlip = false, coord = vector3(269.07, 146.37, 104.39), heading = 359.29, config = 'configRotaMaconha'},
    }
  
    
}

return cfg