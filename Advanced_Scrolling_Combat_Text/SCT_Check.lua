local ASCT, L_ASCT_Frames, L_ASCT_Handlers, L = ASCT_Table, ASCT_Frames_Table, ASCT_Script_Handlers_Table, ASDC_LOCALE_TABLE
local function OnEvent(self, event, isLogin, isReload)
	if isLogin or isReload then
	if not ASCT_DB then
		ASCT_DB = {}
	end
    if not ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings["enableFloatingCombatText"]) then
    message(L["Message"])
    end
	end
end
local f = L_ASCT_Frames["SCT_Check_Frame"]
L_ASCT_Handlers["OnEvent"](f, OnEvent)