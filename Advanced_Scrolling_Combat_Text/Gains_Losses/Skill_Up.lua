local L = ASDC_LOCALE_TABLE
local Skillup = CreateFrame("Frame")
Skillup:RegisterEvent("CHAT_MSG_SKILL")
Skillup:RegisterEvent("CHAT_MSG_SYSTEM")
Skillup:SetScript("OnEvent",
function (self, event, ...)
  if event == "CHAT_MSG_SKILL" then
    local Comabt_Text = C_CVar.GetCVarBool("enableFloatingCombatText")
    if Comabt_Text == false then
      return
    end
    if Comabt_Text == true then
    if Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Skill Up"] == true then
    local message = ...;
    local skillUpPattern = ERR_SKILL_UP_SI:gsub("%%.", "(.*)")
    local skill, value = message:match(skillUpPattern)
    CombatText_AddMessage(string.format(L["Your skill in"].." ".."%s".." "..L["has increased to"].." ".."%s", skill, value), CombatText_StandardScroll, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.r, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.g, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.b, Advanced_Scrolling_Combat_Text_Color_Picker_Variables.a)
    end
  end
  end
end
)