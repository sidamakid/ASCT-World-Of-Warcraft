local ASCT, L = ASCT_Table, ASCT_locale_Table
local Frames, Functions, Scripts, API, Strings = ASCT.Frames, ASCT.Functions, ASCT.Scripts, ASCT.API, ASCT.Strings
local learnaXP = Frames.SARTE["Experience_Frame"]
Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function()
Scripts.Frame["OnEvent"](learnaXP,
    function(_,_,arg1)
        local xpMax = API.Documentation["UnitXPMax"](Strings.UnitId["player"])
        if not API.Documentation["C_CVar.GetCVarBool"](Strings.C_CVar["enableFloatingCombatText"]) then return end
        if ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Experience Gains"] == true then
        if strfind(arg1, "experience") then
            local xpgained = string.match(string.match(arg1, "%d+ experience"), "%d+")
            local msg = string.format(L["Experience"].."+".."%d", xpgained)
            Functions.CombatText["CombatText_AddMessage_Dark_Blue"](msg)
        end
    end
    end
)
end)