local isRetailWow = (WOW_PROJECT_ID == WOW_PROJECT_MAINLINE)
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
elseif isRetailWow then
SpellTableDeath_Knight = {--Death Knight Spells
--Blood
["Sacrificial Pact"] = "Sacrificial Pact",
["Corpse Exploder"] = "Corpse Exploder",
["Dark Command"] = "Dark Command",
["Dancing Rune Weapon"] = "Dancing Rune Weapon",
["Asphyxiate"] = "Asphyxiate",
["Blood Boil"] = "Blood Boil",
["Gorefiend's Grasp"] = "Gorefiend's Grasp",
["Rune Tap"] = "Rune Tap",
["Vampiric Blood"] = "Vampiric Blood",
["Blooddrinker"] = "Blooddrinker",
["Blood Tap"] = "Blood Tap",
["Tombstone"] = "Tombstone",
["Death Pact"] = "Death Pact",
["Bonestorm"] = "Bonestorm",
["Consumption"] = "Consumption",
["Mark of Blood"] = "Mark of Blood",
--Frost
["Icebound Fortitude"] = "Icebound Fortitude",
["Mind Freeze"] = "Mind Freeze",
["Lichborne"] = "Lichborne",
["Wraith Walk"] = "Wraith Walk",
["Remorseless Winter"] = "Remorseless Winter",
["Frostwyrm's Fury"] = "Frostwyrm's Fury",
["Pillar of Frost"] = "Pillar of Frost",
["Empower Rune Weapon"] = "Empower Rune Weapon",
["Glacial Advance"] = "Glacial Advance",
["Breath of Sindragosa"] = "Breath of Sindragosa",
["Blinding Sleet"] = "Blinding Sleet",
["Horn of Winter"] = "Horn of Winter",
["Hypothermic Presence"] = "Hypothermic Presence",
--Unholy
["Death and Decay"] = "Death and Decay",
["Anti-Magic Zone"] = "Anti-Magic Zone",
["Death Grip"] = "Death Grip",
["Anti-Magic Shell"] = "Anti-Magic Shell",
["Raise Ally"] = "Raise Ally",
["Death's Advance"] = "Death's Advance",
["Death Gate"] = "Death Gate",
["Raise Dead"] = "Raise Dead",
["Dark Transformation"] = "Dark Transformation",
["Army of the Dead"] = "Army of the Dead",
["Apocalypse"] = "Apocalypse",
["Summon Gargoyle"] = "Summon Gargoyle",
["Soul Reaper"] = "Soul Reaper",
["Unholy Blight"] = "Unholy Blight",
["Defile"] = "Defile",
["Unholy Assault"] = "Unholy Assault",
}
end