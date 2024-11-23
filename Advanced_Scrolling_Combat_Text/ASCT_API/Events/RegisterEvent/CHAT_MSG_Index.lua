local ASCT = ASCT_Table
local Strings = ASCT.Strings
--Strings.EventName
ASCT.Events.RegisterEvent["CHAT_MSG_LOOT"] = function (Frame) Frame:RegisterEvent(Strings.EventName["CHAT_MSG_LOOT"]) return Frame end
ASCT.Events.RegisterEvent["CHAT_MSG_SYSTEM"] = function (Frame) Frame:RegisterEvent(Strings.EventName["CHAT_MSG_SYSTEM"]) return Frame end
ASCT.Events.RegisterEvent["CHAT_MSG_MONEY"] = function (Frame) Frame:RegisterEvent(Strings.EventName["CHAT_MSG_MONEY"]) return Frame end
ASCT.Events.RegisterEvent["CHAT_MSG_COMBAT_XP_GAIN"] = function(Frame) Frame:RegisterEvent(Strings.EventName["CHAT_MSG_COMBAT_XP_GAIN"]) return Frame end
ASCT.Events.RegisterEvent["CHAT_MSG_SKILL"] = function(Frame) Frame:RegisterEvent(Strings.EventName["CHAT_MSG_SKILL"]) return Frame end
ASCT.Events.RegisterEvent["CHAT_MSG_CURRENCY"] = function(Frame) Frame:RegisterEvent(Strings.EventName["CHAT_MSG_CURRENCY"]) return Frame end
ASCT.Events.RegisterEvent["CHAT_MSG_COMBAT_HONOR_GAIN"] = function(Frame) Frame:RegisterEvent(Strings.EventName["CHAT_MSG_COMBAT_HONOR_GAIN"]) return Frame end
ASCT.Events.RegisterEvent["CHAT_MSG_COMBAT_FACTION_CHANGE"] = function(Frame) Frame:RegisterEvent(Strings.EventName["CHAT_MSG_COMBAT_FACTION_CHANGE"]) return Frame end