local ASCT = ASCT_Table
--ASCT.Scripts.Frame
ASCT.Scripts.Frame["OnEvent"] = function(Frame, func) Frame:SetScript(ASCT.Strings.ScriptTypeName["OnEvent"], func) return Frame end
ASCT.Scripts.Frame["OnUpdate"] = function(Frame, func) Frame:SetScript(ASCT.Strings.ScriptTypeName["OnUpdate"], func) return Frame end
ASCT.Scripts.Frame["OnClick"] = function(Frame, func) Frame:SetScript(ASCT.Strings.ScriptTypeName["OnClick"], func) return Frame end
ASCT.Scripts.Frame["OnDoubleClick"] = function(Frame, func) Frame:SetScript(ASCT.Strings.ScriptTypeName["OnDoubleClick"], func) return Frame end
ASCT.Scripts.Frame["OnValueChanged"] = function (Frame, func) Frame:SetScript(ASCT.Strings.ScriptTypeName["OnValueChanged"], func) return Frame end
ASCT.Scripts.Frame["OnEnter"] = function(Frame, func) Frame:SetScript(ASCT.Strings.ScriptTypeName["OnEnter"],func) return Frame end
ASCT.Scripts.Frame["OnLeave"] = function(Frame, func) Frame:SetScript(ASCT.Strings.ScriptTypeName["OnLeave"], func) return Frame end
ASCT.Scripts.Frame["OnDragStart"] = function(Frame, func) Frame:SetScript(ASCT.Strings.ScriptTypeName["OnDragStart"], func) return Frame end
ASCT.Scripts.Frame["OnDragStop"] = function(Frame, func) Frame:SetScript(ASCT.Strings.ScriptTypeName["OnDragStop"], func) return Frame end
ASCT.Scripts.Frame["OnEscapePressed"] = function(Frame, func) Frame:SetScript(ASCT.Strings.ScriptTypeName["OnEscapePressed"], func) return Frame end