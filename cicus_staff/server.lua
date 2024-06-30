
ESX = exports["es_extended"]:getSharedObject()

ESX.RegisterServerCallback('CICUS:STAFF:REQUESTGROUP', function(src, cb)
    local xPlayer = ESX.GetPlayerFromId(src)
    cb({group = xPlayer.getGroup(),  name = GetPlayerName(src)})
end)