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
ASCT.API.Documentation["GetSpellDescription"] = function(spellID)
    local desc = GetSpellDescription(spellID)
    return desc
end
ASCT.API.Documentation["GetSpellCooldown"] = function(spell)
    local start, duration, enabled, modRate = GetSpellCooldown(spell)
    return start, duration, enabled, modRate
end

ASCT.API.Documentation["GetSpellPenetration"] = function()
    local spellPen = GetSpellPenetration()
    return spellPen
end
ASCT.API.Documentation["GetSpellBonusHealing"] = function()
    local bonusHeal = GetSpellBonusHealing()
    return bonusHeal
end
ASCT.API.Documentation["GetSpellCharges"] = function(spell)
    local currentCharges, maxCharges, cooldownStart, cooldownDuration, chargeModRate = GetSpellCharges(spell)
    return currentCharges, maxCharges, cooldownStart, cooldownDuration, chargeModRate
end
---------------------------
--GetCombatRating
---------------------------
ASCT.API.Documentation["GetCombatRating"] = function(CR)
    local rating = GetCombatRating(CR)
    return rating
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

ASCT.API.Documentation["GetColorRGB"] = function(Frame)
    local rgbR, rgbG, rgbB = Frame:GetColorRGB()
    return rgbR, rgbG, rgbB
end

ASCT.API.Documentation["GetQuestLogTitle"] = function(questLogIndex)
    local title, level, suggestedGroup, isHeader, isCollapsed, isComplete, frequency, questID, startEvent, displayQuestID, isOnMap, hasLocalPOI, isTask, isBounty, isStory, isHidden, isScaling = GetQuestLogTitle(questLogIndex)
    return title, level, suggestedGroup, isHeader, isCollapsed, isComplete, frequency, questID, startEvent, displayQuestID, isOnMap, hasLocalPOI, isTask, isBounty, isStory, isHidden, isScaling
end

ASCT.API.Documentation["GetQuestLogIndexByID"] = function(questID)
    local questLogIndex = GetQuestLogIndexByID(questID)
    return questLogIndex
end
---------------------------
--GetPvpPower
---------------------------
ASCT.API.Documentation["GetPvpPowerDamage"] = function()
    local powerDamage = GetPvpPowerDamage()
    return powerDamage
end
ASCT.API.Documentation["GetPvpPowerHealing"] = function()
    local powerHealing = GetPvpPowerHealing()
    return powerHealing
end