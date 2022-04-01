local invoke = Citizen.InvokeNative

local function flag(ped, bool)
	if config?.kick then
		TriggerServerEvent('vyast-wd:kick')
	else
		RemoveAllPedWeapons(ped, true) --this will clear a players loadout if they are detected. add "--" to the front of this line to disable this.
		--SetEntityHealth(ped, 0) --this will kill a player if they are detected. remove the "--" from the front of this line to enable this.
	end
end

CreateThread(function()
    while true do
        local ped = PlayerPedId()

        for k, v in pairs(config?.weapons or {}) do
            print(invoke('0x8DECB02F88F428BC', ped, false), 'HasPedGotWeapon')
            if invoke('0x8DECB02F88F428BC', ped, false) then
            --if HasPedGotWeapon(ped, k, false) then --(HasPedGotWeapon) Checks if the player has the specified weapon first. You can remove this check if you want to.
                local ammo = GetMaxAmmoInClip(ped, k, 1)
                local damage = GetWeaponDamage(k)
            
                if ammo > v.clipSize then
                    flag(ped)
                elseif damage > v.damage then
                    flag(ped, true)
                end
            end
        end

        Wait(2500)
    end
end)
