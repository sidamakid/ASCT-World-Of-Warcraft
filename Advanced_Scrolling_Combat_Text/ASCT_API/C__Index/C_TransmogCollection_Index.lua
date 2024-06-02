local ASCT = ASCT_Table

ASCT.API.Documentation["C_TransmogCollection.GetSourceItemID"] = function(itemModifeiedAppereanceID)
    local itemID = C_TransmogCollection.GetSourceItemID(itemModifeiedAppereanceID)
    return itemID
end