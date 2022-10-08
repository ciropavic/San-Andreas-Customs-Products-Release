-- this is NOT a resource! put this in the EasyAdmin `plugins` folder

fx_version "cerulean"
lua54 'yes'

games {"gta5"}

server_scripts {
	"*_shared.lua",
	"*_server.lua"
}

client_scripts {
	"*_shared.lua",
	"*_client.lua"
}

escrow_ignore {
	'*.lua'
}