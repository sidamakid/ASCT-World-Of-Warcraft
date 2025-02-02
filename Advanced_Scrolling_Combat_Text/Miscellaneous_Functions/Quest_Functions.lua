local ASCT = ASCT_Table
Misc = ASCT.Miscellaneous
-- Function to add objectives to the table
Misc.Quest.Functions["addObjectiveDetails"] = function(objectives, details_table)
    for _, objective in pairs(objectives) do
        table.insert(details_table, {
            text = objective.text,
            type = objective.type,
            numRequired = objective.numRequired,
            numFulfilled = objective.numFulfilled,
            finished = objective.finished
        })
    end
end

-- Function to compare objectives and check if any have changed, storing changed details
Misc.Quest.Functions["haveObjectivesChanged"] = function(old_objectives, new_objectives)
    local changed_details = {}
    for i, old in ipairs(old_objectives) do
        local new = new_objectives[i]
        if old.text ~= new.text or old.type ~= new.type or old.numRequired ~= new.numRequired or old.numFulfilled ~= new.numFulfilled or old.finished ~= new.finished then
            table.insert(changed_details, new)
        end
    end
    return #changed_details > 0, changed_details
end

Misc.Quest.Functions["Percentage"] = function(Var_A, Var_B, Value)
    local percentage = (Var_A/Var_B) * Value --(detail.numFulfilled/detail.numRequired) * 3
    return percentage
end

Misc.Quest.Functions["Colors_Percentage"] = function(Color_Table, Percentage)
    local Color_Value = Color_Table[math.floor(Percentage) + 1]
    return Color_Value
end