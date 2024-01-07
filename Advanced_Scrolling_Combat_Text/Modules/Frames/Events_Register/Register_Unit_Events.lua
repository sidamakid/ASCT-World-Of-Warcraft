local L_ASCT_Locale_Spells, L_ASCT_Events = ASCT_Spell_Locale_Table, ASCT_Events_Table
---------------------------
--UNIT
---------------------------
L_ASCT_Events["UNIT_SPELLCAST_SUCCEEDED"] = function(Frame, Unit, castGUID, spellID) Frame:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED", Unit, castGUID, spellID) return Frame end
L_ASCT_Events["UNIT_STATS"] = function(Frame, Unit) Frame:RegisterUnitEvent("UNIT_STATS", Unit) return Frame end
L_ASCT_Events["UNIT_POWER_FREQUENT"] = function (Frame, Unit) Frame:RegisterEvent("UNIT_POWER_FREQUENT", Unit) return Frame end
L_ASCT_Events["UNIT_ATTACK_POWER"] = function(Frame, Unit) Frame:RegisterEvent("UNIT_ATTACK_POWER", Unit) return Frame end
L_ASCT_Events["UNIT_RESISTANCES"] = function(Frame, Unit) Frame:RegisterEvent("UNIT_RESISTANCES", Unit) return Frame end
L_ASCT_Events["UNIT_MAXHEALTH"] = function(Frame, Unit) Frame:RegisterEvent("UNIT_MAXHEALTH", Unit) return Frame end