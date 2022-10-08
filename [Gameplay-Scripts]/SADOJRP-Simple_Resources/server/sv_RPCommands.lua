
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/ooc" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^*[OOC]" .. name, { 128, 128, 128 }, string.sub(msg,5))
	end

	if sm[1] == "/me" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^3> ^7" .. name, { 128, 128, 128 }, string.sub(msg,5))
	end


    if sm[1] == "/news" then
        CancelEvent()
        TriggerClientEvent("chatMessage", -1, "^*[News]^r" .. name, {255, 255, 255}, string.sub(msg,5))
    end

    if sm[1] == "/vpn" then
        CancelEvent()
        TriggerClientEvent("chatMessage", -1, "^*[^*VPN] @^*Anonymous^r", {255, 255, 255}, string.sub(msg,5))
    end

    if sm[1] == "/id" then
        CancelEvent()
        TriggerClientEvent("chatMessage", -1, "^*^5[ID]^7" .. name, {255, 255, 255}, string.sub(msg,5))
    end

    if sm[1] == "/twt" then
        CancelEvent()
        TriggerClientEvent("chatMessage", -1, "^*^5[Twitter]^7 " .. name, {255, 255, 255}, string.sub(msg,5))
    end

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
