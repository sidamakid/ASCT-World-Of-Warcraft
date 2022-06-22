local isWrathWow = select(4, GetBuildInfo()) > 20504 and select(4, GetBuildInfo()) < 90205
local isTbcWow = select(4, GetBuildInfo()) > 11403 and select(4, GetBuildInfo()) < 30305
local isClassicWow = select(4, GetBuildInfo()) == 11403

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
end