local ASCT = ASCT_Table
local API, Client, Lua_ASCT, Integers = ASCT.API, ASCT.Client, ASCT.Lua_ASCT, ASCT.Integers

Client.Modules["isRetailWow_Or_Above"] = select(4, API.Documentation["GetBuildInfo"]()) >= Integers.Client["110007"]
Client.Modules["isNotRetailWow_Or_Above"] = select(4, API.Documentation["GetBuildInfo"]()) < Integers.Client["110007"]