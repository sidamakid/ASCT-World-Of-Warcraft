local ASCT = ASCT_Table
local Client, Lua_ASCT, Integers = ASCT.Client, ASCT.Lua_ASCT, ASCT.Integers

Client.Modules["isRetailWow_Or_Above"] = Lua_ASCT.API["GetBuildInfo"](4) >= Integers.Client["110007"]
Client.Modules["isNotRetailWow_Or_Above"] = Lua_ASCT.API["GetBuildInfo"](4) < Integers.Client["110007"]