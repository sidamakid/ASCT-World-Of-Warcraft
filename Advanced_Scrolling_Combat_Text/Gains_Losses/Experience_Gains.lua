local L = ASDC_LOCALE_TABLE
local learnaXP = CreateFrame"Frame"
learnaXP:RegisterEvent("CHAT_MSG_COMBAT_XP_GAIN")
learnaXP:RegisterEvent("CHAT_MSG_SYSTEM")
learnaXP:SetScript("OnEvent",
    function(_,_,arg1)
        local xpMax = UnitXPMax("player")
        if Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text"]["Experience Gains"] == true then
        if strfind(arg1, "experience") then
            local xpgained = string.match(string.match(arg1, "%d+ experience"), "%d+")
            CombatText_AddMessage(L["Experience"].."+"..xpgained, CombatText_StandardScroll, 0.1, 0.1, 1)
        end
    end
    end
)