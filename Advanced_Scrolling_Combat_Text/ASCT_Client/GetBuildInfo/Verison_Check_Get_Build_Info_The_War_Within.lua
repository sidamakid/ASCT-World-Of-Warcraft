local ASCT = ASCT_Table
local Lua_ASCT, API = ASCT.Lua_ASCT, ASCT.API
---------------------------
--Cataclysm_Patches
---------------------------
ASCT.Client.tocversion["is110000"] = select(4, API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["110000"]
ASCT.Client.tocversion["is110002"] = select(4, API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["110002"]
ASCT.Client.tocversion["is110005"] = select(4, API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["110005"]
ASCT.Client.tocversion["is110007"] = select(4, API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["110007"]
ASCT.Client.tocversion["is110100"] = select(4, API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["110100"]
ASCT.Client.tocversion["is110105"] = select(4, API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["110105"]
ASCT.Client.tocversion["is110107"] = select(4, API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["110107"]
ASCT.Client.tocversion["is110200"] = select(4, API.Documentation["GetBuildInfo"]()) == ASCT.Integers.Client["110200"]