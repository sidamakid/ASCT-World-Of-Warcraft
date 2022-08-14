local L = ASDC_LOCALE_TABLE
local learnaXP = CreateFrame "Frame"
learnaXP:RegisterEvent("CHAT_MSG_MONEY")
learnaXP:RegisterEvent("CHAT_MSG_SYSTEM")
learnaXP:SetScript("OnEvent",
    function(_, _, arg1)
        local Comabt_Text = C_CVar.GetCVarBool("enableFloatingCombatText")
        if Comabt_Text == false then
            return
        end
        if Comabt_Text == true then
            if strfind(arg1, "Copper") then
                local moneygained = string.match(string.match(arg1, "%d+ Copper"), "%d+")
                CombatText_AddMessage(moneygained, CombatText_StandardScroll,
                    Advanced_Scrolling_Combat_Text_Color_Picker_Variables.r,
                    Advanced_Scrolling_Combat_Text_Color_Picker_Variables.g,
                    Advanced_Scrolling_Combat_Text_Color_Picker_Variables.b,
                    Advanced_Scrolling_Combat_Text_Color_Picker_Variables.a)
            elseif strfind(arg1, "Sliver") then
                local moneygained = string.match(string.match(arg1, "%d+ Sliver"), "%d+")
                CombatText_AddMessage(moneygained, CombatText_StandardScroll,
                    Advanced_Scrolling_Combat_Text_Color_Picker_Variables.r,
                    Advanced_Scrolling_Combat_Text_Color_Picker_Variables.g,
                    Advanced_Scrolling_Combat_Text_Color_Picker_Variables.b,
                    Advanced_Scrolling_Combat_Text_Color_Picker_Variables.a)
            elseif strfind(arg1, "Gold") then
                local moneygained = string.match(string.match(arg1, "%d+ Gold"), "%d+")
                CombatText_AddMessage(moneygained, CombatText_StandardScroll,
                    Advanced_Scrolling_Combat_Text_Color_Picker_Variables.r,
                    Advanced_Scrolling_Combat_Text_Color_Picker_Variables.g,
                    Advanced_Scrolling_Combat_Text_Color_Picker_Variables.b,
                    Advanced_Scrolling_Combat_Text_Color_Picker_Variables.a)
            end
        end
    end
)
