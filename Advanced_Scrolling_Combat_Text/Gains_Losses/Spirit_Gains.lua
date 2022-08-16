local isClassic_Tbc_Wrath_Wow = (LE_EXPANSION_LEVEL_CURRENT == LE_EXPANSION_BURNING_CRUSADE) or (WOW_PROJECT_ID == WOW_PROJECT_CLASSIC) or (LE_EXPANSION_LEVEL_CURRENT == LE_EXPANSION_NORTHREND)
if isClassic_Tbc_Wrath_Wow then
local L = ASDC_LOCALE_TABLE
local lastStat = -1
local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:RegisterUnitEvent("UNIT_STATS", "player")
f:SetScript("OnEvent", function()
    local stats = Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Stats"]["Spirit"]
    if not (stats.StatEnable and C_CVar.GetCVarBool("enableFloatingCombatText")) then return end
    local currentStat = select(2,UnitStat("player", 5))
    local diff = currentStat - lastStat;
    if lastStat == -1 then
    elseif (diff < 0 and stats.Lost) or (diff > 0 and stats.Gains) then
        CombatText_AddMessage(format("%s%d %s (%d)", (diff>0) and "+" or "", diff, L["Spirit"],  currentStat), CombatText_StandardScroll, ASCT_Colors_Stats.r, ASCT_Colors_Stats.g, ASCT_Colors_Stats.b, ASCT_Colors_Stats.a)
    end
    lastStat = currentStat
end)
end