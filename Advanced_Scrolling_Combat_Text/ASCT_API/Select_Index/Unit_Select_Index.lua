local ASCT = ASCT_Table
local Lua_ASCT = ASCT.Lua_ASCT
---------------------------
--UnitClass
---------------------------
Lua_ASCT.API["UnitClass"] = function(num, val)
   local var = Lua_ASCT.Functions["ASCT_API_With_Val"](num, "UnitClass", val)
   return var
end
---------------------------
--UnitRace
---------------------------
Lua_ASCT.API["UnitRace"] = function(num, val)
    local var = Lua_ASCT.Functions["ASCT_API_With_Val"](num, "UnitRace", val)
    return var
 end
---------------------------
--UnitFactionGroup
---------------------------
Lua_ASCT.API["UnitFactionGroup"] = function(num, val)
    local var = Lua_ASCT.Functions["ASCT_API_With_Val"](num, "UnitFactionGroup", val)
    return var
 end
