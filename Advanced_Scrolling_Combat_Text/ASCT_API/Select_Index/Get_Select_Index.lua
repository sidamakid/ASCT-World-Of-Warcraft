local ASCT = ASCT_Table
local Lua_ASCT = ASCT.Lua_ASCT
---------------------------
--GetBuildInfo
---------------------------
Lua_ASCT.API["GetBuildInfo"] = function(num)
   local val = Lua_ASCT.Functions["ASCT_API_Without_Val"](num, "GetBuildInfo")
   return val
end