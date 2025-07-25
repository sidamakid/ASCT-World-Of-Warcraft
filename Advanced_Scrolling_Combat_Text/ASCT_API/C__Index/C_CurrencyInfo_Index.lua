local ASCT = ASCT_Table
local Keys = ASCT.Keys
local API = Keys.Metatables["API"]
---------------------------
--CurrencyInfo
---------------------------
API.Documentation["C_CurrencyInfo.GetCurrencyInfo"] = function(number)
    local info = C_CurrencyInfo.GetCurrencyInfo(number)
    return info
end
API.Documentation["C_CurrencyInfo.GetCurrencyInfoFromLink"] = function(link)
    local info = C_CurrencyInfo.GetCurrencyInfoFromLink(link)
    return info
end
API.Documentation["C_CurrencyInfo.GetCoinIcon"] = function(number)
    local amount = C_CurrencyInfo.GetCoinIcon(number)
    return amount
end