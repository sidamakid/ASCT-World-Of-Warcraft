local isRetailWow = (WOW_PROJECT_ID == WOW_PROJECT_MAINLINE)
local isClassicWow_Or_isTbcWow = (WOW_PROJECT_ID == WOW_PROJECT_CLASSIC) or (WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC)
if isClassicWow_Or_isTbcWow then
SpellTableDwarf = {
["Stoneform"] = "Stoneform",
}
elseif isRetailWow then
SpellTableDwarf = {
["Stoneform"] = "Stoneform",
}
end