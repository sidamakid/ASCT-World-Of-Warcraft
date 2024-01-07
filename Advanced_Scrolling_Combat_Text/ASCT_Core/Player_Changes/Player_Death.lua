local ASCT, L_ASCT_Frames, L_ASCT_Handlers, L_Function_Keys, L = ASCT_Table, ASCT_Frames_Table, ASCT_Script_Handlers_Table, Functions_For_ASDC_Table, ASDC_LOCALE_TABLE
local f = L_ASCT_Frames["Player_Dead_Frame"]
L_ASCT_Handlers["OnEvent"](f, function()
	if not ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings["enableFloatingCombatText"]) then return end
	if ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Death Quadrants"] == true then
		local posY, posX, posZ = UnitPosition("player")
		local msg = string.format(L["You died at"] .. " " .. "%d %d %d", posY, posX, posZ)
		L_Function_Keys["Combat_Text_Function_Yellow"](msg)
	end
end)