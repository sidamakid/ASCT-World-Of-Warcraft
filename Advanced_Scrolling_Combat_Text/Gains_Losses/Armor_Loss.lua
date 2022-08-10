local L = ASDC_LOCALE_TABLE
local lastArmor = 0
local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:RegisterUnitEvent("UNIT_STATS", "player")
f:SetScript("OnEvent", function()
    if Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text"]["Armor lost"] == true then
    local _, currentArmor = UnitArmor("player")
    if currentArmor < lastArmor then
        CombatText_AddMessage( format("%d".." "..L["Armor"].." ".."(%d)", currentArmor - lastArmor, currentArmor), CombatText_StandardScroll, 0.1, 0.1, 1 )
    end
    lastArmor = currentArmor
end
end)
