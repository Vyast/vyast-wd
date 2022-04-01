local cfg <const> = type(config) == 'table' and config or {}

local function flag(ped, bool)
	if cfg.kick then
		TriggerServerEvent('vyast-wd:kick')
	else
		RemoveAllPedWeapons(ped, bool) --this will clear a players loadout if they are detected. add "--" to the front of this line to disable this.
		--SetEntityHealth(ped, 0) --this will kill a player if they are detected. remove the "--" from the front of this line to enable this.
	end
end

CreateThread(function()
    while true do
        local ped = PlayerPedId()

        local hash = GetSelectedPedWeapon(ped)
        local weapon = cfg.weapons[hash]
        if weapon then
            local ammo, damage = GetMaxAmmoInClip(ped, hash, 1) > weapon.clipSize, GetWeaponDamage(hash) > weapon.damage
            if ammo or damage then
                flag(ped, damage and true or false)
            end
        end
        
        Wait(2500)
    end
end)
