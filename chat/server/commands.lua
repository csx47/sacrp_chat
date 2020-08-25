--[[ COMMANDS ]]--

RegisterCommand('say', function(source, args, rawCommand)
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div class="chat-message system"><b>^1{0}^0 ^*>>^r</b> {1}</div>',
        args = { "[SYSTEM]", table.concat(args, " ") }
    })
    TriggerClientEvent('mythic_notify:client:SendAlert', -1, {type= "error", text = rawCommand:sub(5), length = 10000})
end, true)

RegisterCommand('clear', function(source, args, rawCommand)
    TriggerClientEvent('chat:client:ClearChat', source)
end, false)

RegisterCommand('clearallchat', function(source, args, rawCommand)
    TriggerClientEvent('chat:client:ClearChat', -1)
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div class="chat-message system"><b>^1{0}^0 ^*>>^r</b> {1}</div>',
        args = { "[SYSTEM]", "^1CHAT CLEARED BY ^0"..GetPlayerName(source) }
    })
end, true)

RegisterCommand('ooc', function(source, args, rawCommand)
    local src = source
    local msg = rawCommand:sub(5)
    if player ~= false then
        local user = GetPlayerName(src)
            TriggerClientEvent('chat:addMessage', -1, {
            template = '<div class = "chat-message nonemergency"><b>^_[OOC]^r {0} ^*>>^r</b> {1}</div>',
            args = { user, msg }
        })
    end
end, false)

RegisterCommand('twt', function(source, args, rawCommand)
    local src = source
    local msg = rawCommand:sub(5)
    if player ~= false then
        local user = GetPlayerName(src)
            TriggerClientEvent('chat:addMessage', -1, {
            template = '<div class="chat-message twitter"><b>^_[TWITTER]^r {0} ^*>>^r</b> {1}</div>',
            args = { user, msg }
        })
    end
end, false)

RegisterCommand('ad', function(source, args, rawCommand)
    local src = source
    local msg = rawCommand:sub(4)
    if player ~= false then
        local user = GetPlayerName(src)
            TriggerClientEvent('chat:addMessage', -1, {
            template = '<div class="chat-message advert"><b>^_[AD]^r {0} ^*>>^r</b> {1}</div>',
            args = { user, msg }
        })
    end
end, false)

--RegisterCommand('911', function(source, args, rawCommand)
--    local src = source
--    local msg = rawCommand:sub(5)
--    if player ~= false then
--        local user = GetPlayerName(src)
--            TriggerClientEvent('chat:addMessage', -1, {
--            template = '<div class="chat-message emergency"><b>911 {0}:</b> {1}</div>',
--            args = { user, msg }
--        })
--    end
--end, false)

RegisterCommand('vpn', function(source, args, rawCommand)
    local src = source
    local msg = rawCommand:sub(5)
    if player ~= false then
        local user = GetPlayerName(src)
            TriggerClientEvent('chat:addMessage', -1, {
            template = '<div class="chat-message vpn"><b>^_[VPN]^r {0} ^*>>^r</b>^2 {1}</div>',
            args = { user, msg }
        })
    end
end, false)

RegisterCommand('me', function(source, args, rawCommand)
    local src = source
    local msg = rawCommand:sub(4)
    if player ~= false then
        local user = GetPlayerName(src)
            TriggerClientEvent('chat:addMessage', -1, {
            template = '<div class="chat-message me"><b>^_[ME]^r {0} ^*>>^r</b> {1}</div>',
            args = { user, msg }
        })
    end
end, false)