local ASCT = ASCT_Table
local Event = ASCT.Events
--Arcane
Event.RegisterEvent["UNIT_STATS"](ASCT.Frames.SARTE["Arcane_Resistance_Frame"], "player")
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](ASCT.Frames.SARTE["Arcane_Resistance_Frame"])
--Shadow
Event.RegisterEvent["UNIT_STATS"](ASCT.Frames.SARTE["Shadow_Resistance_Frame"], "player")
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](ASCT.Frames.SARTE["Shadow_Resistance_Frame"])
--Nature
Event.RegisterEvent["UNIT_STATS"](ASCT.Frames.SARTE["Nature_Resistance_Frame"], "player")
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](ASCT.Frames.SARTE["Nature_Resistance_Frame"])
--Frost
Event.RegisterEvent["UNIT_STATS"](ASCT.Frames.SARTE["Frost_Resistance_Frame"], "player")
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](ASCT.Frames.SARTE["Frost_Resistance_Frame"])
--Fire
Event.RegisterEvent["UNIT_STATS"](ASCT.Frames.SARTE["Fire_Resistance_Frame"], "player")
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](ASCT.Frames.SARTE["Fire_Resistance_Frame"])