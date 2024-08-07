local ASCT, L = ASCT_Table, ASCT_locale_Table
if ASCT.Client.LE_EXPANSION_LEVEL["isCataclysmWow"] and ASCT.Client.tocversion["is40300"] then
    ASCT.Database.Spells["Spells_Cataclysm"] = {
    ------------------------
    --Races
    ------------------------
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
            ["Goblin"] = false,
            },
    ------------------------
    --Classes
    ------------------------
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
            ["Death Knight"] = false,
            },
    ------------------------
    --Rogue spells
    ------------------------
        ["Assassination"] = {

        },
        ["Combat"] = {

        },
        ["Subtlety"] = {

        },
    ------------------------
    --Priest spells
    ------------------------
        ["Shadow"] = {

          },
       ["Holy_Priest"] = {

        },
       ["Discipline"] = {

          },
    ------------------------
    --Warrior spells
    ------------------------
        ["Arms"] = {

        },
        ["Fury"] = {

        },
        ["Protection_Warrior"] = {

        },
    ------------------------
    --Druid Spells
    ------------------------
        ["Balance"] = {

            },
        ["Feral_Combat"] = {

            },
        ["Druid_Restoration"] = {

            },
    ------------------------
    --Warlock spells
    ------------------------
      ["Affliction"] = {

        },
       ["Demonology"] = {

        },
        ["Destruction"] = {

        },
    ------------------------
    --Shaman spells
    ------------------------
        ["Elemental"] = {

            },
        ["Enhancement"] = {

        },
        ["Shaman_Restoration"] = {

        },
        ["Shared_Shaman_spells"] = {
            Shocks = false,
        },
    ------------------------
    --Hunter spells
    ------------------------
        ["Beast Mastery"] = {

          },
       ["Marksmanship"] = {

        },
       ["Survival"] = {

        },
        ["Shared_Hunter_spells"] = {
            Traps = false,
        },
    ------------------------
    --Paladin
    ------------------------
        ["Holy_Paladin"] = {

        },
        ["Protection_Paladin"] = {

        },
        ["Retribution"] = {
            ["Judgement of Light"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Judgement of Justice"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Judgement of Wisdom"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
    ------------------------
    --Mage
    ------------------------
        ["Arcane"] = {

        },
        ["Fire"] = {

        },
        ["Frost_Mage"] = {

        },
    ------------------------
    --Death_Knight
    ------------------------
        ["Blood"] = {

        },
        ["Frost_DK"] = {

        },
        ["Unholy"] = {

        },
    ------------------------
    --Racials
    ------------------------
        ["Draenei"] = {
            ["Gift of the Naaru"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Blood Elf"] = {
            ["Arcane Torrent"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Undead"] = {
            ["Will of the Forsaken"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
            ["Cannibalize"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Orc"] = {
            ["Blood Fury"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Troll"] = {
            ["Berserking"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Tauren"] = {
            ["War Stomp"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Human"] = {
            ["Will to Survive"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Night Elf"] = {
            ["Shadowmeld"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Gnome"] = {
            ["Escape Artist"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Dwarf"] = {
            ["Stoneform"] = {SpellEnable = false, iconEnable = false, nameEnable = false},
        },
        ["Goblin"] = {

        },
        ["Worgen"] = {

        },
    }

local Lust_Table
if select(3, ASCT.API.Documentation["UnitClass"]("player")) == 7 and select(2, ASCT.API.Documentation["UnitFactionGroup"]("player")) == L["Alliance"] then
Lust_Table = {["Heroism"] = {SpellEnable = false, iconEnable = false, nameEnable = false}}
ASCT.Functions.Table["TableCombine"](ASCT.Database.Spells["Spells_Cataclysm"]["Enhancement"], Lust_Table)
elseif select(3, ASCT.API.Documentation["UnitClass"]("player")) == 7 and select(2, ASCT.API.Documentation["UnitFactionGroup"]("player")) == L["Horde"] then
Lust_Table = { ["Bloodlust"] = {SpellEnable = false, iconEnable = false, nameEnable = false} }
ASCT.Functions.Table["TableCombine"](ASCT.Database.Spells["Spells_Cataclysm"]["Enhancement"], Lust_Table)
end
end
