AddEventHandler('weaponDamageEvent', function(sender, data)
    local src = sender 
    local ped = GetPlayerPed(src)

    if ped then 
        if data.weaponType == 2725352035 and data.impactDirZ > 5 then 
            CancelEvent()
            ATLAS_ACTION(src, "Anti punch all")
        end
    end
end)