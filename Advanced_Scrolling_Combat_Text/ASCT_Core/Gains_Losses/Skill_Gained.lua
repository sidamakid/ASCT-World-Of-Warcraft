local ASCT, L = ASCT_Table, ASCT_locale_Table
local Frames, Functions, Scripts, API, Strings = ASCT.Frames, ASCT.Functions, ASCT.Scripts, ASCT.API, ASCT.Strings
local SkillGained = Frames.SARTE["Skill_Gained_Frame"]
Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function()
Scripts.Frame["OnEvent"](SkillGained,
function (self, event, ...)
  if event == Strings.EventName["CHAT_MSG_SKILL"] then
    if not API.Documentation["C_CVar.GetCVarBool"](Strings.C_CVar["enableFloatingCombatText"]) then return end
    if ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Skill Gained"] == true then
    local message = ...;
    local skillUpPattern = ERR_SKILL_GAINED_S:gsub("%%.", "(.*)")
    local skill = message:match(skillUpPattern)
    local msg = string.format(L["You have gained the"].." ".."%s".." "..L["skill"]..".", skill)
    Functions.CombatText["CombatText_AddMessage_Dark_Blue"](msg)
    end
  end
end
)
end)