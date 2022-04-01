config = {}

config.weapons = { --use `` instead of "" or ''! 
    [`WEAPON_APPISTOL`] = {clipSize = 18, damage = 28.0}, --These are the default values, if you stream a custom weapons.meta file, change these accordingly!
    [`WEAPON_COMBATPISTOL`] = {clipSize = 12, damage = 27.0}
}

config.kick = true --Kick the player on detection?
config.kickReasons = {
    ammo = 'Modified Ammo Clip Size',
    damage = 'Modified Weapon Damage Values'
}