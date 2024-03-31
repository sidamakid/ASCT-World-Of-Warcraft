local ASCT = ASCT_Table
local Event = ASCT.Events
Event.RegisterEvent["UNIT_STATS"](ASCT.Frames.SARTE["All_Stats_Frame"], "player")
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](ASCT.Frames.SARTE["All_Stats_Frame"])