local ASCT, L = ASCT_Table, ASDC_LOCALE_TABLE
local f = ASCT.Frames.SARTE["Level_Up_Frame"]
ASCT.Scripts.Frame["OnEvent"](f, function()
    if not ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings.C_CVar["enableFloatingCombatText"]) then return end
    if ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Level up message"] == true then
    local msg = format(L["Congratulations"].." ".."%s,".." "..L["you are now level"].." ".."%d", ASCT.API.Documentation["UnitName"](ASCT.Strings.UnitId["player"]), ASCT.API.Documentation["UnitLevel"](ASCT.Strings.UnitId["player"]))
    ASCT.Functions["CombatText_AddMessage_Dark_Blue"](msg)
end
end)