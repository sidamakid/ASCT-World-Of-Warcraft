local ASCT = ASCT_Table
local Event = ASCT.Events
---------------------------
--Player_Changes
---------------------------
--Achievement Gains
Event.RegisterEvent["ACHIEVEMENT_EARNED"](ASCT.Frames.SARTE["Achievement_Frame"])
--Player Dies
Event.RegisterEvent["PLAYER_DEAD"](ASCT.Frames.SARTE["Player_Dead_Frame"])
--Duel Request
Event.RegisterEvent["DUEL_REQUESTED"](ASCT.Frames.SARTE["Duel_Request_Frame"])
---------------------------
--UI_INFO_ERROR_MESSAGE
---------------------------
Event.RegisterEvent["UI_INFO_MESSAGE"](ASCT.Frames.SARTE["Error_Messages_Frame"])
Event.RegisterEvent["UI_ERROR_MESSAGE"](ASCT.Frames.SARTE["Error_Messages_Frame"])