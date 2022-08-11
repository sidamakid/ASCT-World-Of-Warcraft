local isClassic_Tbc_Wrath_Wow = (LE_EXPANSION_LEVEL_CURRENT == LE_EXPANSION_BURNING_CRUSADE) or (WOW_PROJECT_ID == WOW_PROJECT_CLASSIC) or (LE_EXPANSION_LEVEL_CURRENT == LE_EXPANSION_NORTHREND)
if isClassic_Tbc_Wrath_Wow then
local L = ASDC_LOCALE_TABLE
local lastSpirit = nil
local f = CreateFrame("Frame")
f:RegisterUnitEvent("UNIT_STATS", "player")
f:SetScript("OnEvent", function()
  if Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Stats"]["Spirit"].StatEnable == true and Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Stats"]["Spirit"].Gains == true then
  local Comabt_Text = C_CVar.GetCVarBool("enableFloatingCombatText")
  if Comabt_Text == false then
    return
  end
  if Comabt_Text == true then
  local stat, effectiveStat, posBuff, negBuff = UnitStat("player", 5)
  if not lastSpirit then
    lastSpirit = effectiveStat
    return
  end
  if effectiveStat > lastSpirit then
    CombatText_AddMessage(format("+%d".." "..L["Spirit"].." ".."(%d)", effectiveStat - lastSpirit, effectiveStat), CombatText_StandardScroll, 0.1, 0.1, 1 )
  end
  lastSpirit = effectiveStat
end
end
end)
end