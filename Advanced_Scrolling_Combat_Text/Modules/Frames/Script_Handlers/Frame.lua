local L_ASCT_Handlers = ASCT_Script_Handlers_Table
---------------------------
--ASCT_Core
---------------------------
L_ASCT_Handlers["OnEvent"] = function(Frame, func) Frame:SetScript("OnEvent", func) return Frame end
L_ASCT_Handlers["OnUpdate"] = function(Frame, func) Frame:SetScript("OnUpdate", func) return Frame end