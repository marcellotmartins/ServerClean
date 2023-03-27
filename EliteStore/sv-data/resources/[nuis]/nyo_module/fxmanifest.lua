client_script "@vrp/lib/lib.lua" --Para remover esta pendencia de todos scripts, execute no console o comando "uninstall"

fx_version 'bodacious'
game 'gta5'

ui_page "nui/index.html"

client_scripts {
	'@vrp/lib/utils.lua',
	'nyo_module_lib.lua',
	'cfg/jobs/*.lua',
	'nyo_module_cl_functions.lua',
	'nyo_module_cl.lua',    
}

server_scripts {
	'@vrp/lib/utils.lua',
	--'nyo_module_cfg2.lua',
	'nyo_module_functions.lua',
	'nyo_module_sv.lua'
}

files {
	"nui/index.html",
	"nui/script.js",
	"nui/style.css",
	"nui/fonts/*",
	"nui/**/*",
	"data/*",
	"data/**/*",
	"cfg/outros/nyo_anim_cfg.lua"
}

data_file 'TATTOO_SHOP_DLC_FILE' 'mpheist3/shop_tattoo.meta'
data_file 'PED_OVERLAY_FILE' 'mpheist3/mpheist3_overlays.xml'
data_file 'TATTOO_SHOP_DLC_FILE' 'mpvinewood/shop_tattoo.meta'
data_file 'PED_OVERLAY_FILE' 'mpvinewood/mpvinewood_overlays.xml'
data_file 'TATTOO_SHOP_DLC_FILE' 'mpheist4/shop_tattoo.meta'
data_file 'PED_OVERLAY_FILE' 'mpheist4/mpheist4_overlays.xml'
data_file 'TATTOO_SHOP_DLC_FILE' 'nyo/shop_tattoo.meta'
data_file 'PED_OVERLAY_FILE' 'data/nyo_overlays/nyo_overlays.xml'