local L = ASDC_LOCALE_TABLE
local lastStat = -1
local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:RegisterUnitEvent("UNIT_STATS", "player")
f:RegisterUnitEvent("UNIT_RESISTANCES", "player")
f:SetScript("OnEvent", function()
    local stats = Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Stats"]["Armor"]
    if not (stats.StatEnable and C_CVar.GetCVarBool("enableFloatingCombatText")) then return end
    local base, effectiveArmor, armor, posBuff, negBuff = UnitArmor("player")
    local diff = effectiveArmor - lastStat;
    if not lastStat then
      lastStat = effectiveArmor
      return
    end
    if lastStat == -1 then
    elseif (diff < 0 and stats.Lost) or (diff > 0 and stats.Gains) then
        CombatText_AddMessage(format("%s%d %s (%d)", (diff>0) and "+" or "", diff, L["Armor"],  effectiveArmor), CombatText_StandardScroll, ASCT_Colors_Stats.r, ASCT_Colors_Stats.g, ASCT_Colors_Stats.b, ASCT_Colors_Stats.a)
    end
    lastStat = effectiveArmor
end)