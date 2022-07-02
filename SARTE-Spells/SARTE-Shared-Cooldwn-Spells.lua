local isWrathWow = select(4, GetBuildInfo()) > 20504 and select(4, GetBuildInfo()) < 90205
local isTbcWow = (WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC)
local isClassicWow = (WOW_PROJECT_ID == WOW_PROJECT_CLASSIC)

if isTbcWow then
SpellTable_Shaman_Shocks = {--Shaman Shocks
--Shocks
["Frost Shock"] = "Frost Shock",
["Flame Shock"] = "Flame Shock",
["Earth Shock"] = "Earth Shock",
}
SpellTableHunterTraps = {--Hunter Traps
--Traps
["Explosive Trap"] = "Explosive Trap",
["Immolation Trap"] = "Immolation Trap",
["Frost Trap"] = "Frost Trap",
["Snake Trap"] = "Snake Trap",
["Freezing Trap"] = "Freezing Trap",
}
elseif isClassicWow then
SpellTable_Shaman_Shocks = {--Shaman Shocks
--Shocks
["Frost Shock"] = "Frost Shock",
["Flame Shock"] = "Flame Shock",
["Earth Shock"] = "Earth Shock",
}
SpellTableHunterTraps = {--Hunter Traps
--Traps
["Explosive Trap"] = "Explosive Trap",
["Immolation Trap"] = "Immolation Trap",
["Frost Trap"] = "Frost Trap",
["Freezing Trap"] = "Freezing Trap",
}
end
