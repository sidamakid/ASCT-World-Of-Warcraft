local addonName, ASCT_Options = ...;
function ASCT_Options:PairsByKeys(t, g)
    local a = Advanced_Scrolling_Combat_Text_DB
    for n in pairs(t) do table.insert(a, n) end
    table.sort(a, g)
    local i = 0      -- iterator variable
    local iter = function ()   -- iterator function
        i = i + 1
        if a[i] == nil then return nil
        else return a[i], t[a[i]]
        end
    end
    return iter
end