-- RegisterCommand

local ESX, display = exports["es_extended"]:getSharedObject(), false


RegisterCommand(CICUS_staff.main.commands, function()
    ESX.TriggerServerCallback("CICUS:STAFF:REQUESTGROUP", function(cb) 
        if group ~= "user" then
            if not display then
                display = true
                Draw3dtext(cb.group, cb.name)
            else
                display = false
                Draw3dtext(cb.group, cb.name)
            end
        else
            display = false
            CICUS_staff.main.notification()
        end
    end)
end, false)



function Draw3dtext(group, name)
    while display do
        Wait(0)
        local ped = PlayerPedId()
        local pos = GetOffsetFromEntityInWorldCoords(ped, 0.0, 0.0, 1.0)
        local camCoords = GetGameplayCamCoord()
        local dist = #(pos - camCoords)
        local scale_cam = 200 / (GetGameplayCamFov() * dist)

        SetTextColour(CICUS_staff.roles[group].color[1], CICUS_staff.roles[group].color[2], CICUS_staff.roles[group].color[3], CICUS_staff.roles[group].color[4])
        SetTextScale(CICUS_staff.text.scale[1], scale_cam * CICUS_staff.text.scale[2])
        SetTextFont(CICUS_staff.text.font)
        SetTextDropshadow(0, 0, 0, 0, 55)
        SetTextDropShadow()
        SetTextCentre(true)
        BeginTextCommandDisplayText("STRING")
        AddTextComponentSubstringPlayerName(string.format(CICUS_staff.lang["text"], CICUS_staff.roles[group].label, name))
        SetDrawOrigin(pos, 0)
        EndTextCommandDisplayText(0.0, 0.0)
        ClearDrawOrigin()
    end
end