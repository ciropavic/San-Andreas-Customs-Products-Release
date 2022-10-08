RegisterCommand("BlaineCountySavings", function() 
	exports['413x-notify']:Alert("warning", "Bank Information", "Thanks for visiting Blaine County Savings Bank in Paleto Bay! Visit the front counter to complete your transaction, or head to the vault to unlawfully borrow some money!", 25000)
	end, false )

RegisterCommand("HarmonyFleeca", function() 
	exports['413x-notify']:Alert("warning", "Bank Information", "Thanks for visiting Blaine County Savings Bank in Paleto Bay! Visit the front counter to complete your transaction, or head to the vault to unlawfully borrow some money!", 25000)
	end, false )

--- Blaine County Savings Bank, Activates at Front Door!
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        local player = source
        local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
        if GetDistanceBetweenCoords(x, y, z, -111.1, 6462.7, 31.6, true) < 2 then
            exports['413x-notify']:Alert("info", "Bank Information", "Thanks for visiting Blaine County Savings Bank in Paleto Bay! Visit the front counter to complete your transaction, or head to the vault to unlawfully borrow some money! ", 25000) 
            Citizen.Wait(600000)
        end
    end
end)

--- Harmony Fleeca Savings Bank, Activates at Front Door!
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        local player = source
        local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
        if GetDistanceBetweenCoords(x, y, z, 1175.1, 2705.9, 38.1, true) < 2 then
            exports['413x-notify']:Alert("info", "Bank Information", "Thanks for visiting Fleeca Bank in Harmony! Visit the front counter to complete your transaction, or head to the vault to unlawfully borrow some money! ", 25000) 
            Citizen.Wait(600000)
        end
    end
end)

--- Los Santos Pacific Standard, Activates at Front Door!
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        local player = source
        local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
        if GetDistanceBetweenCoords(x, y, z, 234.0, 216.4, 106.3, true) < 2 then
            exports['413x-notify']:Alert("info", "Bank Information", "Thanks for visiting Pacific Standard in Los Santos! Visit the front counter to complete your transaction, or head to the vault to unlawfully borrow some money! ", 25000) 
            Citizen.Wait(600000)
        end
    end
end)

--- Los Santos Pacific Standard, Activates at Side Door!
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        local player = source
        local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
        if GetDistanceBetweenCoords(x, y, z, 266.9, 203.7, 106.2, true) < 2 then
            exports['413x-notify']:Alert("info", "Bank Information", "Thanks for visiting Pacific Standard in Los Santos! Visit the front counter to complete your transaction, or head to the vault to unlawfully borrow some money! ", 25000) 
            Citizen.Wait(600000)
        end
    end
end)

--- Fleeca Bank at 206, Activates at Front Door!
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        local player = source
        local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
        if GetDistanceBetweenCoords(x, y, z, 150.3, -1039.8, 29.4, true) < 2 then
            exports['413x-notify']:Alert("info", "Bank Information", "Thanks for visiting Fleeca Bank in Legion Square! Visit the front counter to complete your transaction, or head to the vault to unlawfully borrow some money! ", 25000) 
            Citizen.Wait(600000)
        end
    end
end)