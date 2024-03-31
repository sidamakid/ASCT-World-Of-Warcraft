local ASCT = ASCT_Table
---------------------------
--Unit_information
---------------------------
ASCT.API.Documentation["UnitArmor"] = function(Unit)
    local base, effectiveArmor, armor, bonusArmor = UnitArmor(Unit)
    return base, effectiveArmor, armor, bonusArmor
end
ASCT.API.Documentation["UnitAttackPower"] = function(Unit)
    local base, posBuff, negBuff= UnitAttackPower(Unit)
    return base, posBuff, negBuff
end
ASCT.API.Documentation["UnitHealthMax"] = function(Unit)
    local maxHealth = UnitHealthMax(Unit)
    return maxHealth
end
ASCT.API.Documentation["UnitXPMax"] = function(Unit)
    local nextXP = UnitXPMax(Unit)
    return nextXP
end
ASCT.API.Documentation["UnitName"] = function(Unit)
    local name, realm = UnitName(Unit)
    return name, realm
end
ASCT.API.Documentation["UnitLevel"] = function(Unit)
    local level = UnitLevel(Unit)
    return level
end
ASCT.API.Documentation["UnitPower"] = function(Unit)
    local power = UnitPower(Unit)
    return power
end
ASCT.API.Documentation["UnitPowerType"] = function(Unit)
    local powerType, powerToken, altR, altG, altB = UnitPowerType(Unit)
    return powerType, powerToken, altR, altG, altB
end
ASCT.API.Documentation["UnitResistance"] = function(Unit, resistanceIndex)
    local base, total, bonus, minus = UnitResistance(Unit, resistanceIndex)
    return base, total, bonus, minus
end
ASCT.API.Documentation["UnitStat"] = function (Unit, index)
    local stat, effectiveStat, posBuff, negBuff = UnitStat(Unit, index)
    return stat, effectiveStat, posBuff, negBuff
end
ASCT.API.Documentation["UnitPosition"] = function(Unit)
    local posY, posX, posZ, instanceID = UnitPosition(Unit)
    return posY, posX, posZ, instanceID
end
---------------------------
--Unit Aura / Buff / Debuff
---------------------------
ASCT.API.Documentation["UnitAura"] = function(Unit, index, filter)
    local name, icon, count, dispelType, duration, expirationTime, source, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, castByPlayer, nameplateShowAll, timeMod, unknown = UnitAura(Unit, index, filter)
    return name, icon, count, dispelType, duration, expirationTime, source, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, castByPlayer, nameplateShowAll, timeMod, unknown
end
ASCT.API.Documentation["UnitBuff"] = function(Unit, index, filter)
    local name, icon, count, dispelType, duration, expirationTime, source, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, castByPlayer, nameplateShowAll, timeMod, unknown = UnitBuff(Unit, index, filter)
    return name, icon, count, dispelType, duration, expirationTime, source, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, castByPlayer, nameplateShowAll, timeMod, unknown
end
ASCT.API.Documentation["UnitDebuff"] = function(Unit, index, filter)
    local name, icon, count, dispelType, duration, expirationTime, source, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, castByPlayer, nameplateShowAll, timeMod, unknown = UnitDebuff(Unit, index, filter)
    return name, icon, count, dispelType, duration, expirationTime, source, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, castByPlayer, nameplateShowAll, timeMod, unknown
end
---------------------------
--Unit Player
---------------------------
ASCT.API.Documentation["UnitClass"] = function(Unit)
    local className, classFilename, classID = UnitClass(Unit)
    return className, classFilename, classID
end
ASCT.API.Documentation["UnitRace"] = function(Unit)
    local raceName, raceFile, raceID = UnitRace(Unit)
    return raceName, raceFile, raceID
end
ASCT.API.Documentation["UnitFactionGroup"] = function(Unit)
    local englishFaction, localizedFaction = UnitFactionGroup(Unit)
    return englishFaction, localizedFaction
end
