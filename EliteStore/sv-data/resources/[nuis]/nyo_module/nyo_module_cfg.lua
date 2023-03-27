local cfg = {}

cfg.config = {
    frameWork = 'vrpex',
    token = 'ee881c058400fbd16764ed6147d7dd87',
    testMode = true,
    portTest = 30120,
    validServer = 1, -- Caso não validar no servidor 1, alterar para 2 e assim vice versa (disponivel no momento 1, 2 e 3)
    debugServer = false,
    debugServerThread = false,
    modules = {
        nyo_skinshop = true,
        nyo_guardaroupa = false,
        nyo_barbershop = true,        
        nyo_tattooshop = true,
        nyo_job = false,
        nyo_notify = false,
        nyo_notifyitem = false,
        nyo_progressbar = false,
        nyo_nuiconfig = false, -- não usar
        nyo_elevador = false,
        nyo_navshop = false,
        nyo_carsystem = false,
        nyo_robbery = false,
        nyo_fuel = false,
        nyo_bansystem = false,
        nyo_crosshair = false, -- não usar
        nyo_bennys = false, -- não usar
        nyo_conce = false, -- não usar
        nyo_garagem = false, -- não usar
        nyo_doorgates = false,
        nyo_anim = false, -- não usar
        nyo_rotas = false,
        nyo_cardamagesystem = false, -- não usar
        nyo_cloakroom = false,
    },
    barbershopinit = "elite-barbershop:init",
    perm = {
        adminPerm = 'manager.permissao',
        modPerm = 'moderador.permissao',
        policePerm = 'policia.permissao'
    },
    webHook = { 
        job = '', -- não utilizado nesta versão ainda
        robbery = '',
        hwidban = '',        
    },
    dinheiroSujo = 'dinheiro-sujo', -- Nome do Item do dinheiro sujo
}

return cfg