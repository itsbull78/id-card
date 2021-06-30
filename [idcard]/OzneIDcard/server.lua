ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterNetEvent('ozne:achetersacarte')
AddEventHandler('ozne:achetersacarte', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 100
    local xMoney = xPlayer.getMoney()
    local item = 'carteidentite'
    local carte = xPlayer.getInventoryItem(item).count

    if carte <=0 then    
        if xPlayer.getMoney() >= price then
            TriggerClientEvent('esx:showNotification', source, "~o~LARRY~s~ :\nPayment ~ g ~ accepted~s~\nyou have to pay ~g~".. price .."$") 
            xPlayer.removeMoney(price)
            xPlayer.addInventoryItem(item, 1)
        else
            TriggerClientEvent('esx:showNotification', source, "~o~LARRY~s~ :\nPayment ~ r ~ refused")
        end
    else
        TriggerClientEvent('esx:showNotification', source, '~r~LARRY :\n~s~You already have a card to register !!')
    end       

end)