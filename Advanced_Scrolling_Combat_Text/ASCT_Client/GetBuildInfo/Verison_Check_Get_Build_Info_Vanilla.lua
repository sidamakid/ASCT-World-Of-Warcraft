local ASCT = ASCT_Table
local Lua_ASCT, API = ASCT.Lua_ASCT, ASCT.API
---------------------------
--Vanilla_Patches
---------------------------
ASCT.Client.tocversion["is11403"] = Lua_ASCT.API["GetBuildInfo"](4) == ASCT.Integers.Client["11403"]
ASCT.Client.tocversion["is11404"] = Lua_ASCT.API["GetBuildInfo"](4) == ASCT.Integers.Client["11404"]
ASCT.Client.tocversion["is11500"] = Lua_ASCT.API["GetBuildInfo"](4) == ASCT.Integers.Client["11500"]
ASCT.Client.tocversion["is11501"] = Lua_ASCT.API["GetBuildInfo"](4) == ASCT.Integers.Client["11501"]
ASCT.Client.tocversion["is11502"] = Lua_ASCT.API["GetBuildInfo"](4) == ASCT.Integers.Client["11502"]
ASCT.Client.tocversion["is11503"] = Lua_ASCT.API["GetBuildInfo"](4) == ASCT.Integers.Client["11503"]
ASCT.Client.tocversion["is11504"] = Lua_ASCT.API["GetBuildInfo"](4) == ASCT.Integers.Client["11504"]
ASCT.Client.tocversion["is11505"] = Lua_ASCT.API["GetBuildInfo"](4) == ASCT.Integers.Client["11505"]
ASCT.Client.tocversion["is11506"] = Lua_ASCT.API["GetBuildInfo"](4) == ASCT.Integers.Client["11506"]