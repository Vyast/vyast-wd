# Weapon Detection
# https://github.com/Vyast/vyast-wd
A simple FiveM resource that checks for modified client meta/ai files that grant an unfair combat advantage.

Specifically, this will prevent players from modifying the native ammo clip size & damage values of their weapons.

There are currently only two weapons listed in the config by default. Add as many weapons to this list as you would like to detect. 

The values inside the config need to be set to whatever values are active on your server, those being the default values from the default weapons.meta file, or if you are using a custom weapons.meta file on your server, you need to adjust the values accordingly.

The two values within your weapons.meta file that correspond to the values within the config.lua are as follows:
weapons.meta: "Damage" & "ClipSize"
config.lua: "clipSize" & "damage"
