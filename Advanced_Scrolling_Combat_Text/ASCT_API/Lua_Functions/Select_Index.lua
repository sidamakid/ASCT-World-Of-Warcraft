local ASCT = ASCT_Table
local Lua_Functions = ASCT.Lua_Functions
-- Define the function
Lua_Functions.API.Select["Function_Without_Val"] = function(num, tab, api)
   local func = tab[api]
   local var = select(num, func())
   return var
end

Lua_Functions.API.Select["Function_With_Val"] = function(num, tab, api, val)
    local func = tab[api]
    local var = select(num, func(val))
    return var
 end