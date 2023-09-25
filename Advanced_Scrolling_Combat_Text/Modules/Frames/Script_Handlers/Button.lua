local L_ASCT_Handlers = ASCT_Script_Handlers_Table
---------------------------
--Custom Handlers
---------------------------
L_ASCT_Handlers["HookScript_Onclick"] = function (Frame, func) Frame:HookScript("OnClick", func) return Frame end
---------------------------
--Options Panel
---------------------------
L_ASCT_Handlers["OnClick"] = function(Frame, func) Frame:SetScript("OnClick", func) return Frame end
L_ASCT_Handlers["OnDoubleClick"] = function(Frame, func) Frame:SetScript("OnDoubleClick", func) return Frame end
L_ASCT_Handlers["OnValueChanged"] = function (Frame, func) Frame:SetScript("OnValueChanged", func) return Frame end
---------------------------
--Tooltip
---------------------------
L_ASCT_Handlers["OnEnter"] = function(Frame, func) Frame:SetScript("OnEnter",func) return Frame end
L_ASCT_Handlers["OnLeave"] = function(Frame, func) Frame:SetScript("OnLeave", func) return Frame end