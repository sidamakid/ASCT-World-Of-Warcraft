local ASCT, L = ASCT_Table, ASDC_LOCALE_TABLE
local SkillGained = ASCT.Frames.SARTE["Skill_Gained_Frame"]
ASCT.Scripts.Frame["OnEvent"](SkillGained,
function (self, event, ...)
  if event == "CHAT_MSG_SKILL" then
    if not ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings.C_CVar["enableFloatingCombatText"]) then return end
    if ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Skill Gained"] == true then
    local message = ...;
    local skillUpPattern = ERR_SKILL_GAINED_S:gsub("%%.", "(.*)")
    local skill = message:match(skillUpPattern)
    local msg = string.format(L["You have gained the"].." ".."%s".." "..L["skill"]..".", skill)
    ASCT.Functions["CombatText_AddMessage_Dark_Blue"](msg)
    end
  end
end
)