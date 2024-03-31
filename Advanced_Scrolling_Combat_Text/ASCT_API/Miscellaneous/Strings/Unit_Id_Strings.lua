local ASCT = ASCT_Table
--ASCT.Strings.UnitId
ASCT.Strings.UnitId["player"] = "player"
ASCT.Strings.UnitId["focus"] = "focus"
ASCT.Strings.UnitId["mouseover"] = "mouseover"
ASCT.Strings.UnitId["pet"] = "pet"
ASCT.Strings.UnitId["target"] = "target"
ASCT.Strings.UnitId["vehicle"] = "vehicle"
--[[
"arenaN"
ASCT.Strings.UnitId["arena1"]
ASCT.Strings.UnitId["arena2"]
ASCT.Strings.UnitId["arena3"]
ASCT.Strings.UnitId["arena4"]
ASCT.Strings.UnitId["arena5"]
Opposing arena member with index N (1,2,3,4 or 5).
"bossN"
The active bosses of the current encounter if available N (1,2,3...,8).
ASCT.Strings.UnitId["boss1"]
ASCT.Strings.UnitId["boss2"]
ASCT.Strings.UnitId["boss3"]
ASCT.Strings.UnitId["boss4"]
ASCT.Strings.UnitId["boss5"]
ASCT.Strings.UnitId["boss6"]
ASCT.Strings.UnitId["boss7"]
ASCT.Strings.UnitId["boss8"]
"partyN"
The Nth party member excluding the player (1,2,3 or 4).
"partypetN"
The pet of the Nth party member (N is 1,2,3, or 4).
"none"
A valid unit token that always refers to no unit. UnitName will return "Unknown, nil" for this UnitID. Use to force a macro to not auto self-cast (/cast [target=none] Healing Wave).
"raidN"
The raid member with raidIndex N (1,2,3,...,40).
"raidpetN"
The pet of the raid member with raidIndex N (1,2,3,...,40)
"nameplateN""
The Nth nameplate (1,2,3,...,40). Cannot be targeted by spells or commands such as /target nameplate1 or /cast [target=nameplate1] Healing Wave.
"spectated<T><N>"
The Nth spectated unit (1,2,3,...,15) for either Team "a" or "b", such as "spectatedb2" for the second unit on team B. Only present in commentator mode.
"spectatedpet<T><N>"
The pet of the Nth spectated unit (1,2,3,...,15) for either Team "a" or "b", such as "spectatedpetb2" for the second units' pet on team B. Only present in commentator mode.
]]