local ASCT = ASCT_Table
if ASCT.Client.LE_EXPANSION_LEVEL["isTheWarWithinWow"] and ASCT.Client.tocversion["is110107"] then
ASCT.Database.Spells["Others_TWW"] = {
	["Advanced_Scrolling_Combat_Text_Stats"] = {
        ["Agility"] = {StatEnable = false, Gains = false, Lost = false},
        ["Armor"] = {StatEnable = false, Gains = false, Lost = false},
        ["Health"] = {StatEnable = false, Gains = false, Lost = false},
        ["Intellect"] = {StatEnable = false, Gains = false, Lost = false},
        ["Stamina"] = {StatEnable = false, Gains = false, Lost = false},
        ["Strength"] = {StatEnable = false, Gains = false, Lost = false},
        --["Transmog"] = {StatEnable = false, Gains = false, Lost = false},
    },
    ["Advanced_Scrolling_Combat_Text_Leveling"] = {
        ["Achievement Gains"] = false,
        ["Death Coordinates"] = false,
        ["Duel Requests"] = false,
        ["Experience Gains"] = false,
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
		["Icon"] = 18,
		["Debuff_time"] = 5,
        ["Minimum_Resource_Cost"] = 4,
	},

    ["Message_Selector"] = {
        ["Msg"] = "is now ready!",
	},
    --[[
	["Advanced_Scrolling_Combat_Text_Settings"] = {
        ["IconEnable"] = false,
        ["NameEnable"] = false,
        
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