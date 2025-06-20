local ASCT = ASCT_Table
local Strings = ASCT.Strings
--Strings.EventName
ASCT.Events.RegisterEvent["COMBAT_RATING_UPDATE"] = function(Frame) Frame:RegisterEvent(Strings.EventName["COMBAT_RATING_UPDATE"]) return Frame end
ASCT.Events.RegisterEvent["COMBAT_LOG_EVENT"] = function(Frame, timestamp, subevent, hideCaster, guid, name, flags, raidFlags) Frame:RegisterEvent(Strings.EventName["COMBAT_LOG_EVENT"], timestamp, subevent, hideCaster, guid, name, flags, raidFlags) return Frame end
ASCT.Events.RegisterEvent["COMBAT_LOG_EVENT_UNFILTERED"] = function(Frame, timestamp, subevent, hideCaster, guid, name, flags, raidFlags) Frame:RegisterEvent(Strings.EventName["COMBAT_LOG_EVENT_UNFILTERED"], timestamp, subevent, hideCaster, guid, name, flags, raidFlags) return Frame end