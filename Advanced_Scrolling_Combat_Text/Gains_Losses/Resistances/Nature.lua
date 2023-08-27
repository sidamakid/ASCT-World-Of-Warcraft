local isShadowlandsWow = (WOW_PROJECT_ID == WOW_PROJECT_MAINLINE)
if not isShadowlandsWow then
local L = ASDC_LOCALE_TABLE
local L_Function_Keys = Functions_For_ASDC_Table
local lastStat = -1
local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:RegisterUnitEvent("UNIT_STATS", "player")
L_Function_Keys["Advanced_Scrolling_Combat_Text_AddInitializer"](function()
f:SetScript("OnEvent", function()
    local stats = Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Stats"]["Nature Resistance"]
    if not (stats.StatEnable and C_CVar.GetCVarBool("enableFloatingCombatText")) then return end
    local base, total, bonus, minus = UnitResistance("player", 3)
    local diff = total - lastStat;
    if not lastStat then
      lastStat = total
      return
    end
    if lastStat == -1 then
    elseif (diff < 0 and stats.Lost) or (diff > 0 and stats.Gains) then
        CombatText_AddMessage(format("%s%d %s (%d)", (diff>0) and "+" or "", diff, L["Nature Resistance"],  total), CombatText_StandardScroll, 0.1, 0.1, 1)
    end
    lastStat = total
end)
end)
end