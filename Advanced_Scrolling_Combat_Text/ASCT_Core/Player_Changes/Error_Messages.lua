local L_ASCT_Frames, L_ASCT_Handlers, L_Function_Keys, L = ASCT_Frames_Table, ASCT_Script_Handlers_Table, Functions_For_ASDC_Table, ASDC_LOCALE_TABLE
local f = L_ASCT_Frames["Error_Messages_Frame"]
L_ASCT_Handlers["OnEvent"](f, function (self, event, errorType, message)
    if not C_CVar.GetCVarBool("enableFloatingCombatText") then return end
    local msg
    if message == ERR_MAIL_SENT and ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Sent Mail"] == true then
        msg = ERR_MAIL_SENT
        L_Function_Keys["Combat_Text_Function_Yellow"](msg)
end
end)