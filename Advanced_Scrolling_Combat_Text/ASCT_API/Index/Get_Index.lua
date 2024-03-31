local ASCT = ASCT_Table
---------------------------
--Version-Related
---------------------------
ASCT.API.Documentation["GetBuildInfo"] = function()
    local version, build, date, tocversion, localizedVersion, buildType = GetBuildInfo()
    return version, build, date, tocversion, localizedVersion, buildType
end
---------------------------
--GetSpellInfo
---------------------------
ASCT.API.Documentation["GetSpellInfo"] = function(spell)
    local name, rank, icon, castTime, minRange, maxRange, spellID, originalIcon = GetSpellInfo(spell)
    return name, rank, icon, castTime, minRange, maxRange, spellID, originalIcon
end
ASCT.API.Documentation["GetSpellCooldown"] = function(spell)
    local start, duration, enabled, modRate = GetSpellCooldown(spell)
    return start, duration, enabled, modRate
end
ASCT.API.Documentation["GetCombatRating"] = function(CR)
    local rating = GetCombatRating(CR)
    return rating
end
ASCT.API.Documentation["GetSpellPenetration"] = function()
    local spellPen = GetSpellPenetration()
    return spellPen
end
ASCT.API.Documentation["GetSpellBonusHealing"] = function()
    local bonusHeal = GetSpellBonusHealing()
    return bonusHeal
end
---------------------------
--GetLocale
---------------------------
ASCT.API.Documentation["GetLocale"] = function()
    local localeName = GetLocale()
    return localeName
end
ASCT.API.Documentation["GetOSLocale"] = function()
    local localeName = GetOSLocale()
    return localeName
end
---------------------------
--GetItemInfo
---------------------------
ASCT.API.Documentation["GetItemInfo"] = function(item)
    local itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture, sellPrice, classID, subclassID, bindType, expacID, setID, isCraftingReagent = GetItemInfo(item)
    return itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture, sellPrice, classID, subclassID, bindType, expacID, setID, isCraftingReagent
end
ASCT.API.Documentation["GetCurrencyInfo"] = function(type)
    local sName, CurrentAmount, iTexture, earnedThisWeek, weeklyMax, totalMax, isDiscovered, rarity = GetCurrencyInfo(type)
    return sName, CurrentAmount, iTexture, earnedThisWeek, weeklyMax, totalMax, isDiscovered, rarity
end
ASCT.API.Documentation["GetCurrencyInfoFromLink"] = function(link)
    local sName, CurrentAmount, iTexture, earnedThisWeek, weeklyMax, totalMax, isDiscovered, rarity = GetCurrencyInfoFromLink(link)
    return sName, CurrentAmount, iTexture, earnedThisWeek, weeklyMax, totalMax, isDiscovered, rarity
end
ASCT.API.Documentation["GetInventoryItemID"] = function(unit, invSlotId)
    local itemId, unknown = GetInventoryItemID(unit, invSlotId)
    return itemId, unknown
end
ASCT.API.Documentation["GetInventoryItemCooldown"] = function(unit, inventorySlot)
    local start, duration, enable = GetInventoryItemCooldown(unit, inventorySlot)
    return start, duration, enable
end
ASCT.API.Documentation["GetItemQualityColor"] = function(quality)
    local r, g, b, hex = GetItemQualityColor(quality)
    return r, g, b, hex
end
ASCT.API.Documentation["GetAchievementInfo"] = function(achievement)
    local id, name, points, completed, month, day, year, description, flags, icon, rewardText, isGuild, wasEarnedByMe, earnedBy, isStatistic = GetAchievementInfo(achievement)
    return id, name, points, completed, month, day, year, description, flags, icon, rewardText, isGuild, wasEarnedByMe, earnedBy, isStatistic
end
ASCT.API.Documentation["GetTime"] = function()
   local seconds = GetTime()
   return seconds
end