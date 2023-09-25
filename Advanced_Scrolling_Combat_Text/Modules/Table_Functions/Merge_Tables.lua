local L_Table_Functions = Table_Functions_For_ASCT
---------------------------
--Merges Tables Togther / Can also use Mixin
---------------------------
L_Table_Functions["TableCombine"] = function (obj1, obj2)
    for key, val in pairs(obj2) do
      obj1[key] = val
    end
    return obj1
  end