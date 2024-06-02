local ASCT, L = ASCT_Table, ASDC_LOCALE_TABLE
if ASCT.Client["isShadowlandsWow"] then
local lastPower = nil
local power
local f = ASCT.Frames.SARTE["Resource_Loss_Frame"]
ASCT.Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function()
ASCT.Scripts.Frame["OnEvent"](f, function()
  if not ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings.C_CVar["enableFloatingCombatText"]) then return end
  if ASCT.API.Documentation["UnitPowerType"](ASCT.Strings.UnitId["player"]) == 0 then
    power = L["Mana"]
  elseif ASCT.API.Documentation["UnitPowerType"](ASCT.Strings.UnitId["player"]) == 1 then
    power = L["Rage"]
  elseif ASCT.API.Documentation["UnitPowerType"](ASCT.Strings.UnitId["player"]) == 2 then
    power = L["Focus"]
  elseif ASCT.API.Documentation["UnitPowerType"](ASCT.Strings.UnitId["player"]) == 3 then
    power = L["Energy"]
  elseif ASCT.API.Documentation["UnitPowerType"](ASCT.Strings.UnitId["player"]) == 6 then
    power = L["Runic Power"]
  elseif ASCT.API.Documentation["UnitPowerType"](ASCT.Strings.UnitId["player"]) == 8 then
    power = L["Lunar Power"]
  elseif ASCT.API.Documentation["UnitPowerType"](ASCT.Strings.UnitId["player"]) == 9 then
    power = L["Holy Power"]
  elseif ASCT.API.Documentation["UnitPowerType"](ASCT.Strings.UnitId["player"]) == 11 then
    power = L["Maelstrom"]
  elseif ASCT.API.Documentation["UnitPowerType"](ASCT.Strings.UnitId["player"]) == 13 then
    power = L["Insanity"]
  elseif ASCT.API.Documentation["UnitPowerType"](ASCT.Strings.UnitId["player"]) == 17 then
    power = L["Fury"]
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