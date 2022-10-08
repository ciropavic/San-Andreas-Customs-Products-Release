Healcooldown = false

RegisterCommand('heal', function(source, args, rawCommand)
    if Healcooldown == false then 
        exports['413x-notify']:Alert("info", "Player Health Tip", "You have been healed!", 2000)
        SetEntityHealth(GetPlayerPed(-1), 200)
        Healcooldown = true
        Wait(150000)
        Healcooldown = false

    end

    if Healcooldown == true then
        exports['413x-notify']:Alert("info", "Player Health Tip", "You have to wait 2.5 minutes since the last use of this command", 2000)
    end
end)


ArmourCoolDown = false

RegisterCommand('armour', function(source, args, rawCommand)
    if ArmourCoolDown == false then
        exports['413x-notify']:Alert("info", "Player Health Tip", "60% armour applied - Wait 5 mins to apply again", 2000)
        AddArmourToPed(GetPlayerPed(-1), 60)
        ArmourCoolDown = true
        Wait(150000)
        ArmourCoolDown = false

    end
    if ArmourCoolDown == true then
        exports['413x-notify']:Alert("info", "Player Health Tip", "You have to wait 2.5 minutes since the last use of this command", 2000) 
    end

end)



function notify(msg)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(true,false)
end