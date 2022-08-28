local L = ASDC_LOCALE_TABLE
local lastStat = -1
local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:RegisterUnitEvent("UNIT_MAXHEALTH", "player")
f:SetScript("OnEvent", function()
    local stats = Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Stats"]["Health"]
    if not (stats.StatEnable and C_CVar.GetCVarBool("enableFloatingCombatText")) then return end
    local currentStat = UnitHealthMax("player")
    local diff = currentStat - lastStat;
    if lastStat == -1 then
    elseif (diff < 0 and stats.Lost) or (diff > 0 and stats.Gains) then
        CombatText_AddMessage(format("%s%d %s (%d)", (diff>0) and "+" or "", diff, L["Health"],  currentStat), CombatText_StandardScroll, 0.1, 0.1, 1)
    end
    lastStat = currentStat
end)