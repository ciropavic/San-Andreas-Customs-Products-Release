RegisterCommand("", function()
    giveWeapon("weapon_nightstick")
    giveWeapon("weapon_stungun")
    giveWeapon("weapon_flashlight")
    giveWeapon("weapon_combatpistol")
    GiveWeaponComponentToPed(GetPlayerPed(-1), 1593441988, 0x359B7AAE)
    giveWeapon("weapon_carbinerifle")
    GiveWeaponComponentToPed(GetPlayerPed(-1), -2084633992, 0x7BC4CDDC)
    GiveWeaponComponentToPed(GetPlayerPed(-1), -2084633992, 0xC164F53)
    GiveWeaponComponentToPed(GetPlayerPed(-1), -2084633992, 0xA0D89C42)
    giveWeapon("weapon_pumpshotgun")
    GiveWeaponComponentToPed(GetPlayerPed(-1), 487013001, 0x7BC4CDDC)
    SetPedArmour(GetPlayerPed(-1), 100)
    alert("~b~Given Cop Weapon Loadout + Armour")
end)

RegisterCommand("", function()
    RemoveAllPedWeapons(GetPlayerPed(-1), true)
    notify('~r~Cleared All Weapons.')
end)


LastVehicle = nil
RegisterCommand('pubcop', function(source, args, rawCommand)
    
    local ped = GetPlayerPed(-1)
    local modelhashed = GetHashKey("s_m_y_cop_01")

    -- Thanks to officalbadger for the Uniform code 
    RequestModel(modelhashed)
    while not HasModelLoaded(modelhashed) do 
        RequestModel(modelhashed)
        Citizen.Wait(0)
    end
    SetPlayerModel(PlayerId(), modelhashed)
    SetModelAsNoLongerNeeded(modelHashed)
    
    if LastVehicle ~= nil then 
    DeleteVehicle(LastVehicle)
    end
        local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 0.0, 0.0))
        local veh = "cvpi"
        vehiclehash = GetHashKey(veh)
        RequestModel(vehiclehash)
        notify('~b~Please Utilize the ~r~/onduty ~b~command. Then, join the teamspeak.')
   
        Citizen.CreateThread(function() 
            local waiting = 0
            while not HasModelLoaded(vehiclehash) do
                waiting = waiting + 100
                Citizen.Wait(100)
                if waiting > 5000 then
                    ShowNotification("~r~Could not load the vehicle model in time, a crash was prevented. Contact development")
                    break
                end
            end
            LastVehicle = CreateVehicle(vehiclehash, x, y, z, GetEntityHeading(PlayerPedId())+90, 1, 0)
            TaskWarpPedIntoVehicle(GetPlayerPed(-1), LastVehicle, -1)
        end)
    end)

--Thanks to jeva for the fivem tutorials too :D


