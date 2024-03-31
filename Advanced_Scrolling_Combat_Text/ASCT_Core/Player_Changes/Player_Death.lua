local ASCT, L = ASCT_Table, ASDC_LOCALE_TABLE
local f = ASCT.Frames.SARTE["Player_Dead_Frame"]
ASCT.Scripts.Frame["OnEvent"](f, function()
	if not ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings.C_CVar["enableFloatingCombatText"]) then return end
	if ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Death Quadrants"] == true then
		local posY, posX, posZ = ASCT.API.Documentation["UnitPosition"](ASCT.Strings.UnitId["player"])
		local msg = string.format(L["You died at"] .. " " .. "%d %d %d", posY, posX, posZ)
		ASCT.Functions["CombatText_AddMessage_Yellow"](msg)
	end
end)