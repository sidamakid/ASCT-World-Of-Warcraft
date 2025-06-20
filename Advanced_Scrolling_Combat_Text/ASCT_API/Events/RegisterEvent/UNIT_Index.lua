local ASCT = ASCT_Table
local Strings = ASCT.Strings
--Strings.EventName
ASCT.Events.RegisterEvent["UNIT_AURA"] = function(Frame, Unit) Frame:RegisterEvent(Strings.EventName["UNIT_AURA"], Unit) return Frame end
ASCT.Events.RegisterEvent["UNIT_SPELLCAST_SUCCEEDED"] = function(Frame, unitTarget, castGUID, spellID) Frame:RegisterEvent(Strings.EventName["UNIT_SPELLCAST_SUCCEEDED"], unitTarget, castGUID, spellID) return Frame end
ASCT.Events.RegisterEvent["UNIT_STATS"] = function(Frame, Unit) Frame:RegisterUnitEvent(Strings.EventName["UNIT_STATS"], Unit) return Frame end
ASCT.Events.RegisterEvent["UNIT_POWER_FREQUENT"] = function (Frame, Unit) Frame:RegisterEvent(Strings.EventName["UNIT_POWER_FREQUENT"], Unit) return Frame end
ASCT.Events.RegisterEvent["UNIT_ATTACK_POWER"] = function(Frame, Unit) Frame:RegisterEvent(Strings.EventName["UNIT_ATTACK_POWER"], Unit) return Frame end
ASCT.Events.RegisterEvent["UNIT_RESISTANCES"] = function(Frame, Unit) Frame:RegisterEvent(Strings.EventName["UNIT_RESISTANCES"], Unit) return Frame end
ASCT.Events.RegisterEvent["UNIT_MAXHEALTH"] = function(Frame, Unit) Frame:RegisterEvent(Strings.EventName["UNIT_MAXHEALTH"], Unit) return Frame end
ASCT.Events.RegisterEvent["UNIT_QUEST_LOG_CHANGED"] = function(Frame, Unit) Frame:RegisterEvent(Strings.EventName["UNIT_QUEST_LOG_CHANGED"], Unit) return Frame end