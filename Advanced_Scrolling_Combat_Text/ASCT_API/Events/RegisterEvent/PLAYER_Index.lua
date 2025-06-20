local ASCT = ASCT_Table
local Strings = ASCT.Strings
--Strings.EventName
ASCT.Events.RegisterEvent["PLAYER_ENTERING_WORLD"] = function(Frame) Frame:RegisterEvent(Strings.EventName["PLAYER_ENTERING_WORLD"]) return Frame end
ASCT.Events.RegisterEvent["PLAYER_DEAD"] = function(Frame) Frame:RegisterEvent(Strings.EventName["PLAYER_DEAD"]) return Frame end
ASCT.Events.RegisterEvent["PLAYER_LEVEL_UP"] = function(Frame) Frame:RegisterEvent(Strings.EventName["PLAYER_LEVEL_UP"]) return Frame end
ASCT.Events.RegisterEvent["PLAYER_EQUIPMENT_CHANGED"] = function(Frame) Frame:RegisterEvent(Strings.EventName["PLAYER_EQUIPMENT_CHANGED"]) return Frame end