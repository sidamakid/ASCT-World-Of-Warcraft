local ASCT, L = ASCT_Table, ASCT_locale_Table
local Client, Frames, Functions, Scripts, API, Strings, Str_Int = ASCT.Client, ASCT.Frames, ASCT.Functions, ASCT.Scripts, ASCT.API, ASCT.Strings, ASCT.Str_Int

local function CreateStatFrame(statType, frameName, Documentation, combatRatingType, lastStat)
    local f = Frames.SARTE[frameName]
    Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function()
        Scripts.Frame["OnEvent"](f, function()
            local stats = ASCT_DB["Advanced_Scrolling_Combat_Text_Stats"][statType]
            local currentRating = API.Documentation[Documentation](combatRatingType)
            if not (stats.StatEnable and API.Documentation["C_CVar.GetCVarBool"](Strings.C_CVar["enableFloatingCombatText"])) then return end
            local currentStat = currentRating
            local diff = currentStat - lastStat
            if lastStat == -1 then
            elseif (diff < 0 and stats.Lost) or (diff > 0 and stats.Gains) then
                local msg = string.format("%s%d %s (%d)", (diff > 0) and "+" or "", diff, L[statType], currentStat)
                Functions.CombatText["CombatText_AddMessage_Dark_Blue"](msg)
            end
            lastStat = currentStat
        end)
    end)
    return lastStat
end
---------------------------
--Tbc-Wrath_Wow
---------------------------
if Client.LE_EXPANSION_LEVEL["is_Tbc-Wrath_Wow"] then
local lastStatDefenseRating, lastStatBlockRating, lastStatArmorPenetration =
-1, -1, -1

lastStatDefenseRating, lastStatBlockRating, lastStatArmorPenetration =
CreateStatFrame("Defense Rating", "Defense_Frame", "GetCombatRating", Str_Int.CR["CR_DEFENSE_SKILL"], lastStatDefenseRating),
CreateStatFrame("Block Rating", "Block_Frame", "GetCombatRating",  Str_Int.CR["CR_BLOCK"], lastStatBlockRating),
CreateStatFrame("Armor Penetration", "Armor_Pen_Frame", "GetCombatRating",  Str_Int.CR["CR_ARMOR_PENETRATION"], lastStatArmorPenetration)
end
---------------------------
--Tbc-Wrath-Cata
---------------------------
if Client.LE_EXPANSION_LEVEL["is_Tbc-Wrath-Cata_Wow"] then
local lastStatDodgeRating,
lastStatCriticalStrike,
lastStatHasteRating,
lastStatExpertiseRating,
lastStatHitRating,
lastStatParryRating,
lastStatResilienceRating,
lastStatSpellPenetration = -1, -1, -1,-1, -1, -1, -1, -1

lastStatDodgeRating,
lastStatCriticalStrike,
lastStatHasteRating,
lastStatExpertiseRating,
lastStatHitRating,
lastStatParryRating,
lastStatResilienceRating,
lastStatSpellPenetration =
CreateStatFrame("Dodge Rating", "Dodge_Rating_Frame", "GetCombatRating",  Str_Int.CR["CR_DODGE"], lastStatDodgeRating),
CreateStatFrame("Critical Strike Rating", "Critical_Strike_Frame", "GetCombatRating",  Str_Int.CR["CR_CRIT_MELEE"], lastStatCriticalStrike),
CreateStatFrame("Haste Rating", "Haste_Rating_Frame", "GetCombatRating",  Str_Int.CR["CR_HASTE_MELEE"], lastStatHasteRating),
CreateStatFrame("Expertise Rating", "Expertise_Frame", "GetCombatRating",  Str_Int.CR["CR_EXPERTISE"], lastStatExpertiseRating),
CreateStatFrame("Hit Rating", "Hit_Rating_Frame", "GetCombatRating",  Str_Int.CR["CR_HIT_MELEE"], lastStatHitRating),
CreateStatFrame("Parry Rating", "Parry_Rating_Frame", "GetCombatRating",  Str_Int.CR["CR_PARRY"], lastStatParryRating),
CreateStatFrame("Resilience Rating", "Resilience_Frame", "GetCombatRating",  Str_Int.CR["CR_RESILIENCE_CRIT_TAKEN"], lastStatResilienceRating),
CreateStatFrame("Spell Penetration", "Spell_Pen_Frame", "GetSpellPenetration",  _, lastStatSpellPenetration)
end
---------------------------
--Wrath-Cata
---------------------------
if Client.LE_EXPANSION_LEVEL["is_Wrath-Cata-MOP_Wow"] then
local lastSpellPower = -1
lastSpellPower = CreateStatFrame("Spell Power", "Spell_Power_Frame", "GetSpellBonusHealing",  _, lastSpellPower)
end
---------------------------
--Cataclysm
---------------------------
if Client.LE_EXPANSION_LEVEL["is_Cata-MOP_Wow"] then
local lastStatMastery = -1
lastStatMastery = CreateStatFrame("Mastery", "Mastery_Frame", "GetCombatRating", Str_Int.CR["CR_MASTERY"], lastStatMastery)
end
if Client.LE_EXPANSION_LEVEL["isMOPWow"] then
local lastStatCritical, lastStatDodge, lastStatExpertise, lastPvPPower, lastPVPResilience, lastStatHit, lastStatHaste, lastStatParry =
-1, -1, -1, -1, -1, -1, -1, -1
lastStatCritical, lastStatDodge, lastStatExpertise, lastPvPPower, lastPVPResilience, lastStatHit, lastStatHaste, lastStatParry =
CreateStatFrame("Critical Strike", "Critical_Strike_Frame", "GetCombatRating",  Str_Int.CR["CR_CRIT_MELEE"], lastStatCritical),
CreateStatFrame("Dodge", "Dodge_Rating_Frame", "GetCombatRating",  Str_Int.CR["CR_DODGE"], lastStatDodge),
CreateStatFrame("Expertise", "Expertise_Frame", "GetCombatRating",  Str_Int.CR["CR_EXPERTISE"], lastStatExpertise),
CreateStatFrame("PVP Power", "PVP_Power_Frame", "GetCombatRating",  Str_Int.CR["CR_PVP_POWER"], lastPvPPower),
CreateStatFrame("PVP Resilience", "PVP_Resilience_Frame", "GetCombatRating",  Str_Int.CR["CR_RESILIENCE_CRIT_TAKEN"], lastPVPResilience),
CreateStatFrame("Hit", "Hit_Rating_Frame", "GetCombatRating",  Str_Int.CR["CR_HIT_MELEE"], lastStatHit),
CreateStatFrame("Haste", "Haste_Rating_Frame", "GetCombatRating",  Str_Int.CR["CR_HASTE_MELEE"], lastStatHaste),
CreateStatFrame("Parry", "Parry_Rating_Frame", "GetCombatRating",  Str_Int.CR["CR_PARRY"], lastStatParry)
end
---------------------------
--Warlords
---------------------------
if Client.LE_EXPANSION_LEVEL["isWarlordsWow"] then
local lastStatAvoidance = -1
lastStatAvoidance = CreateStatFrame("Avoidance", "Avoidance_Frame", "GetCombatRating",  Str_Int.CR["CR_AVOIDANCE"], lastStatAvoidance)
end