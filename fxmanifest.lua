fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Vyast'
description 'A simple resource that checks for client self-modified meta/ai files to gain an unfair combat advantage.'
version '1.0.1'

shared_script 'config.lua'
client_script 'client/main.lua'
server_scripts {'server/*.lua'}