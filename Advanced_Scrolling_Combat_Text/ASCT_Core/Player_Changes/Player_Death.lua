local Lua_API, ASCT, L = Lua_API_Table, ASCT_Table, ASCT_locale_Table
local Keys = ASCT.Keys
local Frames, Functions, Scripts, API, Strings = ASCT.Frames, ASCT.Functions, ASCT.Scripts, ASCT.API, ASCT.Strings
local f = Frames.SARTE["Player_Dead_Frame"]
Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function()
Scripts.Frame["OnEvent"](f, function()
	if not API.Documentation["C_CVar.GetCVarBool"](Strings.C_CVar["enableFloatingCombatText"]) then return end
	if ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Death Coordinates"] == true then
		local posY, posX, posZ = API.Documentation["UnitPosition"](Strings.UnitId["player"])
		local msg = string.format(L["You died at"] .. " " .. "%d %d %d", posY, posX, posZ)
		Functions.CombatText["CombatText_AddMessage_Yellow"](msg)
	end
end)
end)