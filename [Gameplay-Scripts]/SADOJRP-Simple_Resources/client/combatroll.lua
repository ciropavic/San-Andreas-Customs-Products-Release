
-- Combat Roll -- 

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if IsControlPressed(0, 25)
			then DisableControlAction(0, 22, true)
		end
	end
end)

-- Pistol Whipping -- 

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
		local ped = PlayerPedId()
            	if IsPedArmed(ped, 6) then
	    	DisableControlAction(1, 140, true)
            	DisableControlAction(1, 141, true)
            	DisableControlAction(1, 142, true)
        end
    end
end)