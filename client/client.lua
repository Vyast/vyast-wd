Citizen.CreateThread(function()
    while true do
        local ped = PlayerPedId()

        for k, v in pairs(config.weapons) do
            if HasPedGotWeapon(ped, k, false) then --Checks if the player has the specified weapon first. You can remove this if you want to.
                local ammo = GetMaxAmmoInClip(ped, k, 1)
                local damage = GetWeaponDamage(k)
            
                if ammo > v.clipSize then
                    if config.kick then
                        TriggerServerEvent('vyast-weaponDetection:server:kick-player')
                    else
                        RemoveAllPedWeapons(ped, true) --this will clear a players loadout if they are detected. add "--" to the front of this line to disable this.
                        --SetEntityHealth(ped, 0) --this will kill a player if they are detected. remove the "--" from the front of this line to enable this.
                    end
                elseif damage > v.damage then
                    if config.kick then
                        TriggerServerEvent('vyast-weaponDetection:server:kick-player', true)
                    else
                        RemoveAllPedWeapons(ped, true) --this will clear a players loadout if they are detected. add "--" to the front of this line to disable this.
                        --SetEntityHealth(ped, 0) --this will kill a player if they are detected. remove the "--" from the front of this line to enable this.
                    end
                end
            end
        end

        Citizen.Wait(2500)
    end
end)
