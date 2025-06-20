local ASCT = ASCT_Table
local Functions, Scripts, Events = ASCT.Functions, ASCT.Scripts, ASCT.Events
local playerGUID = UnitGUID("player")
local MSG_CRITICAL_HIT, MSG_REGULAR_HIT = "|T%d:18|t %s: %d (Critical)", "|T%d:18|t %s: %d"
local MSG_MISS, MSG_DODGE, MSG_PARRY, MSG_BLOCK, MSG_RESIST = "|T%d:18|t %s: Miss", "|T%d:18|t %s: Dodge", "|T%d:18|t %s: Parry", "|T%d:18|t %s: Block", "|T%d:18|t %s: Resist"

local f = CreateFrame("Frame")
Events.RegisterEvent["COMBAT_LOG_EVENT_UNFILTERED"](f)
Scripts.Frame["OnEvent"](f, function()
    local _, subevent, _, sourceGUID, _, _, _, _, destName = CombatLogGetCurrentEventInfo()
    local spellId, amount, critical, missType
    local action, spellIcon

    if subevent == "SWING_DAMAGE" or subevent == "SWING_MISSED" then
        spellId = nil
        action = "Melee"
        spellIcon = "Interface\\Icons\\INV_Misc_QuestionMark"
        amount, _, _, _, _, _, critical = select(12, CombatLogGetCurrentEventInfo())
        missType = select(12, CombatLogGetCurrentEventInfo())
    elseif subevent == "SPELL_DAMAGE" or subevent == "SPELL_MISSED" then
        spellId, _, _, amount, _, _, _, _, _, critical = select(12, CombatLogGetCurrentEventInfo())
        missType = select(15, CombatLogGetCurrentEventInfo())
        action = spellId and C_Spell.GetSpellLink(spellId) or "Unknown Spell"
        spellIcon = spellId and C_Spell.GetSpellTexture(spellId) or "Interface\\Icons\\INV_Misc_QuestionMark"
    end

    local function PrintMessage(msgType, tab)
        if PrintToCustomChatbox then
            PrintToCustomChatbox(msgType:format(spellIcon, action), tab)
        end
    end

    if sourceGUID == playerGUID then
        if subevent == "SPELL_DAMAGE" then
            if critical then
                PrintToCustomChatbox(MSG_CRITICAL_HIT:format(spellIcon, action, amount), 2) PrintToCustomChatbox(MSG_CRITICAL_HIT:format(spellIcon, action, amount), 1)
				--Functions.CombatText["CombatText_AddMessage"](MSG_CRITICAL_HIT:format(spellIcon, action, amount), CombatText_StandardScroll, ASCT_Color_Picker_Variables.r, ASCT_Color_Picker_Variables.g, ASCT_Color_Picker_Variables.b)
            else
                PrintToCustomChatbox(MSG_REGULAR_HIT:format(spellIcon, action, amount), 1)
				--Functions.CombatText["CombatText_AddMessage"](MSG_REGULAR_HIT:format(spellIcon, action, amount), CombatText_StandardScroll, ASCT_Color_Picker_Variables.r, ASCT_Color_Picker_Variables.g, ASCT_Color_Picker_Variables.b)
            end
        elseif subevent == "SPELL_MISSED" then
            if missType == "MISS" then PrintMessage(MSG_MISS, 1) PrintMessage(MSG_MISS, 3)
            elseif missType == "DODGE" then PrintMessage(MSG_DODGE, 1) PrintMessage(MSG_DODGE, 3)
            elseif missType == "PARRY" then PrintMessage(MSG_PARRY, 1) PrintMessage(MSG_PARRY, 3)
            elseif missType == "BLOCK" then PrintMessage(MSG_BLOCK, 1) PrintMessage(MSG_BLOCK, 3)
            elseif missType == "RESIST" then PrintMessage(MSG_RESIST, 1) PrintMessage(MSG_RESIST, 3)
            end
        end
    end
end)
