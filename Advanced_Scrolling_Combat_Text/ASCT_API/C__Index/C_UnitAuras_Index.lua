local ASCT = ASCT_Table
local Keys = ASCT.Keys
local API = Keys.Metatables["API"]
---------------------------
--CurrencyInfo
---------------------------
API.Documentation["C_UnitAuras.GetAuraDataByIndex"] = function(unit, index, filter)
    local info = C_UnitAuras.GetAuraDataByIndex(unit, index, filter)
    return info
end