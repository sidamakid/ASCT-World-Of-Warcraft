local ASCT = ASCT_Table
local Strings = ASCT.Strings
--Strings.EventName
ASCT.Events.RegisterEvent["TRANSMOG_COLLECTION_SOURCE_ADDED"] = function(Frame, itemModifiedAppearanceID) Frame:RegisterEvent(Strings.EventName["TRANSMOG_COLLECTION_SOURCE_ADDED"], itemModifiedAppearanceID) return Frame end
ASCT.Events.RegisterEvent["TRANSMOG_COLLECTION_SOURCE_REMOVED"] = function(Frame, itemModifiedAppearanceID) Frame:RegisterEvent(Strings.EventName["TRANSMOG_COLLECTION_SOURCE_REMOVED"], itemModifiedAppearanceID) return Frame end
ASCT.Events.RegisterEvent["TRANSMOG_COLLECTION_UPDATED"] = function(Frame, collectionIndex, modID, itemAppearanceID, reason) Frame:RegisterEvent(Strings.EventName["TRANSMOG_COLLECTION_UPDATED"], collectionIndex, modID, itemAppearanceID, reason) return Frame end
ASCT.Events.RegisterEvent["TRANSMOG_COSMETIC_COLLECTION_SOURCE_ADDED"] = function(Frame, itemModifiedAppearanceID) Frame:RegisterEvent(Strings.EventName["TRANSMOG_COSMETIC_COLLECTION_SOURCE_ADDED"], itemModifiedAppearanceID) return Frame end