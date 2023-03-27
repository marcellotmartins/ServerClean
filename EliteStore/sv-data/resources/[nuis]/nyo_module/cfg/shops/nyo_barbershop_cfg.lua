local cfg = {}
cfg.GeneralConfig = {    
    config = {
        ['configBarberShopAll'] = {
            type = 'barberShop', -- não alterar
            input = 'barberShop', -- não alterar
            -- Input configuration
            marker = { -- set custom marker if the type is marker
                id = 27, -- marker id = https://docs.fivem.net/docs/game-references/markers/
                color = {255,0,0,75}, -- marker color (R,G,B,A)
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
                name = 'Cabelereiro', -- Name to display on the map!
                blipId = 71, -- blip id = https://docs.fivem.net/docs/game-references/blips/
                blipColor = 4, -- color id
                blipScale = 0.5, -- scale for blip
            },  

            -- General Settings
            perm = "", -- permissão para acessar o blip
            shopType = "all", -- all (show all clouth), exclusive (displays only the set clothes), exclude (excludes set clothing)
            shopConfig = {
                [0] = {price = 500, item = {Male = {}, Female = {}}}, -- Defeitos
                [1] = {price = 500, item = {Male = {}, Female = {}}}, -- Barba
                [2] = {price = 500, item = {Male = {}, Female = {}}}, -- Sombrancelha
                [3] = {price = 500, item = {Male = {}, Female = {}}}, -- Envelhecimento
                [4] = {price = 500, item = {Male = {}, Female = {}}}, -- Maquiagem
                [5] = {price = 500, item = {Male = {}, Female = {}}}, -- Blush
                [6] = {price = 500, item = {Male = {}, Female = {}}}, -- Rugas
                [8] = {price = 500, item = {Male = {}, Female = {}}}, -- Batom
                [9] = {price = 500, item = {Male = {}, Female = {}}}, -- Sardas
                [10] = {price = 500, item = {Male = {}, Female = {}}}, -- Cabelo no Peito
                [11] = {price = 500, item = {Male = {}, Female = {}}}, -- Manchas no Corpo
                [12] = {price = 500, item = {Male = {}, Female = {}}}, -- Cabelo
                [13] = {price = 500, item = {Male = {}, Female = {}}}, -- Cor Sec. do Cabelo
            }    
        },
    },

    locs = {
        {showBlip = true, coord = vector3(-815.59,-182.16,36.66), heading = 204.29, config = 'configBarberShopAll'},
        {showBlip = true, coord = vector3(136.97,-1711.19,28.31), heading = 58.26, config = 'configBarberShopAll'},
        {showBlip = true, coord = vector3(-1282.00,-1118.86,6.00), heading = 7.00, config = 'configBarberShopAll'},
        {showBlip = true, coord = vector3(1934.11,3730.73,31.85), heading = 124.95, config = 'configBarberShopAll'},
        {showBlip = true, coord = vector3(1211.07,-475.00,65.31), heading = 345.26, config = 'configBarberShopAll'},
        {showBlip = true, coord = vector3(-34.97,-150.90,56.18), heading = 250.26, config = 'configBarberShopAll'},
        {showBlip = true, coord = vector3(-280.37,6227.01,30.70), heading = 321.81, config = 'configBarberShopAll'},
        {showBlip = true, coord = vector3(-1510.12,-3014.42,-79.24), heading = 360.0, config = 'configBarberShopAll'},
    },

    commands = {
        {showBlip = true, coord = vector3(-815.59,-182.16,36.66), raio = 100, command = "openBarberShop", config = 'configBarberShopAll'},
    }
}

return cfg