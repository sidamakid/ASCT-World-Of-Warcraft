local ASCT = ASCT_Table
local Event = ASCT.Events
--UNIT
Event.RegisterEvent["QUEST_WATCH_UPDATE"](ASCT.Frames.SARTE["Quest_Progress_Frame"])
Event.RegisterEvent["UNIT_QUEST_LOG_CHANGED"](ASCT.Frames.SARTE["Quest_Progress_Frame"])