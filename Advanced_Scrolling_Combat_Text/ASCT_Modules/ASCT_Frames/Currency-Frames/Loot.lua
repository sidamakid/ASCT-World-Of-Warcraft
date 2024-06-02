local ASCT = ASCT_Table
local Frames, Documentation, frameType = ASCT.Frames, ASCT.API.Documentation, ASCT.Strings.FrameType["Frame"]
Frames.SARTE["Item_Loot_Frame"] = Documentation["CreateFrame"](frameType)
Frames.SARTE["Money_Loot_Frame"] = Documentation["CreateFrame"](frameType)
Frames.SARTE["Currency_Loot_Frame"] = Documentation["CreateFrame"](frameType)
Frames.SARTE["Honor_Loot_Frame"] = Documentation["CreateFrame"](frameType)
--[[
Frames.SARTE["Transmog_Gained_Loot_Frame"] = Documentation["CreateFrame"](frameType)
Frames.SARTE["Transmog_Lost_Loot_Frame"] = Documentation["CreateFrame"](frameType)
]]