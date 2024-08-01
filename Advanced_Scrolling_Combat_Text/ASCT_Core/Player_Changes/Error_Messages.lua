local ASCT, L = ASCT_Table, ASCT_locale_Table
local Frames, Functions, Scripts, API, Strings = ASCT.Frames, ASCT.Functions, ASCT.Scripts, ASCT.API, ASCT.Strings
local f = Frames.SARTE["Error_Messages_Frame"]
Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function()
Scripts.Frame["OnEvent"](f, function (self, event, errorType, message)
    if not API.Documentation["C_CVar.GetCVarBool"](Strings.C_CVar["enableFloatingCombatText"]) then return end
    local msg
    if message == ERR_MAIL_SENT and ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Sent Mail"] == true then
        msg = ERR_MAIL_SENT
        Functions.CombatText["CombatText_AddMessage_Yellow"](msg)
    end
end)
end)