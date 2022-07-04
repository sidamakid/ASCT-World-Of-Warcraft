local isRetailWow = (WOW_PROJECT_ID == WOW_PROJECT_MAINLINE)
local isTbcWow = (WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC)
if isTbcWow then
SpellTableDranei = {
["Gift of the Naaru"] = "Gift of the Naaru",
}
elseif isRetailWow then
SpellTableDranei = {
["Gift of the Naaru"] = "Gift of the Naaru",
}
end