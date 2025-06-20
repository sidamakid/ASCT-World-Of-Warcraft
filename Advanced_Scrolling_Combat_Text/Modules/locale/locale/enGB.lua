local ASCT, L = ASCT_Table, ASCT_locale_Table
local API, Strings = ASCT.API, ASCT.Strings
local locale = API.Documentation["GetLocale"]()
-------------------------------------
--English (GB)
-------------------------------------
if locale == Strings.LocaleName["enGB"] then
 --Rogue
 L["Rogue"] = "Rogue";
 L["Assassination"] = "Assassination";
 L["Combat"] = "Combat";
 L["Outlaw"] = "Outlaw";
 L["Subtlety"] = "Subtlety";
 --Priest
 L["Priest"] = "Priest";
 L["Shadow"] = "Shadow";
 L["Discipline"] = "Discipline";
 L["Racials_Priest"] = "Racials_Priest";
 --Warrior
 L["Warrior"] = "Warrior";
 L["Arms"] = "Arms";
 L["Fury"] = "Fury";
 --Druid
 L["Druid"] = "Druid";
 L["Balance"] = "Balance";
 L["Feral_Combat"] = "Feral_Combat";
 --Shaman
 L["Shaman"] = "Shaman";
 L["Elemental"] = "Elemental";
 L["Enhancement"] = "Enhancement";
 --Warlock
 L["Warlock"] = "Warlock";
 L["Affliction"] = "Affliction";
 L["Demonology"] = "Demonology";
 L["Destruction"] = "Destruction";
 --Hunter
 L["Hunter"] = "Hunter";
 L["Beast Mastery"] = "Beast Mastery";
 L["Marksmanship"] = "Marksmanship";
 L["Survival"] = "Survival";
 --Paladin
 L["Paladin"] = "Paladin";
 L["Retribution"] = "Retribution";
  --Mage
 L["Mage"] = "Mage";
 L["Arcane"] = "Arcane";
 L["Fire"] = "Fire";
 --Demon Hunter
 L["Havoc"] = "Havoc";
 L["Vengeance"] = "Vengeance";
 --Death Knight
 L["Blood"] = "Blood";
 L["Unholy"] = "Unholy";
 --Monk
 L["Brewmaster"] = "Brewmaster";
 L["Mistweaver"] = "Mistweaver";
 L["Windwalker"] = "Windwalker";
 --Evoker
 L["Preservation"] = "Preservation";
 L["Devastation"] = "Devastation";
 L["Augmentation"] = "Augmentation";
 --Shared-Spec-names
 L["Frost"] = "Frost";
 L["Restoration"] = "Restoration";
 L["Holy"] = "Holy";
 L["Protection"] = "Protection";
 --Side-Buttons
 L["Reset Class"] = "Reset Class";
 L["Title_SARTE"] = "Scrolling Ability Text";
 L["Tooltip Button"] = "Left click to Open the Options panel";
 L["Color Picker"] = "Colour Picker";
 L["Racials"] = "Racials";
 L["Shared Spell cd's"] = "Shared Spell CDs";
 --Custom Button names
 L["Shocks"] = "Shocks";
 L["Traps"] = "Traps";
 L["Lust"] = "Lust";
 L["This Tab is for Shaman's and Hunter's only."] = "This Tab is for Shaman's and Hunter's only.";
 --Ready Text
 L["msg"] = "is now ready!";
 L["msg_Shocks"] = " Shocks are now ready!";
 L["msg_Traps"] = " Traps are now ready!";
 L["msg_Lust"] = " Lust is now ready!";
 --message
 L["Nothing"] = "Nothing";
 L["Open To Options Panel"] = "Open To Options Panel";
 --New things
 L["Icon"] = "Icon";
 L["Name"] = "Name";
 --Advanced Scrolling Combat Text
 L["Your skill in"] = "Your skill in";
 L["has increased to"] = "has increased to";
 L["Congratulations"] = "Congratulations";
 L["you are now level"] = "you are now level";
 L["Title"] = "Advanced Scrolling Combat Text";
 L["Experience Gains"] = "Experience Gains";
 L["Level up message"] = "Level up message";
 L["Skill Up"] = "Skill Up";
 L["Resource lost"] = "Resource lost";
 L["Mana"] = "Mana";
 L["Rage"] = "Rage";
 L["Energy"] = "Energy";
 L["Runic Power"] = "Runic Power";
 L["Armor"] = "Armour";
 L["Armor lost"] = "Armour lost";
 L["Armor Gained"] = "Armour Gained";
 --Message
 L["Slash Command Message"] = "Slash command changed for Advanced Scrolling Combat Text. Type /asct to open the options panel";
 L["Features"] = "Features";
 L["Message"] = "Scrolling Combat Text is disabled. If not enabled, Advanced Scrolling Combat text won't show anything.";
 --New things 8/11/2022
 L["Leveling"] = "Leveling";
 L["Lost"] = "Lost";
 L["Gained"] = "Gained";
 L["Attack Power"] = "Attack Power";
 L["Agility"] = "Agility";
 L["Strength"] = "Strength";
 L["Intellect"] = "Intellect";
 L["Spirit"] = "Spirit";
 L["Stamina"] = "Stamina";
 --New things 8/14/2022
 L["Auras"] = "Auras";
 L["Fading Debuffs Alert"] = "Fading Debuffs Alert";
 L["Is About to Fade!"] = "Is About to Fade!";
 L["Debuff has 5 seconds left"] = "Debuff has 5 seconds remaining.";
 L["Announces a Debuff you applied is about to fade on the Target."] = "Announces a Debuff you applied is about to fade on the Target.";
 L["Fading Buffs Alert"] = "Fading Buffs Alert";
 L["Buff has 5 seconds left"] = "Buff has 5 seconds left";
 L["Announces when a buff you gained is about to fade"] = "Announces when a buff you gained is about to fade";
 --New things 8/15/2022
 L["Color Picker Stats"] = "Colours for stats";
 L["Color Picker Spells"] = "Colours for Spells";
 L["Color Picker Leveling"] = "Colours for Leveling";
 L["Achievement Gains"] = "Achievement Gains";
 L["Colors for Fading Auras"] = "Colours for Fading Auras";
 --New things 8/17/2022
 L["Health"] = "Health";
 L["You died at"] = "You died at";
 L["Death Coordinates"] = "Death Coordinates";
 L["Has challenged you to a duel."] = "Has challenged you to a duel.";
 L["Duel Requests"] = "Duel Requests";
 L["Messages"] = "Messages";
 L["Inventory full"] = "Inventory full";
 L["Locked Items"] = "Locked Items";
 L["Group Invites"] = "Group Invites";
 L["Quest Accepted"] = "Quest Accepted";
 L["Quest Completed"] = "Quest Completed";
 L["Quest Log Full"] = "Quest Log Full";
 L["Trade Requests"] = "Trade Requests";
 L["Facing the wrong way"] = "Facing the wrong way";
 L["Friends come Online"] = "Friends come Online";
 L["Friends go Offline"] = "Friends go Offline";
 L["Zone discovery"] = "Zone discovery";
 L["Unlearned Skills"] = "Unlearned Skills";
 L["Rested"] = "Rested";
 L["Sent Mail"] = "Sent Mail";
 L["Dungeon Difficulty Changed"] = "Dungeon Difficulty Changed";
 L["Not Enough Honor Points"] = "Not Enough Honour Points";
 L["Not Arena Honor Points"] = "Not Arena Honour Points";
 L["Players Invited"] = "Players Invited";
 L["Player Left your group"] = "Player Left your group";
 L["Player joins your group"] = "Player joins your group";
 L["War mode Off"] = "War mode Off";
 L["War mode On"] = "War mode On";
 L["Pvp On"] = "Pvp On";
 L["Pvp Off"] = "Pvp Off";
 L["You Loot"] = "You Loot";
 L["You lost"] = "You've lost";
 L["Money Gains"] = "Money Gains";
 L["Money Lost"] = "Money Lost";
 L["Items Looted"] = "Items Looted";
 L["Shadow Resistance"] = "Shadow Resistance";
 L["Arcane Resistance"] = "Shadow Resistance";
 L["Frost Resistance"] = "Frost Resistance";
 L["Fire Resistance"] = "Fire Resistance";
 L["Nature Resistance"] = "Nature Resistance";
 L["Advanced Scrolling Combat Text successfully Loaded. To load the options panel. Type /ASCT or click the mini map Icon."] = "Advanced Scrolling Combat Text successfully loaded. To load the options panel, type /ASCT or click the mini map icon.";
 --New things 9/2/2022
 L["Holy Power"] = "Holy Power";
 L["Astral Power"] = "Astral Power";
 L["Maelstrom"] = "Maelstrom";
 L["Insanity"] = "Insanity";
 L["Fury"] = "Fury";
 L["Focus"] = "Focus";
 --New things 9/18/2022
 L["Hit Rating"] = "Hit Rating";
 L["Critical Strike Rating"] = "Critical Strike Rating";
 L["Expertise Rating"] = "Expertise Rating";
 L["Resilience Rating"] = "Resilience Rating";
 L["Dodge Rating"] = "Dodge Rating";
 L["Defense Rating"] = "Defense Rating";
 L["Parry Rating"] = "Parry Rating";
 L["Block Rating"] = "Block Rating";
 L["Haste Rating"] = "Haste Rating";
 L["Spell Power"] = "Spell Power";
 L["Unsupported_Line_1"] = "You're running Advanced Scrolling Combat Text in an Unsupported game Version.";
 L["Unsupported_Line_2"] = "The Addon does not work on Private Servers.";
 L["Unsupported_Line_3"] = "The addon is only supported on Official Blizzard Servers.";
 L["Unsupported_Line_4"] = "Would you like to Disable the addon? Or keep it enabled?";
 L["Unsupported_Line_5"] = "Advanced Scrolling Combat Text not loaded!";
 L["Keep Enabled"] = "Keep Enabled";
 L["Disable"] = "Disable";
 L["You have gained the"] = "You have gained the";
 L["skill"] = "skill";
 L["Skill Gained"] = "Skill Gained";
 --New Things 4/1/2023
 L["Armor Penetration"] = "Armour Penetration";
 L["Spell Penetration"] = "Spell Penetration";
 --New Things 5/27/2023 
 L["Stats"] = "Stats";
 L["Trinkets"] = "Trinkets";
 L["Trinket Slot One"] = "The first trinket in slot 13.";
 L["Trinket Slot One Info"] = "Announces when your first trinket comes off cooldown.";
 L["Trinket 1"] = "Trinket 1";
 L["Trinket 2"] = "Trinket 2";
 L["Trinket Slot Two"] = "The second trinket in slot 14.";
 L["Trinket Slot Two Info"] = "Announces when your second trinket comes off cooldown.";
 --New Things 8/26/2023
 L["Debuff fade time"] = "Debuff fade time";
 L["The time warning for Debuffs about to fade"] = "The time warning for Debuffs about to fade";
 L["The size of the Spell Icon"] = "The size of the Spell Icon";
 L["Spell Icon Size"] = "Spell Icon Size";
 L["Settings"] = "Settings";
 --New Things 8/28/2023
 L["Reset Icon Size"] = "Reset Icon Size";
 L["Reset Debuff fade time"] = "Reset Debuff fade time";
 L["Reset Both Aura and Icon Values"] = "Reset Both Aura and Icon Values";
 L["Trinket_1"] = "Trinket 1";
 L["Trinket_2"] = "Trinket 2";
 --New Things 8/29/2023
 L["Loot"] = "Loot";
 --New Things 9/2/2023
 L["Alliance"] = "Alliance";
 L["Horde"] = "Horde";
 --New Things 9/5/2023
 L["Icon Size"] = "Icon Size";
 L["The size of the message icon"] = "The size of the message icon";
 --New things 9/17/2023
 L["Mastery"] = "Mastery";
 L["Avoidance"] = "Avoidance";
 --New things 9/24/2023
 L["Minimap Icon"] = "Minimap Icon";
 --New things 12/30/2023
 L["Scrolling Combat Text is disabled. If not enabled, Advanced Scrolling Combat Text won't show anything."] = "Scrolling Combat Text is disabled. If not enabled, Advanced Scrolling Combat Text won't show anything.";
 --New things 1/01/2024
 L["is now ready!"] = "is now ready!";
 L["Is Now Ready!"] = "Is Now Ready!";
 L["is about to fade!"] = "is about to fade!";
 L["Is About To Fade!"] = "Is About To Fade!";
 L["Uppercase"] = "Uppercase";
 L["Lowercase"] = "Lowercase";
 --New things 3/16/2024
 L["About"] = "About";
 L["About_Line_1"] = "Advanced Scrolling Combat Text";
 L["About_Line_2"] = "(Originally Named Scrolling Ability Text)";
 L["About_Line_3"] = "Is an addon that adds multifunctionality that the Default Blizzard Floating Combat Text does not offer.";
 L["About_Line_4"] = "This addon can track when an ability comes off cooldown, Stat changes, Experience Gains, Resource losses, and more!";
 L["About_Line_5"] = "Encounter a bug or want a feature added? Report it to the GitHub Repository!";
 --New things 3/31/2024
 L["Resistances"] = "Resistances";
 --New things 5/24/2024
 L["Transmog"] = "Transmog";
 --New things 5/26/2024
 L["has been added to your appearance collection."] = "has been added to your appearance collection.";
 --New things 6/01/2024
 L["Miscellaneous"] = "Miscellaneous";
 --New things 6/23/2024
 L["Icon Enable"] = "Icon Enable";
 L["Name Enable"] = "Name Enable";
 --New things 7/14/2024
 L["Ready!"] = "Ready!";
 L["Is Ready!"] = "Is Ready!";
 --New things 7/21/2024
 L["X"] = "X";
 L["Y"] = "Y";
 L["Message Selector"] = "Message Selector";
 --New things 01/01/2025
 L["Quest Progress"] = "Quest Progress";
 L["Complete"] = "Complete";
 --New things 02/01/2025
 L["On Login"] = "On Login";
 L["Chatbox"] = "Chatbox";
 L["Transparency"] = "Transparency";
 L["Entry Limit"] = "Entry Limit";
 L["Confirm"] = "Confirm";
 L["Use /asct help for a list of all the slash commands used in the asct addon."] = "Use /asct help for a list of all the slash commands used in the asct addon.";
 --New things 02/03/2025
 L["Ready Message"] = "Ready Message";
 --New things 03/22/2025
 L["PVP Talents"] = "PVP Talents";
 --New things 04/05/2025
 L["Reset Options Panel Size And Location"] = "Reset Options Panel Size And Location";
 --New things 06/08/2025
 L["PVP Power Damage"] = "PVP Power Damage";
 L["PVP Power Healing"] = "PVP Power Healing";
end