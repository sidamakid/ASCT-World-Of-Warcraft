local L_ASCT_Frames, L_ASCT_Widget_Methods, L_ASCT_Handlers = ASCT_Frames_Table, ASCT_Widget_Methods_Table, ASCT_Script_Handlers_Table
L_ASCT_Frames["CreateSlider"] = function (Slider_Name, UIParent, Width, Height, Location, x, y, Orientation, minValue, MaxValue, Table_Value, Variable_Value, ValueStep, Tooltip_text, Low_text, High_Text, Slider_Number_Value)
  local Slider = CreateFrame("Slider", Slider_Name, UIParent, "OptionsSliderTemplate")
  L_ASCT_Widget_Methods["SetWidth"](Slider, Width)
  L_ASCT_Widget_Methods["SetHeight"](Slider, Height)
  L_ASCT_Widget_Methods["SetPoint_3"](Slider, Location, x, y)
  L_ASCT_Widget_Methods["SetOrientation"](Slider, Orientation)
  L_ASCT_Widget_Methods["SetMinMaxValues"](Slider, minValue, MaxValue)
  L_ASCT_Widget_Methods["SetValue"](Slider, ASCT_DB[Table_Value][Variable_Value])
  L_ASCT_Widget_Methods["SetValueStep"](Slider, ValueStep)
  L_ASCT_Widget_Methods["SetObeyStepOnDrag"](Slider, true)
  Slider.tooltipText = Tooltip_text   -- Creates a tooltip on mouseover.
  L_ASCT_Widget_Methods["SetText"](_G[Slider:GetName() .. 'Low'], (Low_text))        -- Sets the left-side slider text (default is "Low").
  L_ASCT_Widget_Methods["SetText"](_G[Slider:GetName() .. 'High'], (High_Text))     -- Sets the right-side slider text (default is "High").
  L_ASCT_Handlers["OnValueChanged"](Slider, function(self,value,userInput)
    if userInput then 
      ASCT_DB[Table_Value][Variable_Value] = value
      L_ASCT_Widget_Methods["SetText"](Slider_Number_Value, value)
    end
  end)
  return Slider
end

L_ASCT_Frames["MakeSliderReset"] = function (details)
  local resetIcon = CreateFrame("Button", nil, details.parent, "UIPanelButtonTemplate")
  resetIcon:SetPoint(unpack(details.anchor))
  L_ASCT_Widget_Methods["SetText"](resetIcon, details.text)
  L_ASCT_Widget_Methods["SetWidth"](resetIcon, details.width)
  L_ASCT_Handlers["OnClick"](resetIcon, function()
    for _, opt in ipairs(details.options) do
      opt.frame:SetValue(opt.default)
      opt.text:SetText(opt.default)
      ASCT_DB[opt.location[1]][opt.location[2]] = opt.default
    end
  end)
  return resetIcon
end