local L = SARTE_LOCALE_TABLE
local lastArmor = nil
local f = CreateFrame("Frame")
f:RegisterUnitEvent("UNIT_STATS", "player")
f:SetScript("OnEvent", function()
    if SARTESPELLDB["Advanced_Scrolling_Combat_Text"]["Armor Gained"] == true then
  local base, effectiveArmor, armor, posBuff, negBuff = UnitArmor("player") -- MOVED THIS LINE
  if not lastArmor then
    lastArmor = effectiveArmor
    return
  end
  if effectiveArmor > lastArmor then
    CombatText_AddMessage(format("+%d".." "..L["Armor"].." ".."(%d)", effectiveArmor - lastArmor, effectiveArmor), CombatText_StandardScroll, 0.1, 0.1, 1 )
  end
  lastArmor = effectiveArmor
end
end)