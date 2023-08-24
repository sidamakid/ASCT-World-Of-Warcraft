local L = ASDC_LOCALE_TABLE
local function OnEvent(self, event, isLogin, isReload)
	if isLogin or isReload then
	if not Advanced_Scrolling_Combat_Text_DB then
		Advanced_Scrolling_Combat_Text_DB = {}
	end
	local Comabt_Text = C_CVar.GetCVarBool("enableFloatingCombatText")
    if Comabt_Text == false then
    message(L["Message"])
    end
	end
end
local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:SetScript("OnEvent", OnEvent)