local L = ASDC_LOCALE_TABLE
local learnaXP = CreateFrame"Frame"
learnaXP:RegisterEvent("CHAT_MSG_COMBAT_XP_GAIN")
learnaXP:RegisterEvent("CHAT_MSG_SYSTEM")
learnaXP:SetScript("OnEvent",
    function(_,_,arg1)
        local xpMax = UnitXPMax("player")
        local Comabt_Text = C_CVar.GetCVarBool("enableFloatingCombatText")
        if Comabt_Text == false then
            return
        end
        if Comabt_Text == true then
        if Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Experience Gains"] == true then
        if strfind(arg1, "experience") then
            local xpgained = string.match(string.match(arg1, "%d+ experience"), "%d+")
            CombatText_AddMessage(L["Experience"].."+"..xpgained, CombatText_StandardScroll, ASCT_Colors_Leveling.r, ASCT_Colors_Leveling.g, ASCT_Colors_Leveling.b, ASCT_Colors_Leveling.a)
        end
        end
    end
    end
)