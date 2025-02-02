local ASCT = ASCT_Table

ASCT.API.Documentation["C_QuestLog.GetInfo"] = function(Info)
    local info = C_QuestLog.GetInfo(Info)
    return info
end

ASCT.API.Documentation["C_QuestLog.GetQuestObjectives"] = function(questID)
    local objectives = C_QuestLog.GetQuestObjectives(questID)
    return objectives
end

ASCT.API.Documentation["C_QuestLog.GetLogIndexForQuestID"] = function()
    local questLogIndex = C_QuestLog.GetLogIndexForQuestID(questID)
    return questLogIndex
end