local ASCT = ASCT_Table
ASCT.Frames.Widgets["CreateSlider"] = function (Slider_Name, UIParent, Width, Height, Location, x, y, Orientation, minValue, MaxValue, Table_Value, Variable_Value, ValueStep, Tooltip_text, Low_text, High_Text, Slider_Number_Value)
  local Slider = ASCT.API.Documentation["CreateFrame"](ASCT.Strings.FrameType["Slider"], Slider_Name, UIParent, "OptionsSliderTemplate")
  ASCT.Widget.API["SetWidth"](Slider, Width)
  ASCT.Widget.API["SetHeight"](Slider, Height)
  ASCT.Widget.API["SetPoint"](Slider, Location, x, y)
  ASCT.Widget.API["SetOrientation"](Slider, Orientation)
  ASCT.Widget.API["SetMinMaxValues"](Slider, minValue, MaxValue)
  ASCT.Widget.API["SetValue"](Slider, ASCT_DB[Table_Value][Variable_Value])
  ASCT.Widget.API["SetValueStep"](Slider, ValueStep)
  ASCT.Widget.API["SetObeyStepOnDrag"](Slider, true)
  Slider.tooltipText = Tooltip_text   -- Creates a tooltip on mouseover.
  ASCT.Widget.API["SetText"](_G[ASCT.Widget.API["GetName"](Slider) .. 'Low'], (Low_text))        -- Sets the left-side slider text (default is "Low").
  ASCT.Widget.API["SetText"](_G[ASCT.Widget.API["GetName"](Slider) .. 'High'], (High_Text))     -- Sets the right-side slider text (default is "High").
  ASCT.Scripts.Frame["OnValueChanged"](Slider, function(self,value,userInput)
    if userInput then
      ASCT_DB[Table_Value][Variable_Value] = value
      ASCT.Widget.API["SetText"](Slider_Number_Value, value)
    end
  end)
  return Slider
end

ASCT.Frames.Widgets["MakeSliderReset"] = function (details)
  local resetIcon = ASCT.API.Documentation["CreateFrame"](ASCT.Strings.FrameType["Button"], nil, details.parent, "UIPanelButtonTemplate")
  ASCT.Widget.API["SetPoint"](resetIcon, unpack(details.anchor))
  ASCT.Widget.API["SetText"](resetIcon, details.text)
  ASCT.Widget.API["SetWidth"](resetIcon, details.width)
  ASCT.Scripts.Frame["OnClick"](resetIcon, function()
    for _, opt in ipairs(details.options) do
      ASCT.Widget.API["SetValue"](opt.frame, opt.default)
      ASCT.Widget.API["SetText"](opt.text, opt.default)
      ASCT_DB[opt.location[1]][opt.location[2]] = opt.default
    end
  end)
  return resetIcon
end