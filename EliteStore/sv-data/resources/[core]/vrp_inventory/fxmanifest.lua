
fx_version "bodacious"
game "gta5"

ui_page "web-side/index.html"

server_scripts {
	'@config/webhook.lua'
}

client_scripts {
	"@vrp/lib/utils.lua",
	"config.lua",
	"client.lua"
}

server_scripts {
	"@vrp/lib/utils.lua",
	"config.lua",
	"server.lua"
}

files {
	"web-side/*",
	"web-side/**/*"
}              