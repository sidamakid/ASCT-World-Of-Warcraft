local isRetailWow = (WOW_PROJECT_ID == WOW_PROJECT_MAINLINE)
local isWrathWow = select(4, GetBuildInfo()) > 20504 and select(4, GetBuildInfo()) < 90205
local isTbcWow = (WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC)
local isClassicWow = (WOW_PROJECT_ID == WOW_PROJECT_CLASSIC)

if isTbcWow then
SpellTableMage = {-- Mage Spells
--Arcane
["Ritual of Refreshment"] = "Ritual of Refreshment",
["Invisibility"] = "Invisibility",
["Counterspell"] = "Counterspell",
["Blink"] = "Blink",
["Arcane Power"] = "Arcane Power",
["Presence of Mind"] = "Presence of Mind",
["Evocation"] = "Evocation",
--Fire
["Fire Blast"] = "Fire Blast",
["Fire Ward"] = "Fire Ward",
["Dragon's Breath"] = "Dragon's Breath",
["Combustion"] = "Combustion",
["Blast Wave"] = "Blast Wave",
--Frost
["Ice Block"] = "Ice Block",
["Frost Nova"] = "Frost Nova",
["Cone of Cold"] = "Cone of Cold",
["Frost Ward"] = "Frost Ward",
["Icy Veins"] = "Icy Veins",
["Summon Water Elemental"] = "Summon Water Elemental",
["Cold Snap"] = "Cold Snap",
--Portals
["Portal: Shattrath"] = "Portal: Shattrath",
["Portal: Stonard"] = "Portal: Stonard",
["Portal: Theramore"] = "Portal: Theramore",
["Portal: Silvermoon"] = "Portal: Silvermoon",
["Portal: Exodar"] = "Portal: Exodar",
["Portal: Stormwind"] = "Portal: Stormwind",
["Portal: Ironforge"] = "Portal: Ironforge",
["Portal: Darnassus"] = "Portal: Darnassus",
["Portal: Orgrimmar"] = "Portal: Orgrimmar",
["Portal: Undercity"] = "Portal: Undercity",
["Portal: Thunder Bluff"] = "Portal: Thunder Bluff",
}
elseif isClassicWow then
SpellTableMage = {-- Mage Spells
--Arcane
["Counterspell"] = "Counterspell",
["Blink"] = "Blink",
["Arcane Power"] = "Arcane Power",
["Presence of Mind"] = "Presence of Mind",
["Evocation"] = "Evocation",
--Fire
["Fire Blast"] = "Fire Blast",
["Fire Ward"] = "Fire Ward",
["Combustion"] = "Combustion",
--Frost
["Ice Block"] = "Ice Block",
["Frost Nova"] = "Frost Nova",
["Cone of Cold"] = "Cone of Cold",
["Frost Ward"] = "Frost Ward",
["Cold Snap"] = "Cold Snap",
--Portals
["Portal: Stormwind"] = "Portal: Stormwind",
["Portal: Ironforge"] = "Portal: Ironforge",
["Portal: Darnassus"] = "Portal: Darnassus",
["Portal: Orgrimmar"] = "Portal: Orgrimmar",
["Portal: Undercity"] = "Portal: Undercity",
["Portal: Thunder Bluff"] = "Portal: Thunder Bluff",
}
elseif isWrathWow then
SpellTableMage = {-- Mage Spells
--Arcane
["Ritual of Refreshment"] = "Ritual of Refreshment",
["Invisibility"] = "Invisibility",
["Counterspell"] = "Counterspell",
["Blink"] = "Blink",
["Arcane Power"] = "Arcane Power",
["Presence of Mind"] = "Presence of Mind",
["Arcane Barrage"] = "Arcane Barrage",
["Evocation"] = "Evocation",
--Fire
["Fire Blast"] = "Fire Blast",
["Fire Ward"] = "Fire Ward",
["Dragon's Breath"] = "Dragon's Breath",
["Combustion"] = "Combustion",
["Blast Wave"] = "Blast Wave",
--Frost
["Ice Block"] = "Ice Block",
["Frost Nova"] = "Frost Nova",
["Cone of Cold"] = "Cone of Cold",
["Frost Ward"] = "Frost Ward",
["Icy Veins"] = "Icy Veins",
["Summon Water Elemental"] = "Summon Water Elemental",
["Cold Snap"] = "Cold Snap",
["Deep Freeze"] = "Deep Freeze",
["Ice Barrier"] = "Ice Barrier",
--Portals
["Portal: Shattrath"] = "Portal: Shattrath",
["Portal: Stonard"] = "Portal: Stonard",
["Portal: Theramore"] = "Portal: Theramore",
["Portal: Silvermoon"] = "Portal: Silvermoon",
["Portal: Exodar"] = "Portal: Exodar",
["Portal: Stormwind"] = "Portal: Stormwind",
["Portal: Ironforge"] = "Portal: Ironforge",
["Portal: Darnassus"] = "Portal: Darnassus",
["Portal: Orgrimmar"] = "Portal: Orgrimmar",
["Portal: Undercity"] = "Portal: Undercity",
["Portal: Thunder Bluff"] = "Portal: Thunder Bluff",
}
elseif isRetailWow then
SpellTableMage = {-- Mage Spells
--Arcane
["Time Warp"] = "Time Warp",
["Mirror Image"] = "Mirror Image",
["Illusion"] = "Illusion",
["Remove Curse"] = "Remove Curse",
["Counterspell"] = "Counterspell",
["Blink"] = "Blink",
["Invisibility"] = "Invisibility",
["Arcane Barrage"] = "Arcane Barrage",
["Greater Invisibility"] = "Greater Invisibility",
["Arcane Power"] = "Arcane Power",
["Touch of the Magi"] = "Touch of the Magi",
["Evocation"] = "Evocation",
["Prismatic Barrier"] = "Prismatic Barrier",
["Presence of Mind"] = "Presence of Mind",
["Arcane Familiar"] = "Arcane Familiar",
["Arcane Orb"] = "Arcane Orb",
["Supernova"] = "Supernova",
--Fire
["Fire Blast"] = "Fire Blast",
["Combustion"] = "Combustion",
["Dragon's Breath"] = "Dragon's Breath",
["Alter Time"] = "Alter Time",
["Blazing Barrier"] = "Blazing Barrier",
["Phoenix Flames"] = "Phoenix Flames",
["Meteor"] = "Meteor",
["Living Bomb"] = "Living Bomb",
["Blast Wave"] = "Blast Wave",
--Frost
["Ice Block"] = "Ice Block",
["Frost Nova"] = "Frost Nova",
["Ice Barrier"] = "Ice Barrier",
["Cone of Cold"] = "Cone of Cold",
["Summon Water Elemental"] = "Summon Water Elemental",
["Icy Veins"] = "Icy Veins",
["Blizzard"] = "Blizzard",
["Frozen Orb"] =  "Frozen Orb",
["Comet Storm"] = "Comet Storm",
["Ice Floes"] = "Ice Floes",
["Ice Nova"] = "Ice Nova",
["Ray of Frost"] = "Ray of Frost",
["Ebonbolt"] = "Ebonbolt",
}
end