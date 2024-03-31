local ASCT = ASCT_Table
ASCT.Events.RegisterEvent["UNIT_SPELLCAST_SUCCEEDED"] = function(Frame, unitTarget, castGUID, spellID) Frame:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED", unitTarget, castGUID, spellID) return Frame end
ASCT.Events.RegisterEvent["UNIT_STATS"] = function(Frame, Unit) Frame:RegisterUnitEvent("UNIT_STATS", Unit) return Frame end
ASCT.Events.RegisterEvent["UNIT_POWER_FREQUENT"] = function (Frame, Unit) Frame:RegisterEvent("UNIT_POWER_FREQUENT", Unit) return Frame end
ASCT.Events.RegisterEvent["UNIT_ATTACK_POWER"] = function(Frame, Unit) Frame:RegisterEvent("UNIT_ATTACK_POWER", Unit) return Frame end
ASCT.Events.RegisterEvent["UNIT_RESISTANCES"] = function(Frame, Unit) Frame:RegisterEvent("UNIT_RESISTANCES", Unit) return Frame end
ASCT.Events.RegisterEvent["UNIT_MAXHEALTH"] = function(Frame, Unit) Frame:RegisterEvent("UNIT_MAXHEALTH", Unit) return Frame end