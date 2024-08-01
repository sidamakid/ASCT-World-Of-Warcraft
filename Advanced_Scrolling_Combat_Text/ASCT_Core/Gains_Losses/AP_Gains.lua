local ASCT, L = ASCT_Table, ASCT_locale_Table
local Client, Frames, Functions, Scripts, API, Strings = ASCT.Client, ASCT.Frames, ASCT.Functions, ASCT.Scripts, ASCT.API, ASCT.Strings
if Client.LE_EXPANSION_LEVEL["isNotDragonFlightWow"] then
local lastStat = -1
local f = Frames.SARTE["Attack_Power_Frame"]
Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function()
  Scripts.Frame["OnEvent"](f, function()
    local stats = ASCT_DB["Advanced_Scrolling_Combat_Text_Stats"]["Attack Power"]
    if not (stats.StatEnable and API.Documentation["C_CVar.GetCVarBool"](Strings.C_CVar["enableFloatingCombatText"])) then return end
    local base, posBuff, negBuff = API.Documentation["UnitAttackPower"](Strings.UnitId["player"])
    local diff = posBuff - lastStat;
    if not lastStat then
      lastStat = posBuff
      return
    end
    if lastStat == -1 then
    elseif (diff < 0 and stats.Lost) or (diff > 0 and stats.Gains) then
        local msg = string.format("%s%d %s (%d)", (diff>0) and "+" or "", diff, L["Attack Power"],  posBuff + base)
        Functions.CombatText["CombatText_AddMessage_Dark_Blue"](msg)
    end
    lastStat = posBuff
end)
end)
end