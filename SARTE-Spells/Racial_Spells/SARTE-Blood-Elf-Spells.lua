local isRetailWow = (WOW_PROJECT_ID == WOW_PROJECT_MAINLINE)
local isTbcWow = (WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC)
if isTbcWow then
SpellTableBloodElf = {
["Arcane Torrent"] = "Arcane Torrent",
["Mana Tap"] = "Mana Tap",
}
elseif isRetailWow then
SpellTableBloodElf = {
["Arcane Torrent"] = "Arcane Torrent",
}
end