local ASCT, L_ASCT_Frames, L_ASCT_Handlers, L_Function_Keys, L = ASCT_Table, ASCT_Frames_Table, ASCT_Script_Handlers_Table, Functions_For_ASDC_Table, ASDC_LOCALE_TABLE
local Skillup = L_ASCT_Frames["Skill_Up_Frame"]
L_ASCT_Handlers["OnEvent"](Skillup,
function (self, event, ...)
  if event == "CHAT_MSG_SKILL" then
    if not ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings["enableFloatingCombatText"]) then return end
    if ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Skill Up"] == true then
    local message = ...;
    local skillUpPattern = ERR_SKILL_UP_SI:gsub("%%.", "(.*)")
    local skill, value = message:match(skillUpPattern)
    local msg = string.format(L["Your skill in"].." ".."%s".." "..L["has increased to"].." ".."%s", skill, value)
    L_Function_Keys["Combat_Text_Function_Dark_Blue"](msg)
    end
  end
end
)