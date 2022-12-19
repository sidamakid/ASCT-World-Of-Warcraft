local isDragonFlightWow = (LE_EXPANSION_LEVEL_CURRENT == LE_EXPANSION_DRAGONFLIGHT)
if not isDragonFlightWow then
local L = ASDC_LOCALE_TABLE
local lastStat = -1
local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:RegisterUnitEvent("UNIT_STATS", "player")
f:RegisterUnitEvent("UNIT_ATTACK_POWER", "player")
f:SetScript("OnEvent", function()
    local stats = Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Stats"]["Attack Power"]
    if not (stats.StatEnable and C_CVar.GetCVarBool("enableFloatingCombatText")) then return end
    local base, posBuff, negBuff = UnitAttackPower("player")
    local diff = posBuff - lastStat;
    if not lastStat then
      lastStat = posBuff
      return
    end
    if lastStat == -1 then
    elseif (diff < 0 and stats.Lost) or (diff > 0 and stats.Gains) then
        CombatText_AddMessage(format("%s%d %s (%d)", (diff>0) and "+" or "", diff, L["Attack Power"],  posBuff + base), CombatText_StandardScroll, 0.1, 0.1, 1)
    end
    lastStat = posBuff
end)
end