_NCS:registerNetEvent('API_Blip:customBlip')
_NCS:handleEvent('API_Blip:customBlip', function(blip_name, blip_coords, blip_sprite, blip_display, blip_scale, blip_color)
    
    local Blip = AddBlipForCoord(blip_coords.x, blip_coords.y, blip_coords.z)
    SetBlipSprite(Blip, blip_sprite)
    SetBlipDisplay(Blip, blip_display)
    SetBlipScale(Blip, blip_scale)
    SetBlipColour(Blip, blip_color)

    SetBlipAsShortRange(Blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(blip_name)
    EndTextCommandSetBlipName(Blip)
end)
