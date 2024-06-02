local ASCT, L = ASCT_Table, ASDC_LOCALE_TABLE
local Loot = ASCT.Frames.SARTE["Transmog_Gained_Loot_Frame"]
ASCT.Scripts.Frame["OnEvent"](Loot,
function (self, event, itemModifiedAppearanceID, ...)
    if event == "TRANSMOG_COLLECTION_SOURCE_ADDED" then
    if not ASCT.API.Documentation["C_CVar.GetCVarBool"](ASCT.Strings.C_CVar["enableFloatingCombatText"])then return end
    if ASCT_DB["Advanced_Scrolling_Combat_Text_Stats"]["Transmog"].Gains then
        local itemID = ASCT.API.Documentation["C_TransmogCollection.GetSourceItemID"](itemModifiedAppearanceID);
        local item = Item:CreateFromItemID(itemID);
        item:ContinueOnItemLoad(function()
            local icon = item:GetItemIcon();
            local link = item:GetItemLink();

            local iconMarkup = CreateSimpleTextureMarkup(icon, ASCT_DB["Integer_Values"].Icon);
            ASCT.Functions["CombatText_AddMessage"](format(ERR_LEARN_TRANSMOG_S, iconMarkup.." ".." "..link), CombatText_StandardScroll, 1, 1, 0)
        end);
    end
end
end)