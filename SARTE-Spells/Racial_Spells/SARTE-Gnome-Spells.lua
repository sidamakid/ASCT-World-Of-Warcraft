local isRetailWow = (WOW_PROJECT_ID == WOW_PROJECT_MAINLINE)
local isClassicWow_Or_isTbcWow = (WOW_PROJECT_ID == WOW_PROJECT_CLASSIC) or (WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC)
if isClassicWow_Or_isTbcWow then
SpellTableGnome = {
["Escape Artist"] = "Escape Artist",
}
elseif isRetailWow then
SpellTableGnome = {
["Escape Artist"] = "Escape Artist",
}
end