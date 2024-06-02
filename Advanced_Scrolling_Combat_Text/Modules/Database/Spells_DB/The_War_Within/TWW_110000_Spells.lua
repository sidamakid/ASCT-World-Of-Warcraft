local ASCT, L = ASCT_Table, ASDC_LOCALE_TABLE
if ASCT.Client["isTheWarWithinWow"] and ASCT.Client.tocversion["is110000"] then
    ASCT.Database.Spells["Spells_TWW"] = {
        --Races
        ["Race"] = {
            ["Blood Elf"] = false,
            ["Orc"] = false,
            ["Undead"] = false,
            ["Troll"] = false,
            ["Tauren"] = false,
            ["Draenei"] = false,
            ["Gnome"] = false,
            ["Human"] = false,
            ["Night Elf"] = false,
            ["Dwarf"] = false,
            ["Worgen"] = false,
            ["Pandaren"] = false,
            ["Void Elf"] = false,
            ["Lightforged Draenei"] = false,
            ["Dark Iron Dwarf"] = false,
            ["Mechagnome"] = false,
            ["Kul Tiran"] = false,
            ["Goblin"] = false,
            ["Nightborne"] = false,
            ["Highmountain Tauren"] = false,
            ["Vulpera"] = false,
            ["Zandalari Troll"] = false,
            ["Mag'har Orc"] = false,
            ["Dracthyr"] = false,
            },
        --Classes
        ["Class"] = {
            ["Rogue"] = false,
            ["Priest"] = false,
            ["Warrior"] = false,
            ["Druid"] = false,
            ["Warlock"] = false,
            ["Shaman"] = false,
            ["Hunter"] = false,
            ["Paladin"] = false,
            ["Mage"] = false,
            ["Death_Knight"] = false,
            ["Demon_Hunter"] = false,
            ["Monk"] = false,
            ["Evoker"] = false,
        },
        --Rogue spells
        ["Assassination"] = {

        },
        ["Outlaw"] = {

        },
        ["Subtlety"] = {

        },
    --Priest spells
        ["Shadow"] = {

            },
        ["Holy_Priest"] = {

        },
        ["Discipline"] = {

        },
          --Warrior spells
        ["Arms"] = {

        },
        ["Fury"] = {

        },
        ["Protection_Warrior"] = {

        },
            --Warlock spells
        ["Affliction"] = {

        },
        ["Demonology"] = {

        },
        ["Destruction"] = {

        },
            --Druid Spells
        ["Balance"] = {

        },
        ["Feral_Combat"] = {

        },
        ["Druid_Restoration"] = {
            ["Nature's Swiftness"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        --Shaman spells
        ["Elemental"] = {

        },
        ["Enhancement"] = {

        },
        ["Shaman_Restoration"] = {
            ["Nature's Swiftness"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        --Hunter spells
        ["Beast Mastery"] = {

        },
        ["Marksmanship"] = {

        },
        ["Survival"] = {

        },
        --Paladin
        ["Holy_Paladin"] = {

        },
        ["Protection_Paladin"] = {

        },
        ["Retribution"] = {

        },
        --Mage Spells
        ["Arcane"] = {
            ["Portal: Shattrath"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Portal: Stonard"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Portal: Theramore"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Portal: Silvermoon"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Portal: Exodar"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Portal: Stormwind"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Portal: Ironforge"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Portal: Darnassus"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Portal: Orgrimmar"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Portal: Undercity"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Portal: Thunder Bluff"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Portal: Oribos"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Portal: Dalaran - Northrend"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Ancient Portal: Dalaran"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Portal: Warspear"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Portal: Vale of Eternal Blossoms"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Portal: Tol Barad"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Portal: Valdrakken"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Fire"] = {

        },
        ["Frost_Mage"] = {

        },
        --Demon Hunter Spells
        ["Havoc"] = {

        },
        ["Vengeance"] = {

        },
        --Death_Knight Spells
        ["Blood"] = {

        },
        ["Frost_DK"] = {

        },
        ["Unholy"] = {

        },
        --Monk Spells
        ["Brewmaster"] = {

        },
        ["Mistweaver"] = {

        },
        ["Windwalker"] = {

        },
        --Evoker Spells
        ["Devastation"] = {

        },
        ["Preservation"] = {

        },
        --Racials
        ["Blood Elf"] = {

        },
        ["Dracthyr"] = {

        },
        ["Dark Iron Dwarf"] = {

        },
        ["Draenei"] = {

        },
        ["Goblin"] = {

        },
        ["Dwarf"] = {

        },
        ["Highmountain Tauren"] = {

        },
        ["Gnome"] = {

        },
        ["Mag'har Orc"] = {

        },
        ["Human"] = {

        },
        ["Nightborne"] = {

        },
        ["Kul Tiran"] = {

        },
        ["Orc"] = {

        },
        ["Lightforged Draenei"] = {

        },
        ["Pandaren"] = {

        },
        ["Mechagnome"] = {

        },
        ["Tauren"] = {

        },
        ["Night Elf"] = {

        },
        ["Troll"] = {

        },
        ["Void Elf"] = {

        },
        ["Undead"] = {

        },
        ["Vulpera"] = {

        },
        ["Worgen"] = {

        },
        ["Zandalari Troll"] = {

        },
    }
    local Lust_Table
    if select(3, ASCT.API.Documentation["UnitClass"]("player")) == 7 and select(2, ASCT.API.Documentation["UnitFactionGroup"]("player")) == L["Alliance"] then
    Lust_Table = {["Heroism"] = {SpellEnable = false, iconEnable = false, nameEnable = false}}
    ASCT.Functions.Table["TableCombine"](ASCT.Database.Spells["Spells_TWW"]["Enhancement"], Lust_Table)
    elseif select(3, ASCT.API.Documentation["UnitClass"]("player")) == 7 and select(2, ASCT.API.Documentation["UnitFactionGroup"]("player")) == L["Horde"] then
    Lust_Table = { ["Bloodlust"] = {SpellEnable = false, iconEnable = false, nameEnable = false} }
    ASCT.Functions.Table["TableCombine"](ASCT.Database.Spells["Spells_TWW"]["Enhancement"], Lust_Table)
    end
end