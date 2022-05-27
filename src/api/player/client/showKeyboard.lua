---showKeyboard
---@param textEntry string
---@param exampleText string
---@param maxInputLength number
function API_Player:showKeyboard(textEntry, exampleText, maxInputLength)
    AddTextEntry('FMMC_KEY_TIP1', textEntry)
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "Somme", exampleText, "", "", "", maxInputLength)
    while (UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2) do
        Wait(0)
    end
    if (UpdateOnscreenKeyboard() ~= 2) then
        local result <const> = GetOnscreenKeyboardResult()
        Wait(500)
        return (result)
    else
        Citizen.Wait(500)
        return (nil)
    end
end