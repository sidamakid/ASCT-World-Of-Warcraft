local ASCT = ASCT_Table
local Frames, Documentation, frameType = ASCT.Frames, ASCT.API.Documentation, ASCT.Strings.FrameType["Frame"]
--Achievement Gains
Frames.SARTE["Achievement_Frame"] = Documentation["CreateFrame"](frameType)
--Player Dies
Frames.SARTE["Player_Dead_Frame"] = Documentation["CreateFrame"](frameType)
--Duel Request
Frames.SARTE["Duel_Request_Frame"] = Documentation["CreateFrame"](frameType)
--Error Message
Frames.SARTE["Error_Messages_Frame"] = Documentation["CreateFrame"](frameType)