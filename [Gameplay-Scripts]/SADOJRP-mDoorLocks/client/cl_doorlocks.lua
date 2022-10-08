doorList = Config.doorList

Citizen.CreateThread(function()
    while true do
		Citizen.Wait(0)
        for i = 1, #doorList do
            local playerCoords = GetEntityCoords( GetPlayerPed(-1) )
            local closeDoor = GetClosestObjectOfType(doorList[i]["x"], doorList[i]["y"], doorList[i]["z"], 1.0, GetHashKey(doorList[i]["objName"]), false, false, false)
            local objectCoordsDraw = GetEntityCoords( closeDoor )            
            local playerDistance = GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, doorList[i]["x"], doorList[i]["y"], doorList[i]["z"], true)

            if(playerDistance < doorList[i]["distance"]) then
                if doorList[i]["locked"] == true then
                    DrawText3d(doorList[i]["x"], doorList[i]["y"], doorList[i]["z"], "[E] - Locked")
                else
                    DrawText3d(doorList[i]["x"], doorList[i]["y"], doorList[i]["z"], "[E] - Unlocked")
                end
                
                -- Control input for door locking.
                if (IsControlJustReleased(0, 51) and IsInputDisabled(0) and isAuthorized) then
                    TriggerEvent('mDoorLocks:anim')
                    Citizen.Wait(850)
                        if doorList[i]["locked"] == true then
                            FreezeEntityPosition(closeDoor, false)
                            doorList[i]["locked"] = false
                        else
                            FreezeEntityPosition(closeDoor, true)
                            doorList[i]["locked"] = true
                        end
                        TriggerServerEvent('mDoorLocks:update', i, doorList[i]["locked"])
                    end
                else
                    FreezeEntityPosition(closeDoor, doorList[i]["locked"])
                end
            end
        end
    end)

function DrawText3d(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    
    if onScreen then
        SetTextScale(0.35, 0.35)
        SetTextFont(4)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 215)
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
        local factor = (string.len(text)) / 370
        DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 100)
		ClearDrawOrigin()
    end
end

function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Citizen.Wait(5)
    end
end

RegisterNetEvent('mDoorLocks:anim')
AddEventHandler('mDoorLocks:anim', function()
    ClearPedSecondaryTask(GetPlayerPed(-1))
    loadAnimDict("anim@heists@keycard@") 
    TaskPlayAnim(GetPlayerPed(-1), "anim@heists@keycard@", "exit", 8.0, 1.0, -1, 16, 0, 0, 0, 0)
    Citizen.Wait(850)
    ClearPedTasks(GetPlayerPed(-1))
end)

RegisterNetEvent('mDoorLocks:state')
AddEventHandler('mDoorLocks:state', function(id, isLocked)
    if type(doorList[id]) ~= nil then
        doorList[id]["locked"] = isLocked
    end
end)

isAuthorized = false
TriggerServerEvent('mDoorLocks:LEOPerms')
RegisterNetEvent('mDoorLocks:LEOPermsResult')
AddEventHandler('mDoorLocks:LEOPermsResult', function(Allowed)
    if Allowed then
        isAuthorized = true
    else
        isAuthorized = false
    end
end)
