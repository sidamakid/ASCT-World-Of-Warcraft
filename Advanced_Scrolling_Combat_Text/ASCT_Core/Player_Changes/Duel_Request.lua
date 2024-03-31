local ASCT, L = ASCT_Table, ASDC_LOCALE_TABLE
local f = ASCT.Frames.SARTE["Duel_Request_Frame"]
ASCT.Scripts.Frame["OnEvent"](f, function (self, event, playerName)
    if not ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings.C_CVar["enableFloatingCombatText"]) then return end
    if ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Duel Requests"] == true then
    local msg = playerName.." "..L["Has challenged you to a duel."]
    ASCT.Functions["CombatText_AddMessage_Light_Blue"](msg)
    end
end)