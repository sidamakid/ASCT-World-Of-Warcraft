local ASCT = ASCT_Table
local Strings = ASCT.Strings
--Strings.EventName
ASCT.Events.RegisterEvent["QUEST_WATCH_UPDATE"] = function(Frame, questID) Frame:RegisterEvent(Strings.EventName["QUEST_WATCH_UPDATE"], questID) return Frame end