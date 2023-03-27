
fx_version 'bodacious'
game 'gta5'

dependency 'vrp'

client_scripts {
	"lib/Tunnel.lua",
	"lib/Proxy.lua",
	"@vrp/lib/utils.lua",
	"client.lua"
}

server_scripts {
	'@vrp/lib/utils.lua',
	'server.lua'
}

ui_page("nui/index.html")

files {
    "nui/index.html",
    "nui/adminescobar.js",
    "nui/styles.css",
	"nui/sweetalert2.all.min.js",
}