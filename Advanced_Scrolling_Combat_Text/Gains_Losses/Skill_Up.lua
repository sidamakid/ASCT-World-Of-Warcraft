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
    CombatText_AddMessage(string.format(L["Your skill in"].." ".."%s".." "..L["has increased to"].." ".."%s", skill, value), CombatText_StandardScroll, ASCT_Colors_Leveling.r, ASCT_Colors_Leveling.g, ASCT_Colors_Leveling.b, ASCT_Colors_Leveling.a)
    end
  end
  end
end
)