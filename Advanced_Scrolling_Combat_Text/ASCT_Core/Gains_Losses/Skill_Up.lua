local ASCT, L = ASCT_Table, ASCT_locale_Table
local Frames, Functions, Scripts, API, Strings = ASCT.Frames, ASCT.Functions, ASCT.Scripts, ASCT.API, ASCT.Strings
local Skillup = Frames.SARTE["Skill_Up_Frame"]
Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function()
Scripts.Frame["OnEvent"](Skillup,
function (self, event, ...)
  if event == Strings.EventName["CHAT_MSG_SKILL"] then
    if not API.Documentation["C_CVar.GetCVarBool"](Strings.C_CVar["enableFloatingCombatText"]) then return end
    if ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Skill Up"] == true then
    local message = ...;
    local skillUpPattern = ERR_SKILL_UP_SI:gsub("%%.", "(.*)")
    local skill, value = message:match(skillUpPattern)
    local msg = string.format(L["Your skill in"].." ".."%s".." "..L["has increased to"].." ".."%s", skill, value)
    Functions.CombatText["CombatText_AddMessage_Dark_Blue"](msg)
    end
  end
end
)
end)