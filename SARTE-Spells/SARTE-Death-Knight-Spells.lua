local isWrathWow = select(4, GetBuildInfo()) > 20504 and select(4, GetBuildInfo()) < 90205

if isWrathWow then
SpellTableDeath_Knight = {--Death Knight Spells
--Blood
["Mark of Blood"] = "Mark of Blood",
["Dancing Rune Weapon"] = "Dancing Rune Weapon",
["Hysteria"] = "Hysteria",
["Rune Tap"] = "Rune Tap",
["Vampiric Blood"] = "Vampiric Blood",
--Frost
["Unbreakable Armor"] = "Unbreakable Armor",
["Deathchill"] = "Deathchill",
["Hungering Cold"] = "Hungering Cold",
["Howling Blast"] = "Howling Blast",
["Lichborne"] = "Lichborne",
--Unholy
["Anti-Magic Zone"] = "Anti-Magic Zone",
["Bone Shield"] = "Bone Shield",
["Corpse Explosion"] = "Corpse Explosion",
["Death Gate"] = "Death Gate",
["Ghoul Frenzy"] = "Ghoul Frenzy",
["Summon Gargoyle"] = "Summon Gargoyle",
}
end