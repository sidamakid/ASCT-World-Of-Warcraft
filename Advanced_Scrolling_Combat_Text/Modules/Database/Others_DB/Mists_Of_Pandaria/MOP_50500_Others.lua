local ASCT = ASCT_Table
if ASCT.Client.LE_EXPANSION_LEVEL["isMOPWow"] and ASCT.Client.tocversion["is50500"] then
ASCT.Database.Spells["Others_MOP"] = {
	["Advanced_Scrolling_Combat_Text_Stats"] = {
		["Agility"] = {StatEnable = false, Gains = false, Lost = false},
		["Armor"] = {StatEnable = false, Gains = false, Lost = false},
		["Attack Power"] = {StatEnable = false, Gains = false, Lost = false},
		["Critical Strike"] = {StatEnable = false, Gains = false, Lost = false},
		["Dodge"] = {StatEnable = false, Gains = false, Lost = false},
		["Expertise"] = {StatEnable = false, Gains = false, Lost = false},
		["Haste"] = {StatEnable = false, Gains = false, Lost = false},
		["Health"] = {StatEnable = false, Gains = false, Lost = false},
		["Hit"] = {StatEnable = false, Gains = false, Lost = false},
		["Intellect"] = {StatEnable = false, Gains = false, Lost = false},
		["Mastery"] = {StatEnable = false, Gains = false, Lost = false},
		["PVP Power"] = {StatEnable = false, Gains = false, Lost = false},
		["PVP Resilience"] = {StatEnable = false, Gains = false, Lost = false},
		["Parry"] = {StatEnable = false, Gains = false, Lost = false},
		["Spell Power"] = {StatEnable = false, Gains = false, Lost = false},
		["Spirit"] = {StatEnable = false, Gains = false, Lost = false},
		["Stamina"] = {StatEnable = false, Gains = false, Lost = false},
		["Strength"] = {StatEnable = false, Gains = false, Lost = false},
		--[[
		["Transmog"] = {StatEnable = false, Gains = false, Lost = false},
		["PVP Power Damage"] = {StatEnable = false, Gains = false, Lost = false},
		["PVP Power Healing"] = {StatEnable = false, Gains = false, Lost = false},
		]]
	},
	["Advanced_Scrolling_Combat_Text_Resistance"] = {
		["Arcane Resistance"] = {StatEnable = false, Gains = false, Lost = false},
		["Fire Resistance"] = {StatEnable = false, Gains = false, Lost = false},
		["Frost Resistance"] = {StatEnable = false, Gains = false, Lost = false},
		["Nature Resistance"] = {StatEnable = false, Gains = false, Lost = false},
		["Shadow Resistance"] = {StatEnable = false, Gains = false, Lost = false},
	},
	["Advanced_Scrolling_Combat_Text_Leveling"] = {
		["Achievement Gains"] = false,
		["Death Coordinates"] = false,
		["Duel Requests"] = false,
		["Experience Gains"] = false,
		--["Fading DeBuffs"] = false,
		["Level up message"] = false,
		["Loot"] = false,
		["Quest Progress"] = false,
		["Resource lost"] = false,
		["Sent Mail"] = false,
		["Skill Gained"] = false,
		["Skill Up"] = false,
	},
	["Advanced_Scrolling_Combat_Text_Auras"] = {
		["Fading DeBuffs"] = false,
	},
	["Trinkets"] = {
		["Trinket_1"] = {TrinketEnable = false, Name = false, Icon = false,},
		["Trinket_2"] = {TrinketEnable = false, Name = false, Icon = false,},
	},
	["Integer_Values"] = {
		["Debuff_time"] = 5,
		["Icon"] = 18,
		["Minimum_Resource_Cost"] = 4,
	},
	["Slider_Step_Values"] = {
		["Minimum_Resource_Cost_Step_Value"] = 1,
	},
	["Message_Selector"] = {
		["Msg"] = "is now ready!",
	},
	--[[
	["Advanced_Scrolling_Combat_Text_Settings"] = {
        ["NameEnable"] = false,
        ["IconEnable"] = false,
    },
    ["EditBox_Values"] = {
        ["EntryLimit"] = 10,
        ["Font"] = "ChatFontNormal",
        ["Position"] = {"CENTER", 0, 0},
        ["Size"] = {400, 200},
        ["Transparency"] = 1,
    },
    ["Display_On_Login"] = {
        ["Chatbox"] = false,
    },
	]]
}
end