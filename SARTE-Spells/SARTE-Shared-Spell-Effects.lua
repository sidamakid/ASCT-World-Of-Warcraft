local isTbcWowOrAbove = select(4, GetBuildInfo()) > 11403

if isTbcWowOrAbove then
SpellTableLust = {
["Heroism"] = "Heroism",
["Bloodlust"] = "Bloodlust"
}
end