local ASCT = ASCT_Table
local Customs, Functions, Misc = ASCT.Customs, ASCT.Functions, ASCT.Miscellaneous
Customs.Func.Quests["CombatText_AddMessage_Percentage"] = function(changed_details, colorTable, val)
    for _, detail in ipairs(changed_details) do
        local percentage = Misc.Quest.Functions["Percentage"](detail.numFulfilled, detail.numRequired, 3)
        local colors = Misc.Quest.Functions["Colors_Percentage"](colorTable, percentage)
        Functions.CombatText["CombatText_AddMessage"](detail[val], CombatText_StandardScroll, colors.red, colors.green, colors.blue)
    end
end