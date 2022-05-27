---getName
---@param playerId number
---@return string
---@public
function API_Player:getName(playerId)
    if (playerId) then
        local name = GetPlayerName(playerId)
        if (name ~= nil) then
            return (name)
        end
    end
    _NCS:trace('Unable to find ID', 5)
    return (false)
end