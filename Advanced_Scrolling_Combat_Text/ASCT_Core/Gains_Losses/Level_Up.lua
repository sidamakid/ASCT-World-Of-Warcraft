local ASCT, L = ASCT_Table, ASCT_locale_Table
local Frames, Functions, Scripts, API, Strings = ASCT.Frames, ASCT.Functions, ASCT.Scripts, ASCT.API, ASCT.Strings
local f = Frames.SARTE["Level_Up_Frame"]
Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function()
Scripts.Frame["OnEvent"](f, function()
    if not API.Documentation["C_CVar.GetCVarBool"](Strings.C_CVar["enableFloatingCombatText"]) then return end
    if ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Level up message"] == true then
    local msg = format(L["Congratulations"].." ".."%s,".." "..L["you are now level"].." ".."%d", API.Documentation["UnitName"](Strings.UnitId["player"]), API.Documentation["UnitLevel"](Strings.UnitId["player"]))
    Functions.CombatText["CombatText_AddMessage_Dark_Blue"](msg)
end
end)
end)