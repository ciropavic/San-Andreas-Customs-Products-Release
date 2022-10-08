RegisterCommand("Restrictedarea", function() 
	exports['413x-notify']:Alert("warning", "Restricted Area", "The Sandy Shores Regional Airport is restricted to to authorized personnel only, please leave the area or risk punishment!", 25000)
	end, false )



--- Sandy Shores Regional Airport, Activates at near the runway!
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        local player = source
        local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
        if GetDistanceBetweenCoords(x, y, z, 1725.0, 3248.3, 41.2, true) < 55 then
            exports['413x-notify']:Alert("warning", "Restricted Area", "The Sandy Shores Regional Airport is restricted to to authorized personnel only, please leave the area or risk punishment!", 25000) 
            Citizen.Wait(120000)
        end
    end
end)

--- Fort Zancudo GOH Gate,  Activates at the gate!
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        local player = source
        local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
        if GetDistanceBetweenCoords(x, y, z, -2305.1, 3388.7, 31.3, true) < 55 then
            exports['413x-notify']:Alert("warning", "Restricted Area", "Fort Zancudo is restricted to authorized personnel only, please leave the area or risk punishment!", 25000) 
            Citizen.Wait(120000)
        end
    end
end)

--- Fort Zancudo Apporach Gate, Activates at the gate!
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        local player = source
        local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
        if GetDistanceBetweenCoords(x, y, z, -1590.6, 2795.7, 17.1, true) < 55 then
            exports['413x-notify']:Alert("warning", "Restricted Area", "Fort Zancudo is restricted to authorized personnel only, please leave the area or risk punishment!", 25000) 
            Citizen.Wait(120000)
        end
    end
end)

--- LSIA Airfield, Activates near the runways!
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        local player = source
        local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
        if GetDistanceBetweenCoords(x, y, z, -1338.3, -3042.9, 13.9, true) < 500 then
            exports['413x-notify']:Alert("warning", "Restricted Area", "Los Santos International Airport is restricted to authorized personnel only, please leave the area or risk punishment!", 25000) 
            Citizen.Wait(120000)
        end
    end
end)


---  Blaine County Savings Bank, Activates inside the Valut.
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        local player = source
        local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
        if GetDistanceBetweenCoords(x, y, z, -100.82, 6463.8, 31.6, true) < 2 then
            exports['413x-notify']:Alert("warning", "Restricted Area", "The valut is restricted to authorized personnel only, please leave the area or risk punishment!", 25000) 
            Citizen.Wait(60000)
        end
    end
end)

---  Harmony Fleeca Bank, Activates inside the "Valut".
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        local player = source
        local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
        if GetDistanceBetweenCoords(x, y, z, 1179.3, 2711.8, 38.0, true) < 2 then
            exports['413x-notify']:Alert("warning", "Restricted Area", "The valut is restricted to authorized personnel only, please leave the area or risk punishment!", 25000) 
            Citizen.Wait(60000)
        end
    end
end)

---  Pacific Standard Bank, Activates on the stairs leading to valut and basement.
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        local player = source
        local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
        if GetDistanceBetweenCoords(x, y, z, 272.7, 215.8, 106.3, true) < 5 then
            exports['413x-notify']:Alert("warning", "Restricted Area", "The valut is restricted to authorized personnel only, please leave the area or risk punishment!", 25000) 
            Citizen.Wait(60000)
        end
    end
end)

---  Legion Square Fleeca Bank, Activates inside the "Valut".
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        local player = source
        local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
        if GetDistanceBetweenCoords(x, y, z, 143.9, -1043.9, 29.4, true) < 2 then
            exports['413x-notify']:Alert("warning", "Restricted Area", "The valut is restricted to authorized personnel only, please leave the area or risk punishment!", 25000) 
            Citizen.Wait(60000)
        end
    end
end)

---  Sandy Shores Sheriff Station, Activates inside the Jail Cells.
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        local player = source
        local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
        if GetDistanceBetweenCoords(x, y, z, 1810.8, -3678.6, 34.2, true) < 2 then
            exports['413x-notify']:Alert("warning", "Restricted Area", "This Area is Under Constant Video Surveillance!", 25000) 
            Citizen.Wait(60000)
        end
    end
end)

---  Mission Row Police, Activates at the Sinner Street Garage.
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        local player = source
        local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
        if GetDistanceBetweenCoords(x, y, z, 413.0, -1024.3, 29.5, true) < 5 then
            exports['413x-notify']:Alert("warning", "Restricted Area", "This Area is Under Constant Video Surveillance!", 25000) 
            Citizen.Wait(60000)
        end
    end
end)

---  Mission Row Police, Activates at the North Bullpin Door.
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        local player = source
        local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
        if GetDistanceBetweenCoords(x, y, z, 441.0, -972.8, 30.7, true) < 5 then
            exports['413x-notify']:Alert("warning", "Restricted Area", "This Area is Under Constant Video Surveillance!", 25000) 
            Citizen.Wait(60000)
        end
    end
end)

---  Mission Row Police, Activates at the North East Bullpin Door.
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        local player = source
        local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
        if GetDistanceBetweenCoords(x, y, z, 441.5, -995.2, 30.7, true) < 5 then
            exports['413x-notify']:Alert("warning", "Restricted Area", "This Area is Under Constant Video Surveillance!", 25000) 
            Citizen.Wait(60000)
        end
    end
end)