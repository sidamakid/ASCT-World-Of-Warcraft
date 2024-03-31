local ASCT = ASCT_Table
local Event = ASCT.Events
--Armor Penetration
Event.RegisterEvent["COMBAT_RATING_UPDATE"](ASCT.Frames.SARTE["Armor_Pen_Frame"])
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](ASCT.Frames.SARTE["Armor_Pen_Frame"])
--Avoidance
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](ASCT.Frames.SARTE["Avoidance_Frame"])
Event.RegisterEvent["COMBAT_RATING_UPDATE"](ASCT.Frames.SARTE["Avoidance_Frame"])
--Block_Rating
Event.RegisterEvent["COMBAT_RATING_UPDATE"](ASCT.Frames.SARTE["Block_Frame"])
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](ASCT.Frames.SARTE["Block_Frame"])
--Defense_Rating
Event.RegisterEvent["COMBAT_RATING_UPDATE"](ASCT.Frames.SARTE["Defense_Frame"])
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](ASCT.Frames.SARTE["Defense_Frame"])
--Critical_Strike 
Event.RegisterEvent["COMBAT_RATING_UPDATE"](ASCT.Frames.SARTE["Critical_Strike_Frame"])
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](ASCT.Frames.SARTE["Critical_Strike_Frame"])
--Expertise_Rating
Event.RegisterEvent["COMBAT_RATING_UPDATE"](ASCT.Frames.SARTE["Expertise_Frame"])
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](ASCT.Frames.SARTE["Expertise_Frame"])
--Dodge_Rating
Event.RegisterEvent["COMBAT_RATING_UPDATE"](ASCT.Frames.SARTE["Dodge_Rating_Frame"])
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](ASCT.Frames.SARTE["Dodge_Rating_Frame"])
--Mastery
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](ASCT.Frames.SARTE["Mastery_Frame"])
Event.RegisterEvent["COMBAT_RATING_UPDATE"](ASCT.Frames.SARTE["Mastery_Frame"])
--Parry_Rating
Event.RegisterEvent["COMBAT_RATING_UPDATE"](ASCT.Frames.SARTE["Parry_Rating_Frame"])
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](ASCT.Frames.SARTE["Parry_Rating_Frame"])
--Hit_Rating
Event.RegisterEvent["COMBAT_RATING_UPDATE"](ASCT.Frames.SARTE["Hit_Rating_Frame"])
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](ASCT.Frames.SARTE["Hit_Rating_Frame"])
--Haste_Rating
Event.RegisterEvent["COMBAT_RATING_UPDATE"](ASCT.Frames.SARTE["Haste_Rating_Frame"])
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](ASCT.Frames.SARTE["Haste_Rating_Frame"])
--Resilience
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](ASCT.Frames.SARTE["Resilience_Frame"])
Event.RegisterEvent["COMBAT_RATING_UPDATE"](ASCT.Frames.SARTE["Resilience_Frame"])
--Spell_Power
Event.RegisterEvent["COMBAT_RATING_UPDATE"](ASCT.Frames.SARTE["Spell_Power_Frame"])
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](ASCT.Frames.SARTE["Spell_Power_Frame"])
--Spell Penetration
Event.RegisterEvent["PLAYER_ENTERING_WORLD"](ASCT.Frames.SARTE["Spell_Pen_Frame"])
Event.RegisterEvent["COMBAT_RATING_UPDATE"](ASCT.Frames.SARTE["Spell_Pen_Frame"])