local L_ASCT_Frames, L_ASCT_Handlers, L_Function_Keys, L = ASCT_Frames_Table, ASCT_Script_Handlers_Table, Functions_For_ASDC_Table, ASDC_LOCALE_TABLE
local f = L_ASCT_Frames["Duel_Request_Frame"]
L_ASCT_Handlers["OnEvent"](f, function (self, event, playerName)
    if not C_CVar.GetCVarBool("enableFloatingCombatText") then return end
    if ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Duel Requests"] == true then
    local msg = playerName.." "..L["Has challenged you to a duel."]
    L_Function_Keys["Combat_Text_Function_Light_Blue"](msg)
    end
end)