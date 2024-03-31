local ASCT = ASCT_Table
local Event = ASCT.Events
Event.RegisterEvent["UNIT_POWER_FREQUENT"](ASCT.Frames.SARTE["Resource_Loss_Frame"], "player")
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](ASCT.Frames.SARTE["Resource_Loss_Frame"])