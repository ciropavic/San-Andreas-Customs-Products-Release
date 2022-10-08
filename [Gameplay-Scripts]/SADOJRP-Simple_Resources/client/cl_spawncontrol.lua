function DisplayHelpText()
    SetTextComponentFormat("STRING")
    AddTextComponentString("")
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function DrawAdvancedText(x,y ,w,h,sc, text, r,g,b,a,font,jus)
    SetTextFont(font)
    SetTextProportional(0)
    SetTextScale(sc, sc)
	N_0x4e096588b13ffeca(jus)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
	DrawText(x - 0.1+w, y - 0.02+h)
end


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local player = source
        local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
        if GetDistanceBetweenCoords(x, y, z, 2043.1, 3430.4, 63.8, true) < 55 then
            SetPlayerCanDoDriveBy(player, false)
            DisablePlayerFiring(player, true)
            DisableControlAction(0, 140) -- Melee R
            DisableControlAction(0, 249, true)
            ClearPlayerWantedLevel(PlayerId())
            SetCurrentPedWeapon(GetPlayerPed(-1), GetHashKey("WEAPON_UNARMED"), true)

        else
            
        end
    end
end)

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        local player = source
        local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
        if GetDistanceBetweenCoords(x, y, z, 2043.1, 3430.4, 63.8, true) < 55 then
            exports['413x-notify']:Alert("info", "Spawn Control", "You may not speak or use weapons within the spawn area!", 25000) 
            Citizen.Wait(120000)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local player = source
        local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
        if GetDistanceBetweenCoords(x, y, z, 1831.8, 3675.5, 34.20, true) < 47 then
            SetPlayerCanDoDriveBy(player, false)
            DisablePlayerFiring(player, true)
            DisableControlAction(0, 140) -- Melee R
            ClearPlayerWantedLevel(PlayerId())
            SetCurrentPedWeapon(GetPlayerPed(-1), GetHashKey("WEAPON_UNARMED"), true)

        else
            
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        --GetDistanceBetweenCoords(1955.1, 3453.4, 65.6, 2093.7, 3361.0, 24.0, true)
        local player = source
        local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
        if GetDistanceBetweenCoords(x, y, z, 1842.0, 3664.5, 33.88, true) < 55 then
            exports['mythic_notify']:DoCustomHudText('error', 'Sandy Shores PD is a greenzone, you may not conduct violent roleplay or run from the police.', 15000, { ['background-color'] = '#98e39e', ['color'] = '#000000' }) 
            Citizen.Wait(120000)
        end
    end
end)
