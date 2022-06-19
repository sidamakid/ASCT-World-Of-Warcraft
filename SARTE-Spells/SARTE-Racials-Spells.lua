local isWrathWow = select(4, GetBuildInfo()) > 20504 and select(4, GetBuildInfo()) < 90205
local isTbcWow = select(4, GetBuildInfo()) > 11403 and select(4, GetBuildInfo()) < 30305
local isClassicWow = select(4, GetBuildInfo()) == 11403

if isTbcWow then
SpellTableRacials = {
--Blood Elf
["Arcane Torrent"] = "Arcane Torrent",
["Mana Tap"] = "Mana Tap",
--Orc
["Blood Fury"] = "Blood Fury",
--Undead
["Cannibalize"] = "Cannibalize",
["Will of the Forsaken"] = "Will of the Forsaken",
--Troll
["Berserking"] = "Will of the Forsaken",
--Tauren
["War Stomp"] = "War Stomp",
--Dranei
["Gift of the Naaru"] = "Gift of the Naaru",
--Gnome
["Escape Artist"] = "Escape Artist",
--Human
["Perception"] = "Perception",
--Night Elf
["Shadowmeld"] = "Shadowmeld",
--Dwarf
["Stoneform"] = "Stoneform",
}
elseif isClassicWow then
SpellTableRacials = {
--Orc
["Blood Fury"] = "Blood Fury",
--Undead
["Cannibalize"] = "Cannibalize",
["Will of the Forsaken"] = "Will of the Forsaken",
--Troll
["Berserking"] = "Berserking",
--Tauren
["War Stomp"] = "War Stomp",
--Gnome
["Escape Artist"] = "Escape Artist",
--Human
["Perception"] = "Perception",
--Night Elf
["Shadowmeld"] = "Shadowmeld",
--Dwarf
["Stoneform"] = "Stoneform",
}
end