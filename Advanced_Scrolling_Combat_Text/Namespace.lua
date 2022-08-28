local addonName, ASCT = ...;
function ASCT:Comabt_Text(msg, r, g, b)
    CombatText_AddMessage(msg, CombatText_StandardScroll, r, g, b)
end