local ASCT = ASCT_Table
local Event = ASCT.Events
---------------------------
--Item_Loot_Frame
---------------------------
Event.RegisterEvent["CHAT_MSG_SYSTEM"](ASCT.Frames.SARTE["Item_Loot_Frame"])
Event.RegisterEvent["CHAT_MSG_LOOT"](ASCT.Frames.SARTE["Item_Loot_Frame"])
---------------------------
--Money_Loot_Frame
---------------------------
Event.RegisterEvent["CHAT_MSG_SYSTEM"](ASCT.Frames.SARTE["Money_Loot_Frame"])
Event.RegisterEvent["CHAT_MSG_MONEY"](ASCT.Frames.SARTE["Money_Loot_Frame"])
---------------------------
--Currency_Loot_Frame
---------------------------
Event.RegisterEvent["CHAT_MSG_SYSTEM"](ASCT.Frames.SARTE["Currency_Loot_Frame"])
Event.RegisterEvent["CHAT_MSG_CURRENCY"](ASCT.Frames.SARTE["Currency_Loot_Frame"])
---------------------------
--Honor_Loot_Frame
---------------------------
Event.RegisterEvent["CHAT_MSG_SYSTEM"](ASCT.Frames.SARTE["Honor_Loot_Frame"])
Event.RegisterEvent["CHAT_MSG_COMBAT_HONOR_GAIN"](ASCT.Frames.SARTE["Honor_Loot_Frame"])