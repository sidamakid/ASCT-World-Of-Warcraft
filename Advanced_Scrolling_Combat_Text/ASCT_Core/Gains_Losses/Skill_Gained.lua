local ASCT, L_ASCT_Frames, L_ASCT_Handlers, L_Function_Keys, L = ASCT_Table, ASCT_Frames_Table, ASCT_Script_Handlers_Table, Functions_For_ASDC_Table, ASDC_LOCALE_TABLE
local SkillGained = L_ASCT_Frames["Skill_Gained_Frame"]
L_ASCT_Handlers["OnEvent"](SkillGained,
function (self, event, ...)
  if event == "CHAT_MSG_SKILL" then
    if not ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings["enableFloatingCombatText"]) then return end
    if ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Skill Gained"] == true then
    local message = ...;
    local skillUpPattern = ERR_SKILL_GAINED_S:gsub("%%.", "(.*)")
    local skill = message:match(skillUpPattern)
    local msg = string.format(L["You have gained the"].." ".."%s".." "..L["skill"]..".", skill)
    L_Function_Keys["Combat_Text_Function_Dark_Blue"](msg)
    end
  end
end
)