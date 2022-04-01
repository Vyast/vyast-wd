CreateThread(function()
    local url = 'https://raw.githubusercontent.com/Vyast/versions/main/wd.txt'
    local version = GetResourceMetadata(GetCurrentResourceName(), 'version', 0)

    PerformHttpRequest(url, function(errorCode, resultData, resultHeaders)
        if resultData and errorCode == 200 then
            resultData = resultData:match('%d%.%d+%.%d+')
            if version < resultData then
                print(('^6A new version is available. ^7(Current Version: ^1%s^7, Latest Version: ^2%s^7)'):format(version, resultData))
            end
        end
    end, 'GET')
end)