local L = ASDC_LOCALE_TABLE
local locale = GetLocale()
-------------------------------------
--English
-------------------------------------
if locale == "enUS" then
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
 --Shared-Spec-names
 L["Frost"] = "Frost";
 L["Restoration"] = "Restoration";
 L["Holy"] = "Holy";
 L["Protection"] = "Protection";
 --Side-Buttons
 L["Reset Class"] = "Reset Class";
 L["Title_SARTE"] = "Scrolling Ability Text";
 L["Tooltip Button"] = "Left click to Open the Options panel";
 L["Color Picker"] = "Color Picker";
 L["Racials"] = "Racials";
 L["Shared Spell cd's"] = "Shared Spell cd's";
 --Custom Button names
 L["Shocks"] = "Shocks";
 L["Traps"] = "Traps";
 L["Lust"] = "Lust";
 L["Tab"] = "This Tab is for Shaman's and Hunter's only.";
 --Ready Text
 L["msg"] = "is now ready!";
 L["msg_Shocks"] = " Shocks are now ready!";
 L["msg_Traps"] = " Traps are now ready!";
 L["msg_Lust"] = " Lust is now ready!";
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
 L["Title"] = "Advanced Scrolling Combat text";
 L["Experience Gains"] = "Experience Gains";
 L["Level up message"] = "Level up message";
 L["Skill Up"] = "Skill Up";
 L["Resource lost"] = "Resource lost";
 L["Mana"] = "Mana";
 L["Rage"] = "Rage";
 L["Energy"] = "Energy";
 L["Runic Power"] = "Runic Power";
 L["Armor"] = "Armor";
 L["Armor lost"] = "Armor lost";
 L["Armor Gained"] = "Armor Gainied";
 --Message
 L["Slash Command Message"] = "Slash command changed for Advanced Scrolling Combat Text. Type /asct to open the options panel";
 L["Features"] = "Features";
 L["Message"] = "Scrolling Combat Text is disabled. If not enabled, Advanced Scrolling Combat text won't show anything.";
 --New things 8/11/2022
 L["Leveling]"] = "Leveling";
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
 L["Debuff has 5 seconds left"] = "Debuff has 5 seconds left";
 L["Announces a Debuff you applied is about to fade on the Target."] = "Announces a Debuff you applied is about to fade on the Target.";
 L["Fading Buffs Alert"] = "Fading Buffs Alert";
 L["Buff has 5 seconds left"] = "Buff has 5 seconds left";
 L["Announces when a buff you gained is about to fade"] = "Announces when a buff you gained is about to fade";
 --New things 8/15/2022
 L["Color Picker Stats"] = "Colors for stats";
 L["Color Picker Spells"] = "Colors for Spells";
 L["Color Picker Leveling"] = "Colors for Leveling";
 L["Achievement Gains"] = "Achievement Gains";
 L["Colors for Fading Auras"] = "Colors for Fading Auras";
 --New things 8/17/2022
 L["Health"] = "Health";
 L["You died at"] = "You died at";
 L["Death Quadrants"] = "Death Quadrants";
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
 L["Not Enough Honor Points"] = "Not Enough Honor Points";
 L["Not Arena Honor Points"] = "Not Arena Honor Points";
 L["Players Invited"] = "Players Invited";
 L["Player Left your group"] = "Player Left your group";
 L["Player joins your group"] = "Player joins your group";
 L["War mode Off"] = "War mode Off";
 L["War mode On"] = "War mode On";
 L["Pvp On"] = "Pvp On";
 L["Pvp Off"] = "Pvp Off";
 L["You Loot"] = "You Loot";
 L["You lost"] = "You lost";
 L["Money Gains"] = "Money Gains";
 L["Money Lost"] = "Money Lost";
 L["Items Looted"] = "Items Looted";
 L["Shadow Resistance"] = "Shadow Resistance";
 L["Arcane Resistance"] = "Arcane Resistance";
 L["Frost Resistance"] = "Frost Resistance";
 L["Fire Resistance"] = "Fire Resistance";
 L["Nature Resistance"] = "Nature Resistance";
 L["Advanced Scrolling Combat Text successfully Loaded. To load the options panel. Type /ASCT or click the mini map Icon."] = "Advanced Scrolling Combat Text successfully Loaded. To load the options panel. Type /ASCT or click the mini map Icon.";
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
 L["Unsupported_Line_3"] = "The addon is only supported in Vanilla, TBC Classic, Wrath Classic, and Retail.";
 L["Unsupported_Line_4"] = "Would you like to Disable the addon? Or keep it enabled?";
 L["Keep Enabled"] = "Keep Enabled";
 L["Disable"] = "Disable";
end