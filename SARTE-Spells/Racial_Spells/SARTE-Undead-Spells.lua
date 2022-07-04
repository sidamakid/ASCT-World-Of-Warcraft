local isRetailWow = (WOW_PROJECT_ID == WOW_PROJECT_MAINLINE)
local isClassicWow_Or_isTbcWow = (WOW_PROJECT_ID == WOW_PROJECT_CLASSIC) or (WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC)
if isClassicWow_Or_isTbcWow then
SpellTableUndead = {
["Cannibalize"] = "Cannibalize",
["Will of the Forsaken"] = "Will of the Forsaken",
}
elseif isRetailWow then
SpellTableUndead = {
["Cannibalize"] = "Cannibalize",
["Will of the Forsaken"] = "Will of the Forsaken",
}
end