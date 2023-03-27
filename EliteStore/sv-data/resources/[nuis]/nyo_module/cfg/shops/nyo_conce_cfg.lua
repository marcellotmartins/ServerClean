local cfg = {}
cfg.GeneralConfig = {   
    config = { 
        ['configConce'] = {
            type = 'conce', -- não alterar
            input = 'conce', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {0,255,0,75}, -- marker color (R,G,B,A)
                scale = {4.0, 4.0, 1.0},
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
                name = 'Concessionaria', -- Name to display on the map!
                blipId = 73, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissao para acessar o blip               
            conceConfig = {
                playerSell = false, -- habilita a venda de veiculo para outro player (pela conce)
                playerSellTax = 10, -- taxa em % para venda de veiculo a outro player
                playerVehicle = false, -- habilita venda de veiculo para a cidade
                playerVehicleSellTax = 20, -- taxa em % para venda de veiculo para a cidade
                conceCat = {
                    vehicle = {
                        icon = '',
                        title = '',
                        vehicles = {
                            ['panto'] = 100000,
                            ['neon'] = 500000
                        }
                    },
                    exclusive = {
                        icon = '',
                        title = '',
                        vehicles = {
                            ['kuruma'] = 100000,
                            ['sanchez'] = 500000
                        }
                    }
                }                
            }
        },
    },

    locs = {
        {showBlip = true, coord = vector3(-795.97,-220.05,37.25), heading = 317.03, config = 'configConce'},
    },
    
}

return cfg