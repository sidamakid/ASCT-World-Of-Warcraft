local isWrathWow = select(4, GetBuildInfo()) > 20504 and select(4, GetBuildInfo()) < 90205
local isTbcWow = (WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC)
local isClassicWow = (WOW_PROJECT_ID == WOW_PROJECT_CLASSIC)

if isTbcWow then
SpellTableShamanShocks = {
["Frost Shock"] = "Frost Shock",
["Earth Shock"] = "Earth Shock",
["Flame Shock"] = "Flame Shock",
}
SpellTableHunterTraps = {
["Freezing Trap"] = "Freezing Trap",
["Snake Trap"] = "Snake Trap",
["Immolation Trap"] = "Immolation Trap",
["Explosive Trap"] = "Explosive Trap",
["Frost Trap"] = "Frost Trap",
}
elseif isClassicWow then
SpellTableShamanShocks = {
["Frost Shock"] = "Frost Shock",
["Earth Shock"] = "Earth Shock",
["Flame Shock"] = "Flame Shock",
}
SpellTableHunterTraps = {
["Freezing Trap"] = "Freezing Trap",
["Immolation Trap"] = "Immolation Trap",
["Explosive Trap"] = "Explosive Trap",
["Frost Trap"] = "Frost Trap",
}
end
