local ASCT, L = ASCT_Table, ASCT_locale_Table
local Frames, Scripts, Functions, API, Strings = ASCT.Frames, ASCT.Scripts, ASCT.Functions, ASCT.API, ASCT.Strings
local Loot = Frames.SARTE["Transmog_Lost_Loot_Frame"]
Scripts.Frame["OnEvent"](Loot,
function (self, event, itemModifiedAppearanceID, ...)
    if event == Strings.EventName["TRANSMOG_COLLECTION_SOURCE_REMOVED"] then
    if not API.Documentation["C_CVar.GetCVarBool"](Strings.C_CVar["enableFloatingCombatText"])then return end
    if ASCT_DB["Advanced_Scrolling_Combat_Text_Stats"]["Transmog"].Lost then
        local itemID = API.Documentation["C_TransmogCollection.GetSourceItemID"](itemModifiedAppearanceID);
        local item = Item:CreateFromItemID(itemID);
        item:ContinueOnItemLoad(function()
            local icon = item:GetItemIcon();
            local link = item:GetItemLink();

            local iconMarkup = CreateSimpleTextureMarkup(icon, ASCT_DB["Integer_Values"].Icon);
            Functions.CombatText["CombatText_AddMessage"](format(ERR_REVOKE_TRANSMOG_S, iconMarkup.." ".." "..link), CombatText_StandardScroll, 1, 1, 0)
        end);
    end
end
end)