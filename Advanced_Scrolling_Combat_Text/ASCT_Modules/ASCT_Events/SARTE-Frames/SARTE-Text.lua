local ASCT = ASCT_Table
local Event = ASCT.Events
--UNIT
Event.RegisterEvent["UNIT_SPELLCAST_SUCCEEDED"](ASCT.Frames.SARTE["SARTE-Text_Frame"])
--Event.RegisterEvent["UNIT_SPELLCAST_SUCCEEDED"](ASCT.Frames.SARTE["SARTE-Text-Racials_Frame"])
Event.RegisterEvent["UNIT_SPELLCAST_SUCCEEDED"](ASCT.Frames.SARTE["SARTE-Text-Traps_Frame"])
Event.RegisterEvent["UNIT_SPELLCAST_SUCCEEDED"](ASCT.Frames.SARTE["SARTE-Text-Shocks_Frame"])
--LOAD
Event.RegisterEvent["ADDON_LOADED"](ASCT.Frames.SARTE["Trinket_Frame"])
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](ASCT.Frames.SARTE["Trinket_Frame"])