fx_version 'cerulean'
game 'gta5'

description 'Notification System by hgscripts'
version '1.0.0'
lua54 'yes'

ui_page "ui/index.html"

files{
  'ui/*',
  'ui/**/*'
}

client_scripts {
  'client/client.lua',
} 

server_scripts {
  'server/server.lua',
}

shared_scripts {
	'config.lua'
}

escrow_ignore {
    'config.lua',
    'client/client.lua',
    'server/server.lua'
}

