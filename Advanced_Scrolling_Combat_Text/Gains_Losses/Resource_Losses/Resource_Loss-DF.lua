local isDragonFlightWow = (LE_EXPANSION_LEVEL_CURRENT == LE_EXPANSION_DRAGONFLIGHT)
if isDragonFlightWow then
local L = ASDC_LOCALE_TABLE
local L_Function_Keys = Functions_For_ASDC_Table
local lastPower = nil
local power
local f = CreateFrame("Frame")
f:RegisterUnitEvent("UNIT_POWER_FREQUENT", "player")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
L_Function_Keys["Advanced_Scrolling_Combat_Text_AddInitializer"](function()
f:SetScript("OnEvent", function()
  if UnitPowerType('player') == 0 then
    power = L["Mana"]
  elseif UnitPowerType('player') == 1 then
    power = L["Rage"]
  elseif UnitPowerType('player') == 2 then
    power = L["Focus"]
  elseif UnitPowerType('player') == 3 then
    power = L["Energy"]
  elseif UnitPowerType('player') == 6 then
    power = L["Runic Power"]
  elseif UnitPowerType('player') == 8 then
    power = L["Lunar Power"]
  elseif UnitPowerType('player') == 9 then
    power = L["Holy Power"]
  elseif UnitPowerType('player') == 11 then
    power = L["Maelstrom"]
  elseif UnitPowerType('player') == 13 then
    power = L["Insanity"]
  elseif UnitPowerType('player') == 17 then
    power = L["Fury"]
  end
  local Comabt_Text = C_CVar.GetCVarBool("enableFloatingCombatText")
  if Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Resource lost"] == true then
  if not lastPower then
    lastPower = UnitPower('player')
    return
  end
  if Comabt_Text == false then
    return
    end
  if Comabt_Text == true then
  if UnitPower('player') + 4 < lastPower then
    local msg = string.format("-%d".." ".."%s".." ".."(%d)", lastPower - UnitPower('player'), power, UnitPower("player"))
    CombatText_AddMessage(msg, CombatText_StandardScroll, 0.1, 0.1, 1)
  end

  lastPower = UnitPower('player')
  end
  end
end)
end)
end