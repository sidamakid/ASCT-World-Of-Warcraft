local ASCT = ASCT_Table
ASCT.API.Documentation["_G.UnitAura"] = function(Unit, index, filter)
    local name, icon, count, dispelType, duration, expirationTime, source, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, castByPlayer, nameplateShowAll, timeMod, unknown = _G.UnitAura(Unit, index, filter)
    return name, icon, count, dispelType, duration, expirationTime, source, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, castByPlayer, nameplateShowAll, timeMod, unknown
end
ASCT.API.Documentation["_G.UnitBuff"] = function(Unit, index, filter)
    local name, icon, count, dispelType, duration, expirationTime, source, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, castByPlayer, nameplateShowAll, timeMod, unknown = _G.UnitBuff(Unit, index, filter)
    return name, icon, count, dispelType, duration, expirationTime, source, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, castByPlayer, nameplateShowAll, timeMod, unknown
end
ASCT.API.Documentation["_G.UnitDebuff"] = function(Unit, index, filter)
    local name, icon, count, dispelType, duration, expirationTime, source, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, castByPlayer, nameplateShowAll, timeMod, unknown = _G.UnitDebuff(Unit, index, filter)
    return name, icon, count, dispelType, duration, expirationTime, source, isStealable, nameplateShowPersonal, spellId, canApplyAura, isBossDebuff, castByPlayer, nameplateShowAll, timeMod, unknown
end