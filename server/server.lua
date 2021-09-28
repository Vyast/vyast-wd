if config.kick then
    RegisterNetEvent('vyast-weaponDetection:server:kick-player', function(bool)
        local src = source

        local reason = config.kickReasons.ammo

        if bool then
            reason = config.kickReasons.damage
        end

        print(string.format('^4[vyast-weaponDetection]^0 - [%s] %s has been kicked for reason: %s', src, GetPlayerName(src), reason))
        
        DropPlayer(src, string.format('You have been kicked.\n\nReason: %s', reason))
    end)
end