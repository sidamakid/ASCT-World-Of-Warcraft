local ASCT = ASCT_Table
if ASCT.Client.LE_EXPANSION_LEVEL["isCataclysmWow"] and ASCT.Client.tocversion["is40300"] then
ASCT.Database.Spells["ASCT_Locale"] = {--Advanced Scrolling Combat Text Localizing Table
    --Rogue

    --Priest

    --Warrior

    --Warlock

    --Druid

    --Mage

    --Portals
    ["Portal: Darnassus"] = 11419,
    ["Portal: Exodar"] = 32266,
    ["Portal: Ironforge"] = 11416,
    ["Portal: Orgrimmar"] = 11417,
    ["Portal: Shattrath"] = 33691 or 35717,
    ["Portal: Silvermoon"] = 32267,
    ["Portal: Stormwind"] = 10059,
    ["Portal: Thunder Bluff"] = 11420,
    ["Portal: Undercity"] = 11418,
    --Mage-Countined

    --Shaman

    --Shaman-Lust
    ["Heroism"] = 32182,
    ["Bloodlust"] = 2825,
    --Shaman-Shocks
    ["Earth Shock"] = 8042,
    ["Flame Shock"] = 8050,
    ["Frost Shock"] = 8056,
    --Shaman-Countined

    --Hunter

    --Traps
    ["Explosive Trap"] = 13813,
    ["Freezing Trap"] = 1499,
    ["Frost Trap"] = 13809,
    ["Snake Trap"] = 34600,
    ["Immolation Trap"] = 13795,
    ["Trap Launcher: Explosive Trap"] = 425777,
    --Hunter-Countined

    --Paladin

    --Judgement
    ["Judgement of Justice"] = 53407,
    ["Judgement of Light"] = 20271,
    ["Judgement of Wisdom"] = 53408,
    --Paladin-Countined

    --Death_Knight Spells

    --Shared-spell-Names
    ["Nature's Swiftness"] = 17116 or 16188,
    --Racials
    ["Arcane Torrent"] = 25046 or 28730 or 50613,
    ["Berserking"] = 26297,
    ["Blood Fury"] = 20572 or 33697 or 33702,
    ["Cannibalize"] = 20577,
    ["Escape Artist"] = 20589,
    ["Will to Survive"] = 59752,
    ["Gift of the Naaru"] = 28880 or 59542 or 59543 or 59544 or 59545 or 59547 or 59548,
    ["Shadowmeld"] = 58984,
    ["Stoneform"] = 20594,
    ["War Stomp"] = 20549,
    ["Will of the Forsaken"] = 7744,
}
end