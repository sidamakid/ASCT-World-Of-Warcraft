local ASCT, L = ASCT_Table, ASDC_LOCALE_TABLE
if ASCT.Client["isWrathWow"] then
local lastPower = nil
local power
local f = ASCT.Frames.SARTE["Resource_Loss_Frame"]
ASCT.Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function()
ASCT.Scripts.Frame["OnEvent"](f, function()
  if not ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings.C_CVar["enableFloatingCombatText"]) then return end
  if select(2, ASCT.API.Documentation["UnitPowerType"](ASCT.Strings.UnitId["player"])) == "MANA" then
    power = L["Mana"]
  elseif select(2, ASCT.API.Documentation["UnitPowerType"](ASCT.Strings.UnitId["player"])) == "RAGE" then
    power = L["Rage"]
  elseif select(2, ASCT.API.Documentation["UnitPowerType"](ASCT.Strings.UnitId["player"])) == "ENERGY" then
    power = L["Energy"]
  elseif select(2, ASCT.API.Documentation["UnitPowerType"](ASCT.Strings.UnitId["player"])) == "RUNIC_POWER" then
    power = L["Runic Power"]
  end
  if ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Resource lost"] == true then
  if not lastPower then
    lastPower = ASCT.API.Documentation["UnitPower"](ASCT.Strings.UnitId["player"])
    return
  end
  if ASCT.API.Documentation["UnitPower"](ASCT.Strings.UnitId["player"]) + 4 < lastPower then
    local msg = string.format("-%d".." ".."%s".." ".."(%d)", lastPower - ASCT.API.Documentation["UnitPower"](ASCT.Strings.UnitId["player"]), power, ASCT.API.Documentation["UnitPower"](ASCT.Strings.UnitId["player"]))
    ASCT.Functions["CombatText_AddMessage_Dark_Blue"](msg)
  end

  lastPower = ASCT.API.Documentation["UnitPower"](ASCT.Strings.UnitId["player"])
  end
end)
end)
end