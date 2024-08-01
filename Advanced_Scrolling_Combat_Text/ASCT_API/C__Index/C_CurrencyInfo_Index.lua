local ASCT = ASCT_Table
---------------------------
--CurrencyInfo
---------------------------
ASCT.API.Documentation["C_CurrencyInfo.GetCurrencyInfo"] = function(number)
    local info = C_CurrencyInfo.GetCurrencyInfo(number)
    return info
end
ASCT.API.Documentation["C_CurrencyInfo.GetCurrencyInfoFromLink"] = function(link)
    local info = C_CurrencyInfo.GetCurrencyInfoFromLink(link)
    return info
end