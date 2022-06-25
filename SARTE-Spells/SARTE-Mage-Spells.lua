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
end