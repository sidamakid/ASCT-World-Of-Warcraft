local ASCT, L = ASCT_Table, ASCT_locale_Table
local Keys = ASCT.Keys
local Frames, Scripts, API, Strings = Keys.Metatables["Frames"], Keys.Metatables["Scripts"], Keys.Metatables["API"], Keys.Metatables["Strings"]
local function OnEvent(self, event, isLogin, isReload)
	if isLogin or isReload then
	if not ASCT_DB then
		ASCT_DB = {}
	end
    if not API.Documentation["C_CVar.GetCVarBool"](Strings.C_CVar["enableFloatingCombatText"]) then
    message(L["Scrolling Combat Text is disabled. If not enabled, Advanced Scrolling Combat Text won't show anything."])
    end
	end
end
local f = Frames.Miscellaneous["SCT_Check_Frame"]
Scripts.Frame["OnEvent"](f, OnEvent)