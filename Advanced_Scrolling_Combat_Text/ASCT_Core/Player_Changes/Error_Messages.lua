local ASCT, L = ASCT_Table, ASDC_LOCALE_TABLE
local f = ASCT.Frames.SARTE["Error_Messages_Frame"]
ASCT.Scripts.Frame["OnEvent"](f, function (self, event, errorType, message)
    if not ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings.C_CVar["enableFloatingCombatText"]) then return end
    local msg
    if message == ERR_MAIL_SENT and ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Sent Mail"] == true then
        msg = ERR_MAIL_SENT
        ASCT.Functions["CombatText_AddMessage_Yellow"](msg)
end
end)