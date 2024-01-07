local ASCT, L_ASCT_Frames, L_ASCT_Handlers, L_Function_Keys, L = ASCT_Table, ASCT_Frames_Table, ASCT_Script_Handlers_Table, Functions_For_ASDC_Table, ASDC_LOCALE_TABLE
local learnaXP = L_ASCT_Frames["Experience_Frame"]
L_ASCT_Handlers["OnEvent"](learnaXP,
    function(_,_,arg1)
        local xpMax = UnitXPMax("player")
        if not ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings["enableFloatingCombatText"]) then return end
        if ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Experience Gains"] == true then
        if strfind(arg1, "experience") then
            local xpgained = string.match(string.match(arg1, "%d+ experience"), "%d+")
            local msg = string.format(L["Experience"].."+".."%d", xpgained)
            L_Function_Keys["Combat_Text_Function_Dark_Blue"](msg)
        end
    end
    end
)