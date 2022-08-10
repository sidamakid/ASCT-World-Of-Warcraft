local L = ASDC_LOCALE_TABLE
local Skillup = CreateFrame("Frame")
Skillup:RegisterEvent("CHAT_MSG_SKILL")
Skillup:RegisterEvent("CHAT_MSG_SYSTEM")
Skillup:SetScript("OnEvent",
function (self, event, ...)
  if event == "CHAT_MSG_SKILL" then
    if Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text"]["Skill Up"] == true then
    local message = ...;
    local skillUpPattern = ERR_SKILL_UP_SI:gsub("%%.", "(.*)")
    local skill, value = message:match(skillUpPattern)
    CombatText_AddMessage(string.format(L["Your skill in"].." ".."%s".." "..L["has increased to"].." ".."%s", skill, value), CombatText_StandardScroll, 0.1, 0.1, 1)
    end
  end
end
)