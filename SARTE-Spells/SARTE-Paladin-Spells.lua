local isRetailWow = (WOW_PROJECT_ID == WOW_PROJECT_MAINLINE)
local isWrathWow = select(4, GetBuildInfo()) > 20504 and select(4, GetBuildInfo()) < 90205
local isTbcWow = (WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC)
local isClassicWow = (WOW_PROJECT_ID == WOW_PROJECT_CLASSIC)

if isTbcWow then
SpellTablePaladin = {--Paladin Spells
--Holy
["Consecration"] = "Consecration",
["Exorcism"] = "Exorcism",
["Holy Wrath"] = "Holy Wrath",
["Lay on Hands"] = "Lay on Hands",
["Turn Evil"] = "Turn Evil",
["Hammer of Wrath"] = "Hammer of Wrath",
["Divine Illumination"] = "Divine Illumination",
["Divine Favor"] = "Divine Favor",
["Holy Shock"] = "Holy Shock",
--Protection
["Righteous Defense"] = "Righteous Defense",
["Divine Intervention"] = "Divine Intervention",
["Divine Shield"] = "Divine Shield",
["Blessing of Protection"] = "Blessing of Protection",
["Blessing of Freedom"] = "Blessing of Freedom",
["Hammer of Justice"] = "Hammer of Justice",
["Divine Protection"] = "Divine Protection",
["Blessing of Sacrifice"] = "Blessing of Sacrifice",
["Avenger's Shield"] = "Avenger's Shield",
["Holy Shield"] = "Holy Shield",
--Retribution
["Avenging Wrath"] =  "Avenging Wrath",
["Judgement"] = "Judgement",
["Crusader Strike"] = "Crusader Strike",
["Repentance"] = "Repentance",
}
elseif isClassicWow then
SpellTablePaladin = {--Paladin Spells
--Holy
["Consecration"] = "Consecration",
["Exorcism"] = "Exorcism",
["Holy Wrath"] = "Holy Wrath",
["Lay on Hands"] = "Lay on Hands",
["Turn Undead"] = "Turn Undead",
["Hammer of Wrath"] = "Hammer of Wrath",
["Holy Shock"] = "Holy Shock",
--Protection
["Divine Intervention"] = "Divine Intervention",
["Divine Shield"] = "Divine Shield",
["Blessing of Protection"] = "Blessing of Protection",
["Blessing of Freedom"] = "Blessing of Freedom",
["Hammer of Justice"] = "Hammer of Justice",
["Divine Protection"] = "Divine Protection",
["Blessing of Sacrifice"] = "Blessing of Sacrifice",
["Holy Shield"] = "Holy Shield",
--Retribution
["Judgement"] = "Judgement",
["Repentance"] = "Repentance",
}
elseif isWrathWow then
SpellTablePaladin = {--Paladin Spells
--Holy
["Consecration"] = "Consecration",
["Exorcism"] = "Exorcism",
["Holy Wrath"] = "Holy Wrath",
["Lay on Hands"] = "Lay on Hands",
["Turn Evil"] = "Turn Evil",
["Hammer of Wrath"] = "Hammer of Wrath",
["Divine Illumination"] = "Divine Illumination",
["Aura Mastery"] = "Aura Mastery",
["Divine Plea"] = "Divine Plea",
["Divine Favor"] = "Divine Favor",
["Holy Shock"] = "Holy Shock",
--Protection
["Righteous Defense"] = "Righteous Defense",
["[Divine Intervention"] = "Divine Intervention",
["Divine Shield"] = "Divine Shield",
["Hand of Protection"] = "Hand of Protection",
["Hand of Freedom"] = "Hand of Freedom",
["Hammer of Justice"] = "Hand of Freedom",
["Divine Protection"] = "Divine Protection",
["Hand of Sacrifice"] = "Hand of Sacrifice",
["Avenger's Shield"] = "Avenger's Shield",
["Holy Shield"] = "Holy Shield",
["Divine Sacrifice"] = "Divine Sacrifice",
["Hand of Reckoning"] = "Hand of Reckoning",
["Hand of Salvation"] = "Hand of Salvation",
["Hammer of the Righteous"] = "Hammer of the Righteous",
["Shield of Righteousness"] = "Shield of Righteousness",
--Retribution
["Avenging Wrath"] = "Avenging Wrath",
["Judgement of Light"] = "Judgement of Light",
["Judgement of Justice"] = "Judgement of Justice",
["Judgement of Wisdom"] = "Judgement of Wisdom",
["Crusader Strike"] = "Crusader Strike",
["Repentance"] = "Repentance",
["Divine Storm"] = "Divine Storm",
}
elseif isRetailWow then
SpellTablePaladin = {--Paladin Spells
--Holy
["Consecration"] = "Consecration",
["Lay on Hands"] = "Lay on Hands",
["Contemplation"] = "Contemplation",
["Turn Evil"] = "Turn Evil",
["Holy Shock"] = "Holy Shock",
["Divine Protection"] = "Divine Protection",
["Aura Mastery"] = "Aura Mastery",
["Cleanse"] = "Cleanse",
["Avenging Crusader"] = "Avenging Crusader",
["Beacon of Virtue"] = "Beacon of Virtue",
["Bestow Faith"] = "Bestow Faith",
["Light's Hammer"] = "Light's Hammer",
["Rule of Law"] = "Rule of Law",
--Protection
["Blessing of Protection"] = "Blessing of Protection",
["Divine Shield"] = "Divine Shield",
["Blessing of Sacrifice"] = "Blessing of Sacrifice",
["Blessing of Freedom"] = "Blessing of Freedom",
["Hammer of Justice"] = "Hammer of Justice",
["Hammer of Wrath"] = "Hammer of Wrath",
["Hand of Reckoning"] = "Hand of Reckoning",
["Divine Steed"] = "Divine Steed",
["Guardian of Ancient Kings"] = "Guardian of Ancient Kings",
["Ardent Defender"] = "Ardent Defender",
["Avenger's Shield"] = "Avenger's Shield",
["Hammer of the Righteous"] = "Hammer of the Righteous",
["Blessing of Spellwarding"] = "Blessing of Spellwarding",
["Blessed Hammer"] = "Blessed Hammer",
["Moment of Glory"] = "Moment of Glory",
--Retribution
["Avenging Wrath"] = "Avenging Wrath",
["Judgment"] = "Judgment",
["Crusader Strike"] = "Crusader Strike",
["Rebuke"] = "Rebuke",
["Cleanse Toxins"] = "Cleanse Toxins",
["Shield of Vengeance"] = "Shield of Vengeance",
["Wake of Ashes"] = "Wake of Ashes",
["Blade of Justice"] = "Blade of Justice",
["Hand of Hindrance"] = "Hand of Hindrance",
["Crusade"] = "Crusade",
["Final Reckoning"] = "Final Reckoning",
["Eye for an Eye"] = "Eye for an Eye",
["Execution Sentence"] = "Execution Sentence",
}
end