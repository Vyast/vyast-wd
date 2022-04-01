if config?.kick then
	RegisterNetEvent('vyast-wd:kick', function(bool)
		local reason = config?.kickReasons?.ammo
		if bool then reason = config?.kickReasons?.damage end

		print(('^4[%s] %s has been kicked for reason:^7 %s'):format(source, GetPlayerName(source), reason))
		
		DropPlayer(source, ('You have been kicked.\n\nReason: %s'):format(reason))
	end)
end
