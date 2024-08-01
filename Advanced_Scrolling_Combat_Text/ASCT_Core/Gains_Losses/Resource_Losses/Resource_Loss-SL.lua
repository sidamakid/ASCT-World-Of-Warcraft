local ASCT, L = ASCT_Table, ASCT_locale_Table
local Client, Frames, Functions, Scripts, API, Strings = ASCT.Client, ASCT.Frames, ASCT.Functions, ASCT.Scripts, ASCT.API, ASCT.Strings
if Client.LE_EXPANSION_LEVEL["isShadowlandsWow"] then
local lastPower = nil
local power
local f = Frames.SARTE["Resource_Loss_Frame"]
Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function()
Scripts.Frame["OnEvent"](f, function()
  if not API.Documentation["C_CVar.GetCVarBool"](Strings.C_CVar["enableFloatingCombatText"]) then return end
  if API.Documentation["UnitPowerType"](Strings.UnitId["player"]) == 0 then
    power = L["Mana"]
  elseif API.Documentation["UnitPowerType"](Strings.UnitId["player"]) == 1 then
    power = L["Rage"]
  elseif API.Documentation["UnitPowerType"](Strings.UnitId["player"]) == 2 then
    power = L["Focus"]
  elseif API.Documentation["UnitPowerType"](Strings.UnitId["player"]) == 3 then
    power = L["Energy"]
  elseif API.Documentation["UnitPowerType"](Strings.UnitId["player"]) == 6 then
    power = L["Runic Power"]
  elseif API.Documentation["UnitPowerType"](Strings.UnitId["player"]) == 8 then
    power = L["Lunar Power"]
  elseif API.Documentation["UnitPowerType"](Strings.UnitId["player"]) == 9 then
    power = L["Holy Power"]
  elseif API.Documentation["UnitPowerType"](Strings.UnitId["player"]) == 11 then
    power = L["Maelstrom"]
  elseif API.Documentation["UnitPowerType"](Strings.UnitId["player"]) == 13 then
    power = L["Insanity"]
  elseif API.Documentation["UnitPowerType"](Strings.UnitId["player"]) == 17 then
    power = L["Fury"]
  end
  if ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Resource lost"] == true then
  if not lastPower then
    lastPower = API.Documentation["UnitPower"](Strings.UnitId["player"])
    return
  end
  if API.Documentation["UnitPower"](Strings.UnitId["player"]) + 4 < lastPower then
    local msg = string.format("-%d".." ".."%s".." ".."(%d)", lastPower - API.Documentation["UnitPower"](Strings.UnitId["player"]), power, API.Documentation["UnitPower"](Strings.UnitId["player"]))
    Functions.CombatText["CombatText_AddMessage_Dark_Blue"](msg)
  end
  lastPower = API.Documentation["UnitPower"](Strings.UnitId["player"])
  end
end)
end)
end