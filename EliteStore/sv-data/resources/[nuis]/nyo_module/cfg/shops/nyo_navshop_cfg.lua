local cfg = {}
cfg.GeneralConfig = {   
    config = { 
        ['configNavShop1'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
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
                name = 'Central | Pescador (VENDA)', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip               
            shopConfig = {             
                { type = 'buy', index = 'isca', name = 'isca', typeMoney = 'legal', price = 10, qtd = 1 },
                { type = 'sell', index = 'dourado', name = 'dourado 1x', typeMoney = 'legal', price = 28, qtd = 1 },
                { type = 'sell', index = 'corvina', name = 'corvina 1x', typeMoney = 'legal', price = 28, qtd = 1 },
                { type = 'sell', index = 'salmao', name = 'salmao 1x', typeMoney = 'legal', price = 28, qtd = 1 },
                { type = 'sell', index = 'pacu', name = 'pacu 1x', typeMoney = 'legal', price = 28, qtd = 1 },
                { type = 'sell', index = 'pintado', name = 'pintado 1x', typeMoney = 'legal', price = 28, qtd = 1 },
                { type = 'sell', index = 'pirarucu', name = 'pirarucu 1x', typeMoney = 'legal', price = 28, qtd = 1 },
                { type = 'sell', index = 'tilapia', name = 'tilapia 1x', typeMoney = 'legal', price = 28, qtd = 1 },
                { type = 'sell', index = 'tucunare', name = 'tucunare 1x', typeMoney = 'legal', price = 28, qtd = 1 },
            }
        },
        ['configNavShop2'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Central | LOJINHA (VENDA)', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
               { type = 'buy', index = 'celular', name = 'celular 1x', typeMoney = 'legal', price = 2000, qtd = 1 },
               { type = 'buy', index = 'repairkit', name = 'repairkit 1x', typeMoney = 'legal', price = 10000, qtd = 1 },
               { type = 'buy', index = 'roupas', name = 'roupas 1x', typeMoney = 'legal', price = 15000, qtd = 1 },
               { type = 'buy', index = 'radio', name = 'radio 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
               { type = 'buy', index = 'energetico', name = 'energetico 3x', typeMoney = 'legal', price = 400, qtd = 1 },
               { type = 'buy', index = 'mochila', name = 'mochila 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
            }
        },
        ['configNavShop3'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Central | LOJINHA (VENDA)', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
               { type = 'buy', index = 'celular', name = 'celular 1x', typeMoney = 'legal', price = 2000, qtd = 1 },
               { type = 'buy', index = 'repairkit', name = 'repairkit 1x', typeMoney = 'legal', price = 10000, qtd = 1 },
               { type = 'buy', index = 'roupas', name = 'roupas 1x', typeMoney = 'legal', price = 15000, qtd = 1 },
               { type = 'buy', index = 'radio', name = 'radio 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
               { type = 'buy', index = 'energetico', name = 'energetico 3x', typeMoney = 'legal', price = 400, qtd = 1 },
               { type = 'buy', index = 'mochila', name = 'mochila 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
            }
        },
        ['configNavShop4'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Central | LOJINHA (VENDA)', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
               { type = 'buy', index = 'celular', name = 'celular 1x', typeMoney = 'legal', price = 2000, qtd = 1 },
               { type = 'buy', index = 'repairkit', name = 'repairkit 1x', typeMoney = 'legal', price = 10000, qtd = 1 },
               { type = 'buy', index = 'roupas', name = 'roupas 1x', typeMoney = 'legal', price = 15000, qtd = 1 },
               { type = 'buy', index = 'radio', name = 'radio 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
               { type = 'buy', index = 'energetico', name = 'energetico 3x', typeMoney = 'legal', price = 400, qtd = 1 },
               { type = 'buy', index = 'mochila', name = 'mochila 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
            }
        },
        ['configNavShop5'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Central | LOJINHA (VENDA)', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
                { type = 'buy', index = 'celular', name = 'celular 1x', typeMoney = 'legal', price = 2000, qtd = 1 },
                { type = 'buy', index = 'repairkit', name = 'repairkit 1x', typeMoney = 'legal', price = 10000, qtd = 1 },
                { type = 'buy', index = 'roupas', name = 'roupas 1x', typeMoney = 'legal', price = 15000, qtd = 1 },
                { type = 'buy', index = 'radio', name = 'radio 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
                { type = 'buy', index = 'energetico', name = 'energetico 3x', typeMoney = 'legal', price = 400, qtd = 1 },
                { type = 'buy', index = 'mochila', name = 'mochila 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
            }
        },
        ['configNavShop6'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Central | LOJINHA (VENDA)', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
                { type = 'buy', index = 'celular', name = 'celular 1x', typeMoney = 'legal', price = 2000, qtd = 1 },
                { type = 'buy', index = 'repairkit', name = 'repairkit 1x', typeMoney = 'legal', price = 10000, qtd = 1 },
                { type = 'buy', index = 'roupas', name = 'roupas 1x', typeMoney = 'legal', price = 15000, qtd = 1 },
                { type = 'buy', index = 'radio', name = 'radio 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
                { type = 'buy', index = 'energetico', name = 'energetico 3x', typeMoney = 'legal', price = 400, qtd = 1 },
                { type = 'buy', index = 'mochila', name = 'mochila 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
            }
        },
        ['configNavShop7'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Central | LOJINHA (VENDA)', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
                { type = 'buy', index = 'celular', name = 'celular 1x', typeMoney = 'legal', price = 2000, qtd = 1 },
                { type = 'buy', index = 'repairkit', name = 'repairkit 1x', typeMoney = 'legal', price = 10000, qtd = 1 },
                { type = 'buy', index = 'roupas', name = 'roupas 1x', typeMoney = 'legal', price = 15000, qtd = 1 },
                { type = 'buy', index = 'radio', name = 'radio 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
                { type = 'buy', index = 'energetico', name = 'energetico 3x', typeMoney = 'legal', price = 400, qtd = 1 },
                { type = 'buy', index = 'mochila', name = 'mochila 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
            }
        },
        ['configNavShop8'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Central | LOJINHA (VENDA)', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
                { type = 'buy', index = 'celular', name = 'celular 1x', typeMoney = 'legal', price = 2000, qtd = 1 },
               { type = 'buy', index = 'repairkit', name = 'repairkit 1x', typeMoney = 'legal', price = 10000, qtd = 1 },
               { type = 'buy', index = 'roupas', name = 'roupas 1x', typeMoney = 'legal', price = 15000, qtd = 1 },
               { type = 'buy', index = 'radio', name = 'radio 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
               { type = 'buy', index = 'energetico', name = 'energetico 3x', typeMoney = 'legal', price = 400, qtd = 1 },
               { type = 'buy', index = 'mochila', name = 'mochila 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
            }
        },
        ['configNavShop9'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Central | LOJINHA (VENDA)', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
               { type = 'buy', index = 'celular', name = 'celular 1x', typeMoney = 'legal', price = 2000, qtd = 1 },
               { type = 'buy', index = 'repairkit', name = 'repairkit 1x', typeMoney = 'legal', price = 10000, qtd = 1 },
               { type = 'buy', index = 'roupas', name = 'roupas 1x', typeMoney = 'legal', price = 15000, qtd = 1 },
               { type = 'buy', index = 'radio', name = 'radio 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
               { type = 'buy', index = 'energetico', name = 'energetico 3x', typeMoney = 'legal', price = 400, qtd = 1 },
               { type = 'buy', index = 'mochila', name = 'mochila 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
            }
        },
        ['configNavShop10'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Central | LOJINHA (VENDA)', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
                { type = 'buy', index = 'celular', name = 'celular 1x', typeMoney = 'legal', price = 2000, qtd = 1 },
                { type = 'buy', index = 'repairkit', name = 'repairkit 1x', typeMoney = 'legal', price = 10000, qtd = 1 },
                { type = 'buy', index = 'roupas', name = 'roupas 1x', typeMoney = 'legal', price = 15000, qtd = 1 },
                { type = 'buy', index = 'radio', name = 'radio 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
                { type = 'buy', index = 'energetico', name = 'energetico 3x', typeMoney = 'legal', price = 400, qtd = 1 },
                { type = 'buy', index = 'mochila', name = 'mochila 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
            }
        },
        ['configNavShop11'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Central | LOJINHA (VENDA)', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
                { type = 'buy', index = 'celular', name = 'celular 1x', typeMoney = 'legal', price = 2000, qtd = 1 },
                { type = 'buy', index = 'repairkit', name = 'repairkit 1x', typeMoney = 'legal', price = 10000, qtd = 1 },
                { type = 'buy', index = 'roupas', name = 'roupas 1x', typeMoney = 'legal', price = 15000, qtd = 1 },
                { type = 'buy', index = 'radio', name = 'radio 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
                { type = 'buy', index = 'energetico', name = 'energetico 3x', typeMoney = 'legal', price = 400, qtd = 1 },
                { type = 'buy', index = 'mochila', name = 'mochila 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
            }
        },
        ['configNavShop12'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Central | LOJINHA (VENDA)', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
               { type = 'buy', index = 'celular', name = 'celular 1x', typeMoney = 'legal', price = 2000, qtd = 1 },
               { type = 'buy', index = 'repairkit', name = 'repairkit 1x', typeMoney = 'legal', price = 10000, qtd = 1 },
               { type = 'buy', index = 'roupas', name = 'roupas 1x', typeMoney = 'legal', price = 15000, qtd = 1 },
               { type = 'buy', index = 'radio', name = 'radio 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
               { type = 'buy', index = 'energetico', name = 'energetico 3x', typeMoney = 'legal', price = 400, qtd = 1 },
               { type = 'buy', index = 'mochila', name = 'mochila 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
            }
        },
        ['configNavShop13'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Central | LOJINHA (VENDA)', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
               { type = 'buy', index = 'celular', name = 'celular 1x', typeMoney = 'legal', price = 2000, qtd = 1 },
               { type = 'buy', index = 'repairkit', name = 'repairkit 1x', typeMoney = 'legal', price = 10000, qtd = 1 },
               { type = 'buy', index = 'roupas', name = 'roupas 1x', typeMoney = 'legal', price = 15000, qtd = 1 },
               { type = 'buy', index = 'radio', name = 'radio 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
               { type = 'buy', index = 'energetico', name = 'energetico 3x', typeMoney = 'legal', price = 400, qtd = 1 },
               { type = 'buy', index = 'mochila', name = 'mochila 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
            }
        },
        ['configNavShop14'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Central | LOJINHA (VENDA)', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
               { type = 'buy', index = 'celular', name = 'celular 1x', typeMoney = 'legal', price = 2000, qtd = 1 },
               { type = 'buy', index = 'repairkit', name = 'repairkit 1x', typeMoney = 'legal', price = 10000, qtd = 1 },
               { type = 'buy', index = 'roupas', name = 'roupas 1x', typeMoney = 'legal', price = 15000, qtd = 1 },
               { type = 'buy', index = 'radio', name = 'radio 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
               { type = 'buy', index = 'energetico', name = 'energetico 3x', typeMoney = 'legal', price = 400, qtd = 1 },
               { type = 'buy', index = 'mochila', name = 'mochila 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
            }
        },
        ['configNavShop15'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Central | LOJINHA (VENDA)', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
               { type = 'buy', index = 'celular', name = 'celular 1x', typeMoney = 'legal', price = 2000, qtd = 1 },
               { type = 'buy', index = 'repairkit', name = 'repairkit 1x', typeMoney = 'legal', price = 10000, qtd = 1 },
               { type = 'buy', index = 'roupas', name = 'roupas 1x', typeMoney = 'legal', price = 15000, qtd = 1 },
               { type = 'buy', index = 'radio', name = 'radio 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
               { type = 'buy', index = 'energetico', name = 'energetico 3x', typeMoney = 'legal', price = 400, qtd = 1 },
               { type = 'buy', index = 'mochila', name = 'mochila 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
            }
        },
        ['configNavShop16'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Central | LOJINHA (VENDA)', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
                { type = 'buy', index = 'celular', name = 'celular 1x', typeMoney = 'legal', price = 2000, qtd = 1 },
                { type = 'buy', index = 'repairkit', name = 'repairkit 1x', typeMoney = 'legal', price = 10000, qtd = 1 },
                { type = 'buy', index = 'roupas', name = 'roupas 1x', typeMoney = 'legal', price = 15000, qtd = 1 },
                { type = 'buy', index = 'radio', name = 'radio 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
                { type = 'buy', index = 'energetico', name = 'energetico 3x', typeMoney = 'legal', price = 400, qtd = 1 },
                { type = 'buy', index = 'mochila', name = 'mochila 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
            }
        },
        ['configNavShop17'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Central | LOJINHA (VENDA)', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
                { type = 'buy', index = 'celular', name = 'celular 1x', typeMoney = 'legal', price = 2000, qtd = 1 },
                { type = 'buy', index = 'repairkit', name = 'repairkit 1x', typeMoney = 'legal', price = 10000, qtd = 1 },
                { type = 'buy', index = 'roupas', name = 'roupas 1x', typeMoney = 'legal', price = 15000, qtd = 1 },
                { type = 'buy', index = 'radio', name = 'radio 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
                { type = 'buy', index = 'energetico', name = 'energetico 3x', typeMoney = 'legal', price = 400, qtd = 1 },
                { type = 'buy', index = 'mochila', name = 'mochila 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
            }
        },
        ['configNavShop18'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Central | LOJINHA (VENDA)', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
                { type = 'buy', index = 'celular', name = 'celular 1x', typeMoney = 'legal', price = 2000, qtd = 1 },
                { type = 'buy', index = 'repairkit', name = 'repairkit 1x', typeMoney = 'legal', price = 10000, qtd = 1 },
                { type = 'buy', index = 'roupas', name = 'roupas 1x', typeMoney = 'legal', price = 15000, qtd = 1 },
                { type = 'buy', index = 'radio', name = 'radio 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
                { type = 'buy', index = 'energetico', name = 'energetico 3x', typeMoney = 'legal', price = 400, qtd = 1 },
                { type = 'buy', index = 'mochila', name = 'mochila 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
            }
        },
        ['configNavShop19'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Central | LOJINHA (VENDA)', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
               { type = 'buy', index = 'celular', name = 'celular 1x', typeMoney = 'legal', price = 2000, qtd = 1 },
               { type = 'buy', index = 'repairkit', name = 'repairkit 1x', typeMoney = 'legal', price = 10000, qtd = 1 },
               { type = 'buy', index = 'roupas', name = 'roupas 1x', typeMoney = 'legal', price = 15000, qtd = 1 },
               { type = 'buy', index = 'radio', name = 'radio 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
               { type = 'buy', index = 'energetico', name = 'energetico 3x', typeMoney = 'legal', price = 400, qtd = 1 },
               { type = 'buy', index = 'mochila', name = 'mochila 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
            }
        },
		['configNavShop38'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Central | LOJINHA (VENDA)', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
               { type = 'buy', index = 'celular', name = 'celular 1x', typeMoney = 'legal', price = 2000, qtd = 1 },
               { type = 'buy', index = 'repairkit', name = 'repairkit 1x', typeMoney = 'legal', price = 10000, qtd = 1 },
               { type = 'buy', index = 'roupas', name = 'roupas 1x', typeMoney = 'legal', price = 15000, qtd = 1 },
               { type = 'buy', index = 'radio', name = 'radio 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
               { type = 'buy', index = 'energetico', name = 'energetico 3x', typeMoney = 'legal', price = 400, qtd = 1 },
               { type = 'buy', index = 'mochila', name = 'mochila 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
            }
        },
		['configNavShop39'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Central | LOJINHA (VENDA)', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
               { type = 'buy', index = 'celular', name = 'celular 1x', typeMoney = 'legal', price = 2000, qtd = 1 },
               { type = 'buy', index = 'repairkit', name = 'repairkit 1x', typeMoney = 'legal', price = 10000, qtd = 1 },
               { type = 'buy', index = 'roupas', name = 'roupas 1x', typeMoney = 'legal', price = 15000, qtd = 1 },
               { type = 'buy', index = 'radio', name = 'radio 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
               { type = 'buy', index = 'energetico', name = 'energetico 3x', typeMoney = 'legal', price = 400, qtd = 1 },
               { type = 'buy', index = 'mochila', name = 'mochila 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
            }
        },
        ['configNavShop20'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Central | MINERADOR (VENDA)', -- Name to display on the map!
                blipId = 52, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 4, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
               { type = 'sell', index = 'bronze', name = 'bronze 1x', typeMoney = 'legal', price = 150, qtd = 1 },
               { type = 'sell', index = 'ferro', name = 'ferro 1x', typeMoney = 'legal', price = 150, qtd = 1 },
               { type = 'sell', index = 'ouro', name = 'ouro 1x', typeMoney = 'legal', price = 150, qtd = 1 },
               { type = 'sell', index = 'rubi', name = 'rubi 1x', typeMoney = 'legal', price = 150, qtd = 1 },
               { type = 'sell', index = 'esmeralda', name = 'esmeralda 1x', typeMoney = 'legal', price = 150, qtd = 1 },
               { type = 'sell', index = 'diamante', name = 'diamante 1x', typeMoney = 'legal', price = 150, qtd = 1 },
               { type = 'sell', index = 'topazio', name = 'topazio 1x', typeMoney = 'legal', price = 150, qtd = 1 },
               { type = 'sell', index = 'ametista', name = 'ametista 1x', typeMoney = 'legal', price = 150, qtd = 1 },
               { type = 'sell', index = 'safira', name = 'safira 1x', typeMoney = 'legal', price = 150, qtd = 1 },
            }
        },
        ['configNavShop21'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'Central | GRÃOS (VENDA)', -- Name to display on the map!
                blipId = 67, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 2, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
               { type = 'sell', index = 'graos', name = 'graos 1x', typeMoney = 'legal', price = 250, qtd = 1 },
            }
        },
        ['configNavShop22'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'AMMUNATION ', -- Name to display on the map!
                blipId = 52, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 4, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
               { type = 'buy', index = 'wbody|WEAPON_KNIFE', name = 'knife 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_DAGGER', name = 'dagger 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_KNUCKLE', name = 'knuckle 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_MACHETE', name = 'machete 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_SWITCHBLADE', name = 'switchblade 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_WRENCH', name = 'wrench 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_HAMMER', name = 'hammer 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_GOLFCLUB', name = 'golfclub 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_CROWBAR', name = 'crowbar 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|GADGET_PARACHUTE', name = 'paraquedas 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
             --  { type = 'buy', index = 'colete', name = 'colete 1x', price = 10000, qtd = 1 },
            }
        },
        ['configNavShop23'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'AMMUNATION ', -- Name to display on the map!
                blipId = 52, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 4, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
               { type = 'buy', index = 'wbody|WEAPON_KNIFE', name = 'knife 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_DAGGER', name = 'dagger 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_KNUCKLE', name = 'knuckle 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_MACHETE', name = 'machete 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_SWITCHBLADE', name = 'switchblade 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_WRENCH', name = 'wrench 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_HAMMER', name = 'hammer 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_GOLFCLUB', name = 'golfclub 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_CROWBAR', name = 'crowbar 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|GADGET_PARACHUTE', name = 'paraquedas 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
             --  { type = 'buy', index = 'colete', name = 'colete 1x', price = 10000, qtd = 1 },
            }
        },
        ['configNavShop23'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'TT ', -- Name to display on the map!
                blipId = 52, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 4, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
               { type = 'sell', index = 'carregadorroubado', name = 'carregadorroubado 1x', typeMoney = 'ilegal', price = 120, qtd = 1 },
               { type = 'sell', index = 'carteiraroubada', name = 'carteiraroubada 1x', typeMoney = 'ilegal', price = 120, qtd = 1 },
               { type = 'sell', index = 'pulseiraroubada', name = 'pulseiraroubada 1x', typeMoney = 'ilegal', price = 120, qtd = 1 },
               { type = 'sell', index = 'sapatosroubado', name = 'sapatosroubado 1x', typeMoney = 'ilegal', price = 120, qtd = 1 },
               { type = 'sell', index = 'tabletroubado', name = 'tabletroubado 1x', typeMoney = 'ilegal', price = 120, qtd = 1 },
               { type = 'sell', index = 'vibradorroubado', name = 'vibradorroubado 1x',typeMoney = 'ilegal', price = 120, qtd = 1 },
               { type = 'sell', index = 'perfumeroubado', name = 'perfumeroubado 1x', typeMoney = 'ilegal', price = 120, qtd = 1 },
               { type = 'sell', index = 'brincoroubado', name = 'brincoroubado 1x', typeMoney = 'ilegal', price = 120, qtd = 1 },
            }
        },
        ['configNavShop24'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'AMMUNATION ', -- Name to display on the map!
                blipId = 52, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 4, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "armas.permissao", -- permissao para acessar o blip   
            shopConfig = {             
               { type = 'buy', index = 'gatilho', name = 'gatilho 1x', typeMoney = 'legal', price = 5000, qtd = 1 },
               { type = 'buy', index = 'molas', name = 'molas 1x', typeMoney = 'legal', price = 5000, qtd = 1 },
               { type = 'buy', index = 'placa-metal', name = 'placa-metal 1x', typeMoney = 'legal', price = 10000, qtd = 1 },
            }
        },
        ['configNavShop25'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'AMMUNATION ', -- Name to display on the map!
                blipId = 52, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 4, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "ilegal.permissao", -- permissao para acessar o blip   
            shopConfig = {             
               { type = 'buy', index = 'polvora', name = 'polvora 30x', typeMoney = 'legal', price = 5000, qtd = 1 },
            }
        },
        ['configNavShop26'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = ' Venda Lixeiro', -- Name to display on the map!
                blipId = 52, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 4, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
               { type = 'sell', index = 'plastico', name = 'plastico 1x', typeMoney = 'legal', price = 55, qtd = 1 },
               { type = 'sell', index = 'cobre', name = 'cobre 1x', typeMoney = 'legal', price = 55, qtd = 1 },
               { type = 'sell', index = 'cherenkov', name = 'cherenkov 1x', typeMoney = 'legal', price = 85, qtd = 1 },
            }
        },
        ['configNavShop27'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = ' Venda Lixeiro', -- Name to display on the map!
                blipId = 52, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 4, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "comandante.permissao", -- permissao para acessar o blip   
            shopConfig = {             
               { type = 'buy', index = 'wbody|WEAPON_PISTOL', name = 'Pistol M19 1x',  typeMoney = 'legal', price = 100000, qtd = 1 },
               { type = 'buy', index = 'wammo|WEAPON_PISTOL', name = 'muni M19 100x',  typeMoney = 'legal', price = 20000, qtd = 100 },
            }
        },
        ['configNavShop28'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'AMMUNATION ', -- Name to display on the map!
                blipId = 52, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 4, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
               { type = 'buy', index = 'wbody|WEAPON_KNIFE', name = 'knife 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_DAGGER', name = 'dagger 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_KNUCKLE', name = 'knuckle 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_MACHETE', name = 'machete 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_SWITCHBLADE', name = 'switchblade 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_WRENCH', name = 'wrench 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_HAMMER', name = 'hammer 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_GOLFCLUB', name = 'golfclub 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_CROWBAR', name = 'crowbar 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|GADGET_PARACHUTE', name = 'paraquedas 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
             --  { type = 'buy', index = 'colete', name = 'colete 1x', price = 10000, qtd = 1 },
            }
        },
        ['configNavShop29'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'AMMUNATION ', -- Name to display on the map!
                blipId = 52, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 4, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
               { type = 'buy', index = 'wbody|WEAPON_KNIFE', name = 'knife 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_DAGGER', name = 'dagger 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_KNUCKLE', name = 'knuckle 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_MACHETE', name = 'machete 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_SWITCHBLADE', name = 'switchblade 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_WRENCH', name = 'wrench 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_HAMMER', name = 'hammer 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_GOLFCLUB', name = 'golfclub 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_CROWBAR', name = 'crowbar 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|GADGET_PARACHUTE', name = 'paraquedas 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
             --  { type = 'buy', index = 'colete', name = 'colete 1x', price = 10000, qtd = 1 },
            }
        },
        ['configNavShop30'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'AMMUNATION ', -- Name to display on the map!
                blipId = 52, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 4, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
               { type = 'buy', index = 'wbody|WEAPON_KNIFE', name = 'knife 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_DAGGER', name = 'dagger 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_KNUCKLE', name = 'knuckle 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_MACHETE', name = 'machete 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_SWITCHBLADE', name = 'switchblade 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_WRENCH', name = 'wrench 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_HAMMER', name = 'hammer 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_GOLFCLUB', name = 'golfclub 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_CROWBAR', name = 'crowbar 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|GADGET_PARACHUTE', name = 'paraquedas 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
             --  { type = 'buy', index = 'colete', name = 'colete 1x', price = 10000, qtd = 1 },
            }
        },
        ['configNavShop31'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'AMMUNATION ', -- Name to display on the map!
                blipId = 52, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 4, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
               { type = 'buy', index = 'wbody|WEAPON_KNIFE', name = 'knife 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_DAGGER', name = 'dagger 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_KNUCKLE', name = 'knuckle 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_MACHETE', name = 'machete 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_SWITCHBLADE', name = 'switchblade 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_WRENCH', name = 'wrench 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_HAMMER', name = 'hammer 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_GOLFCLUB', name = 'golfclub 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_CROWBAR', name = 'crowbar 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|GADGET_PARACHUTE', name = 'paraquedas 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
             --  { type = 'buy', index = 'colete', name = 'colete 1x', price = 10000, qtd = 1 },
            }
        },
        ['configNavShop32'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'AMMUNATION ', -- Name to display on the map!
                blipId = 52, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 4, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
               { type = 'buy', index = 'wbody|WEAPON_KNIFE', name = 'knife 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_DAGGER', name = 'dagger 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_KNUCKLE', name = 'knuckle 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_MACHETE', name = 'machete 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_SWITCHBLADE', name = 'switchblade 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_WRENCH', name = 'wrench 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_HAMMER', name = 'hammer 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_GOLFCLUB', name = 'golfclub 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_CROWBAR', name = 'crowbar 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|GADGET_PARACHUTE', name = 'paraquedas 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
             --  { type = 'buy', index = 'colete', name = 'colete 1x', price = 10000, qtd = 1 },
            }
        },
        ['configNavShop33'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'AMMUNATION ', -- Name to display on the map!
                blipId = 52, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 4, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
               { type = 'buy', index = 'wbody|WEAPON_KNIFE', name = 'knife 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_DAGGER', name = 'dagger 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_KNUCKLE', name = 'knuckle 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_MACHETE', name = 'machete 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_SWITCHBLADE', name = 'switchblade 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_WRENCH', name = 'wrench 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_HAMMER', name = 'hammer 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_GOLFCLUB', name = 'golfclub 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_CROWBAR', name = 'crowbar 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|GADGET_PARACHUTE', name = 'paraquedas 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
             --  { type = 'buy', index = 'colete', name = 'colete 1x', price = 10000, qtd = 1 },
            }
        },
        ['configNavShop34'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'AMMUNATION ', -- Name to display on the map!
                blipId = 52, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 4, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
               { type = 'buy', index = 'wbody|WEAPON_KNIFE', name = 'knife 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_DAGGER', name = 'dagger 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_KNUCKLE', name = 'knuckle 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_MACHETE', name = 'machete 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_SWITCHBLADE', name = 'switchblade 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_WRENCH', name = 'wrench 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_HAMMER', name = 'hammer 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_GOLFCLUB', name = 'golfclub 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_CROWBAR', name = 'crowbar 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|GADGET_PARACHUTE', name = 'paraquedas 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
             --  { type = 'buy', index = 'colete', name = 'colete 1x', price = 10000, qtd = 1 },
            }
        },
        ['configNavShop35'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'AMMUNATION ', -- Name to display on the map!
                blipId = 52, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 4, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
               { type = 'buy', index = 'wbody|WEAPON_KNIFE', name = 'knife 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_DAGGER', name = 'dagger 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_KNUCKLE', name = 'knuckle 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_MACHETE', name = 'machete 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_SWITCHBLADE', name = 'switchblade 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_WRENCH', name = 'wrench 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_HAMMER', name = 'hammer 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_GOLFCLUB', name = 'golfclub 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_CROWBAR', name = 'crowbar 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|GADGET_PARACHUTE', name = 'paraquedas 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
             --  { type = 'buy', index = 'colete', name = 'colete 1x', price = 10000, qtd = 1 },
            }
        },
        ['configNavShop36'] = {
            type = 'navShop', -- não alterar
            input = 'navShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 29, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {201,201,201,75}, -- marker color (R,G,B,A)
                scale = {1.0, 1.0, 1.0},
                rotation = true, -- marker rotation
            },
            actionKey = 38,
            -- Map Configuration
            blip = {
                name = 'AMMUNATION ', -- Name to display on the map!
                blipId = 52, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 4, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip   
            shopConfig = {             
               { type = 'buy', index = 'wbody|WEAPON_KNIFE', name = 'knife 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_DAGGER', name = 'dagger 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_KNUCKLE', name = 'knuckle 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_MACHETE', name = 'machete 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_SWITCHBLADE', name = 'switchblade 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_WRENCH', name = 'wrench 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_HAMMER', name = 'hammer 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_GOLFCLUB', name = 'golfclub 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|WEAPON_CROWBAR', name = 'crowbar 1x', typeMoney = 'legal', price = 20000, qtd = 1 },
               { type = 'buy', index = 'wbody|GADGET_PARACHUTE', name = 'paraquedas 1x', typeMoney = 'legal', price = 3000, qtd = 1 },
             --  { type = 'buy', index = 'colete', name = 'colete 1x', price = 10000, qtd = 1 },
            }
        },
      
    },

    locs = {
        {showBlip = true, coord = vector3(-1845.05, -1195.67, 19.19), heading = 359.29, config = 'configNavShop1'},
        {showBlip = true, coord = vector3(139.5383605957,-379.06857299805,43.256980895996), heading = 359.29, config = 'configNavShop20'}, --Venda Minerador
        {showBlip = true, coord = vector3(2885.73, 4386.73, 50.74), heading = 359.29, config = 'configNavShop21'}, --Venda Minerador

    }
}

return cfg