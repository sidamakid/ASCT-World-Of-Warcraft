local L = ASDC_LOCALE_TABLE
local lastStrength = 0
local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:RegisterUnitEvent("UNIT_STATS", "player")
f:SetScript("OnEvent", function()
    if Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Stats"]["Strength"].StatEnable == true and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Stats"]["Strength"].Lost == true then
    local Comabt_Text = C_CVar.GetCVarBool("enableFloatingCombatText")
    local stat, effectiveStat, posBuff, negBuff = UnitStat("player", 1)
    if Comabt_Text == false then
        return
    end
    if Comabt_Text == true then
    if effectiveStat < lastStrength then
        CombatText_AddMessage(format("%d".." "..L["Strength"].." ".."(%d)", effectiveStat - lastStrength, effectiveStat), CombatText_StandardScroll, 0.1, 0.1, 1 )
    end
    lastStrength = effectiveStat
end
end
end)