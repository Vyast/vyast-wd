fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Vyast'
description 'A simple that will stop players from using "modified game files" to gain an unfair combat advantage.'
version '1.0.1'

shared_script 'config.lua'
client_script 'client/main.lua'
server_scripts {'server/*.lua'}