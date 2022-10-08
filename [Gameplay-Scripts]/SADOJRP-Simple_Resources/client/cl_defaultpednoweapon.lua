function ShowNotification(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10000)
        local playerModel = GetEntityModel(GetPlayerPed(-1))
        if GetHashKey("a_m_y_skater_02") == playerModel or GetHashKey("a_m_y_skater_01") == playerModel  or GetHashKey("a_m_y_hipster_01") == playerModel then
            RemoveAllPedWeapons(GetPlayerPed(-1), false)
            TriggerEvent('chat:addMessage', {
               color = { 255, 0, 0},
               multiline = true,
               args = {"^*^1Server", "^*^7Please change your Ped to roleplay."}
              })
              ShowNotification('Weapons & Vehicles disabled change your ped.')
            if IsPedInAnyVehicle(GetPlayerPed(-1)) then
                DeleteVehicle(GetVehiclePedIsIn(GetPlayerPed(-1), false))
            end
        elseif GetHashKey("a_m_m_acult_01") == playerModel or GetHashKey("a_m_y_acult_01") == playerModel or GetHashKey("a_m_o_acult_01") == playerModel then
            local model = 'a_m_y_skater_01'
            if IsModelInCdimage(model) and IsModelValid(model) then
                RequestModel(model)
                while not HasModelLoaded(model) do
                    Citizen.Wait(100)
                    Citizen.Trace("Waiting for Ped Load\n")
                end
                SetPlayerModel(PlayerId(), model)
                SetModelAsNoLongerNeeded(model)
                ShowNotification("~r~Blacklisted Ped")
            end
        end
    end
end)