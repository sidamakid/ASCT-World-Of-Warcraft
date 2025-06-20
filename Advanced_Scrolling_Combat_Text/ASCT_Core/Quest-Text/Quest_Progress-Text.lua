local Lua_API, ASCT = Lua_API_Table, ASCT_Table
local Keys = ASCT.Keys
local Lua_ASCT, Customs, API, Strings, Scripts, Frames, Functions, Misc = Keys.Metatables["Lua_ASCT"], Keys.Metatables["Customs"], Keys.Metatables["API"], Keys.Metatables["Strings"], Keys.Metatables["Scripts"], Keys.Metatables["Frames"], Keys.Metatables["Functions"], Keys.Metatables["Miscellaneous"]
local f = Frames.SARTE["Quest_Progress_Frame"]

function f:OnEvent(event, ...)
    self[event](self, event, ...)
end

-- Example code to run if any objectives have changed
local Quest_Progress_ColorTable = Lua_ASCT.SARTE.Tables.Quests["Quest_Progress_ColorTable"]
local questIDSaved = Lua_ASCT.SARTE.Variables.Quests["questIDSaved"]
--local questLogIndexSaved = Lua_ASCT.SARTE.Variables.Quests["questLogIndexSaved"]
local Old_Quest_Objectives = Lua_ASCT.SARTE.Tables.Quests["Old_Quest_Objectives"]
local Updated_Quest_Objectives = Lua_ASCT.SARTE.Tables.Quests["Updated_Quest_Objectives"]

function f:QUEST_WATCH_UPDATE(event, questID)
    questIDSaved = questID
    local Current_Objectives = API.Documentation["C_QuestLog.GetQuestObjectives"](questIDSaved)
    Old_Quest_Objectives = {}  -- Reset the old objectives table
    Lua_ASCT.SARTE.Functions.Quests["addObjectiveDetails"](Current_Objectives, Old_Quest_Objectives)
end

function f:UNIT_QUEST_LOG_CHANGED(event, unit)
    if unit ~= Strings.UnitId["player"] then return end
    if not API.Documentation["C_CVar.GetCVarBool"](Strings.C_CVar["enableFloatingCombatText"])then return end
    if not ASCT_DB["Advanced_Scrolling_Combat_Text_Leveling"]["Quest Progress"] then return end
    if not questIDSaved then return end
    local objectives = API.Documentation["C_QuestLog.GetQuestObjectives"](questIDSaved)
    Updated_Quest_Objectives = {}  -- Reset the updated objectives table
    Lua_ASCT.SARTE.Functions.Quests["addObjectiveDetails"](objectives, Updated_Quest_Objectives)
    local has_changed, changed_details = Lua_ASCT.SARTE.Functions.Quests["haveObjectivesChanged"](Old_Quest_Objectives, Updated_Quest_Objectives)
    if has_changed then
        Lua_ASCT.SARTE.Functions.Quests["CombatText_AddMessage_Percentage"](changed_details, Quest_Progress_ColorTable, "text")
    end
    questIDSaved = nil
end

Functions.Initializers["Advanced_Scrolling_Combat_Text_AddInitializer"](function()
Scripts.Frame["OnEvent"](f, f.OnEvent)
end)
--[[
https://warcraft.wiki.gg/wiki/QUEST_WATCH_UPDATE
https://warcraft.wiki.gg/wiki/QUEST_ACCEPTED
https://warcraft.wiki.gg/wiki/QUEST_COMPLETE
https://warcraft.wiki.gg/wiki/QUEST_TURNED_IN
https://warcraft.wiki.gg/wiki/API_C_QuestLog.GetQuestObjectives
https://warcraft.wiki.gg/wiki/API_C_TaskQuest.GetQuestInfoByQuestID
https://warcraft.wiki.gg/wiki/API_GetQuestLogIndexByID
https://warcraft.wiki.gg/wiki/API_GetQuestLink
https://warcraft.wiki.gg/wiki/API_C_TaskQuest.GetQuestInfoByQuestID
https://warcraft.wiki.gg/wiki/API_GetQuestLogChoiceInfo
https://warcraft.wiki.gg/wiki/API_GetQuestID
https://warcraft.wiki.gg/wiki/API_C_QuestLog.GetInfo
vhttps://warcraft.wiki.gg/wiki/API_GetQuestLogTitle
]]