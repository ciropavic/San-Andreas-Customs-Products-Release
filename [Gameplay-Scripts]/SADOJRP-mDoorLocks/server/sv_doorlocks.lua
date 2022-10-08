isLocked = nil

RegisterServerEvent('mDoorLocks:update')
AddEventHandler('mDoorLocks:update', function(id, isLocked)
    if (id ~= nil and isLocked ~= nil) then
		TriggerClientEvent('mDoorLocks:state', -1, id, isLocked)
		
    end
end)

RegisterServerEvent('mDoorLocks:LEOPerms')
AddEventHandler('mDoorLocks:LEOPerms', function()
    if IsPlayerAceAllowed(source, 'doorlocks.allow') then
		TriggerClientEvent('mDoorLocks:LEOPermsResult', source, true)
	else
		TriggerClientEvent('mDoorLocks:LEOPermsResult', source, false)
	end
end)