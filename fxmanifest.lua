fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Vyast'
description 'A simple resource that checks for modified client meta/ai files that grant an unfair combat advantage.'
version '1.0.1'

shared_script 'config.lua'
client_script 'client/main.lua'
server_scripts {'server/*.lua'}