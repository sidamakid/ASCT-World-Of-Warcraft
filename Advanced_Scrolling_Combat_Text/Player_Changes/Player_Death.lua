local L = ASDC_LOCALE_TABLE
local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_DEAD")
f:SetScript("OnEvent", function()
	local Combat_Text = C_CVar.GetCVarBool("enableFloatingCombatText")
	if Combat_Text == false then
		return
	end
	if Combat_Text == true then
		if Advanced_Scrolling_Combat_Text_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Death Quadrants"] == true then
			local posY, posX, posZ = UnitPosition("player")
			local msg = string.format(L["You died at"] .. " " .. "%d %d %d", posY, posX, posZ)
			CombatText_AddMessage(msg, CombatText_StandardScroll, 0.3, 0.3, 1)
		end
	end
end)