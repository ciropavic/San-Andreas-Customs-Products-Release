Citizen.CreateThread(function()
    while true do
        local PlayerName = GetPlayerName(PlayerId())
        local id = GetPlayerServerId(PlayerId())
        -- This is the Application ID (Replace this with you own)
        SetDiscordAppId(1004864851774013560)
        SetRichPresence(PlayerName.." ["..id.."]") -- This will take the player name and the Id
        -- Here you will have to put the image name for the "large" icon.
        -- You can create one by go to Rich Presence/Art Assets tab in your application and  click Add Image(s)
        -- The Paramater is your Image key that you uploaded (you can change it too once you upload)
        SetDiscordRichPresenceAsset('unknown_1024x1024')
        -- Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText('San Andreas Department Of Justice Roleplay')
        --[[ 
            Here you can add buttons that will display in your Discord Status,
            First paramater is the button index (0 or 1), second is the title and 
            last is the url (this has to start with "fivem://connect/" or "https://") 
        ]]--
        SetDiscordRichPresenceAction(0, "Join Our Discord!", "https://discord.gg/n6384P4TrX")
        --You can add more Natives Here vvv
        SetDiscordRichPresenceAction(1, "Join Our Server!", "cfx.re/join/dedzqj")
        -- Updates every 10s 
        Citizen.Wait(10000)
    end
end)