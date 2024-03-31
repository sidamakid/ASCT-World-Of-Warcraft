local ASCT, L = ASCT_Table, ASDC_LOCALE_TABLE
local Skillup = ASCT.Frames.SARTE["Skill_Up_Frame"]
ASCT.Scripts.Frame["OnEvent"](Skillup,
function (self, event, ...)
  if event == "CHAT_MSG_SKILL" then
    if not ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings.C_CVar["enableFloatingCombatText"]) then return end
    if ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Skill Up"] == true then
    local message = ...;
    local skillUpPattern = ERR_SKILL_UP_SI:gsub("%%.", "(.*)")
    local skill, value = message:match(skillUpPattern)
    local msg = string.format(L["Your skill in"].." ".."%s".." "..L["has increased to"].." ".."%s", skill, value)
    ASCT.Functions["CombatText_AddMessage_Dark_Blue"](msg)
    end
  end
end
)