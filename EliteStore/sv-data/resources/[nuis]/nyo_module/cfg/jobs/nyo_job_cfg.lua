local cfg = {}
cfg.GeneralConfig = {
    
    config = {
        -- Config do Ponto inicial do emprego de Motorista de Onibus
        ['configJobMotorista'] = {
            type = 'job',
            input = 'motorista',
            displayName = "Onibus",
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {255,255,0,75}, -- marker color (R,G,B,A)
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
            perm = "",
            -- Map Configuration
            blip = {
                name = 'Central | Motorista de Onibus', -- Name to display on the map!
                blipId = 513, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  
        },

        -- Config do Ponto inicial do emprego de Lixeiro
        ['configJobGarbage'] = {
            type = 'job',
            input = 'garbage',
            displayName = 'Lixeiro',
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {255,255,0,75}, -- marker color (R,G,B,A)
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
            perm = "",

            -- Map Configuration
            blip = {
                name = 'Central | Lixeiro', -- Name to display on the map!
                blipId = 318, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  
        },

        -- Config do Ponto inicial do emprego de Minerador
        ['configJobMinerador'] = {
            type = 'job',
            input = 'miner',
            displayName = 'Minerador',
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {255,255,0,75}, -- marker color (R,G,B,A)
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
            perm = "",

            -- Map Configuration
            blip = {
                name = 'Central | Minerador', -- Name to display on the map!
                blipId = 477, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  
        },

        -- Config do Ponto inicial do emprego de pescador 
        ['configJobPescador'] = {
            type = 'job',
            input = 'fisher',
            displayName = 'Pescador',
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {255,255,0,75}, -- marker color (R,G,B,A)
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
            perm = "",

            -- Map Configuration
            blip = {
                name = 'Central | Pescador', -- Name to display on the map!
                blipId = 68, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  
        },


        -- Config do Ponto inicial do emprego de Mergulhador
        ['configScuba'] = {
            type = 'job',
            input = 'scubaDiver',
            displayName = 'Mergulhador',
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {255,255,0,75}, -- marker color (R,G,B,A)
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
            perm = "",

            -- Map Configuration
            blip = {
                name = 'Central | Mergulhador', -- Name to display on the map!
                blipId = 68, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  
        },

        -- Config do Ponto inicial do emprego de Fazendeiro
        ['configFarmer'] = {
            type = 'job',
            input = 'farmer',
            displayName = 'Fazendeiro',
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {255,255,0,75}, -- marker color (R,G,B,A)
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
            perm = "",

            -- Map Configuration
            blip = {
                name = 'Central | Fazendeiro', -- Name to display on the map!
                blipId = 478, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  
        },

        -- Config do Ponto inicial do emprego de Lixeiro V2
        ['configJobGarbagev2'] = {
            type = 'job',
            input = 'garbagev2',
            displayName = 'Lixeiro',
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {255,255,0,75}, -- marker color (R,G,B,A)
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
            perm = "",

            -- Map Configuration
            blip = {
                name = 'Central | Lixeiro', -- Name to display on the map!
                blipId = 318, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 13, -- color id
                blipScale = 0.5, -- scale for blip
            },  
        },
    },

    locs = {
        -- Jobs Basic
        {showBlip = true, coord = vector3(453.34765625,-607.71734619141,27.581958770752), heading = 359.29, config = 'configJobMotorista'},
        {showBlip = true, coord = vector3(-349.84,-1569.79,24.32), heading = 359.29, config = 'configJobGarbage'},
        {showBlip = true, coord = vector3(1054.13,-1952.76,31.29), heading = 359.29, config = 'configJobMinerador'},
        {showBlip = true, coord = vector3(1514.40,3784.3022,33.66), heading = 359.29, config = 'configJobPescador'},
        -- Jobs Intermed
        {showBlip = true, coord = vector3(-1820.33,-1220.37,12.11), heading = 359.29, config = 'configScuba'},
        {showBlip = true, coord = vector3(1966.84,4634.31,40.20), heading = 359.29, config = 'configFarmer'},
        -- {showBlip = true, coord = vector3(-349.84,-1569.79,24.32), heading = 359.29, config = 'configJobGarbagev2'},
        
        
    }    

}

return cfg