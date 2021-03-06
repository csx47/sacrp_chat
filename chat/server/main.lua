AddEventHandler("chatMessage", function(source, color, message)
    local src = source
    args = stringsplit(message, " ")
    CancelEvent()
    if string.find(args[1], "/") then
        local cmd = args[1]
        table.remove(args, 1)
        TriggerClientEvent('chat:addMessage', src, {
            template = '<div class="chat-message system"><b>^1SYSTEM:</b> Invalid usage. For a list of all commands, type /help.</div>',
            args = { message }
        })
    else
        local name = GetPlayerName(src)
        local convarValue = GetConvar("discordAce_started", "false")
        if convarValue == "true" then
            tag = exports['DiscordAcePerms']:GetChatTag(src)
            if tag then
                name = tag..name
            end
        end
        TriggerClientEvent('chat:addMessage', -1, {
            template = '<div class="chat-message nonemergency"><b>^_[OOC]^r {0} ^*>>^r</b> {1}</div>',
            args = { name, message }
        })
    end
end)

RegisterServerEvent('chat:server:ServerPSA')
AddEventHandler('chat:server:ServerPSA', function(message)
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div class= "chat-message server">^*SERVER: {0}</div>',
        args = { message }
    })
    CancelEvent()
end)

function stringsplit(inputstr, sep)
	if sep == nil then
		sep = "%s"
	end
	local t={} ; i=1
	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
		t[i] = str
		i = i + 1
	end
	return t
end