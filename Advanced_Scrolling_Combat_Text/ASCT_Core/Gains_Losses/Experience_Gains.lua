local ASCT, L = ASCT_Table, ASDC_LOCALE_TABLE
local learnaXP = ASCT.Frames.SARTE["Experience_Frame"]
ASCT.Scripts.Frame["OnEvent"](learnaXP,
    function(_,_,arg1)
        local xpMax = ASCT.API.Documentation["UnitXPMax"](ASCT.Strings.UnitId["player"])
        if not ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings.C_CVar["enableFloatingCombatText"]) then return end
        if ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Experience Gains"] == true then
        if strfind(arg1, "experience") then
            local xpgained = string.match(string.match(arg1, "%d+ experience"), "%d+")
            local msg = string.format(L["Experience"].."+".."%d", xpgained)
            ASCT.Functions["CombatText_AddMessage_Dark_Blue"](msg)
        end
    end
    end
)