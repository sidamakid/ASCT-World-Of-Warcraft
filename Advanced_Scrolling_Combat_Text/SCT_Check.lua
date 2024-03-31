local ASCT, L = ASCT_Table, ASDC_LOCALE_TABLE
local function OnEvent(self, event, isLogin, isReload)
	if isLogin or isReload then
	if not ASCT_DB then
		ASCT_DB = {}
	end
    if not ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings.C_CVar["enableFloatingCombatText"]) then
    message(L["Scrolling Combat Text is disabled. If not enabled, Advanced Scrolling Combat Text won't show anything."])
    end
	end
end
local f = ASCT.Frames.Miscellaneous["SCT_Check_Frame"]
ASCT.Scripts.Frame["OnEvent"](f, OnEvent)