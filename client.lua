local statushudkapat = function()
    -- Hud kapama işlemi
    -- Örnek: TriggerEvent("hud:close")
    exports['minimal-hud']:toggleHud(false)
end

local statushudac = function()
    -- Hud açma işlemi
    -- Örnek: TriggerEvent("hud:open")
    exports['minimal-hud']:toggleHud(true)
end

RegisterKeyMapping("bigmap", "Toggle Bigmap", "keyboard", "z")
RegisterCommand("bigmap", function()
    if IsBigmapActive() then
        SetBigmapActive(false, false)
        statushudkapat()
    else
        SetBigmapActive(true, false)
        statushudac()
    end
end, false)
