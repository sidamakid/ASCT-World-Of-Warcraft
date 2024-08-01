local ASCT = ASCT_Table

ASCT.API.Documentation["C_Item.RequestLoadItemData"] = function(ItemID)
    C_Item.RequestLoadItemData(ItemID)
    return ItemID
end
ASCT.API.Documentation["C_Item.GetItemInfo"] = function(itemInfo)
    local itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture, sellPrice, classID, subclassID, bindType, expacID, setID, isCraftingReagent = C_Item.GetItemInfo(itemInfo)
    return itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture, sellPrice, classID, subclassID, bindType, expacID, setID, isCraftingReagent
end
ASCT.API.Documentation["C_Item.GetItemQualityColor"] = function(quality)
    local colorRGBR, colorRGBG, colorRGBB, qualityString = C_Item.GetItemQualityColor(quality)
    return colorRGBR, colorRGBG, colorRGBB, qualityString
end