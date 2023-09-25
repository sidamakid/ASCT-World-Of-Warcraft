local L_Table_Functions = Table_Functions_For_ASCT
---------------------------
--Sort Varaibles in Table A to Z
---------------------------
L_Table_Functions["PairsByKeys"] = function (a, t, g)
    a = {}
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
--Example: L_Table_Functions["PairsByKeys"](Table1, Table1(SubTable))