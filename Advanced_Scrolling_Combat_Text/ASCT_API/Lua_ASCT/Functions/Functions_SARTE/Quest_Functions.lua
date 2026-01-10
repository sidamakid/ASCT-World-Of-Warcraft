local Lua_API, ASCT = Lua_API_Table, ASCT_Table
local Keys = ASCT.Keys
local Functions, Lua_ASCT = Keys.Metatables["Functions"], Keys.Metatables["Lua_ASCT"]
-- Function to add objectives to the table
Lua_ASCT.SARTE.Functions.Quests["addObjectiveDetails"] = function(objectives, details_table)
    for _, objective in pairs(objectives) do
        Lua_API.Table["table.insert"](details_table, {
            text = objective.text,
            type = objective.type,
            numRequired = objective.numRequired,
            numFulfilled = objective.numFulfilled,
            finished = objective.finished
        })
    end
end

-- Function to compare objectives and check if any have changed, storing changed details
Lua_ASCT.SARTE.Functions.Quests["haveObjectivesChanged"] = function(old_objectives, new_objectives)
    local changed_details = {}
    for i, old in ipairs(old_objectives) do
        local new = new_objectives[i]
        if old.text ~= new.text or old.type ~= new.type or old.numRequired ~= new.numRequired or old.numFulfilled ~= new.numFulfilled or old.finished ~= new.finished then
            Lua_API.Table["table.insert"](changed_details, new)
        end
    end
    return #changed_details > 0, changed_details
end

Lua_ASCT.SARTE.Functions.Quests["Percentage"] = function(Var_A, Var_B, Value)
    local percentage = (Var_A/Var_B) * Value --(detail.numFulfilled/detail.numRequired) * 3
    return percentage
end

Lua_ASCT.SARTE.Functions.Quests["Colors_Percentage"] = function(Color_Table, Percentage)
    local Color_Value = Color_Table[Lua_API.Math["math.floor"](Percentage) + 1]
    return Color_Value
end

Lua_ASCT.SARTE.Functions.Quests["CombatText_AddMessage_Percentage"] = function(changed_details, colorTable, val)
    for _, detail in ipairs(changed_details) do
        local percentage = Lua_ASCT.SARTE.Functions.Quests["Percentage"](detail.numFulfilled, detail.numRequired, 3)
        local colors = Lua_ASCT.SARTE.Functions.Quests["Colors_Percentage"](colorTable, percentage)
        Functions.CombatText["CombatText_AddMessage"](detail[val], CombatText_StandardScroll, colors.red, colors.green, colors.blue)
    end
end
--[[
Lua_ASCT.SARTE.Functions.Quests["ColorGradient"] = function(percentage)
  -- Clamp between 0 and 1
  percentage = Lua_API.Math["math.max"](0, Lua_API.Math["math.min"](percentage, 1))

  local r, g, b = 1, 1, 0

  if percentage < 0.5 then
    -- Red to Yellow
    r = 1
    g = percentage * 2
    b = 0
  else
    -- Yellow to Green
    r = 1 - ((percentage - 0.5) * 2)
    g = 1
    b = 0
  end

  return r, g, b
end
]]
Lua_ASCT.SARTE.Functions.Quests["ColorGradient"] = function(percentage)
  -- Clamp between 0 and 1
  percentage = Lua_API.Math["math.max"](0, Lua_API.Math["math.min"](percentage, 1))

  local r, g, b

  if percentage < 0.33 then
    -- Red to Orange
    local t = percentage / 0.33
    r = 1
    g = t * 0.5  -- from 0 to 0.5
    b = 0
  elseif percentage < 0.66 then
    -- Orange to Yellow
    local t = (percentage - 0.33) / 0.33
    r = 1
    g = 0.5 + t * 0.5  -- from 0.5 to 1
    b = 0
  else
    -- Yellow to Green
    local t = (percentage - 0.66) / 0.34
    r = 1 - t         -- from 1 to 0
    g = 1
    b = 0
  end

  return r, g, b
end
Lua_ASCT.SARTE.Functions.Quests["CombatText_AddMessage_Gradient"] = function(changed_details, val)
  for _, detail in ipairs(changed_details) do
    local percentComplete = detail.numFulfilled / detail.numRequired
    local r, g, b = Lua_ASCT.SARTE.Functions.Quests["ColorGradient"](percentComplete)
    Functions.CombatText["CombatText_AddMessage"](detail[val], CombatText_StandardScroll, r, g, b)
  end
end
--[[
Lua_ASCT.SARTE.Functions.Quests["ColorGradient"] = function(percentage, ...)
  percentage = Lua_API.Math["math.max"](0, Lua_API.Math["math.min"](percentage, 1))

  local total = select("#", ...)
  local numColors = total / 3

  if percentage == 1 then
    return select(total - 2, ...)
  elseif percentage == 0 then
    return ...
  end

  local segment = math.floor(percentage * (numColors - 1))
  local relPerc = (percentage * (numColors - 1)) - segment

  local i = segment * 3 + 1
  local r1, g1, b1 = select(i, ...)
  local r2, g2, b2 = select(i + 3, ...)

  return r1 + (r2 - r1) * relPerc,
         g1 + (g2 - g1) * relPerc,
         b1 + (b2 - b1) * relPerc
end

Lua_ASCT.SARTE.Functions.Quests["CombatText_AddMessage_Gradient"] = function(changed_details, val)
  for _, detail in ipairs(changed_details) do
    local percentComplete = detail.numFulfilled / detail.numRequired
    local r, g, b = Lua_ASCT.SARTE.Functions.Quests["ColorGradient"](percentComplete,
    1, 0, 0,     -- red
    1, 0.5, 0,   -- orange
    1, 1, 0,     -- yellow
    0, 1, 0      -- green
    )
    Functions.CombatText["CombatText_AddMessage"](detail[val], CombatText_StandardScroll, r, g, b)
  end
end

Lua_ASCT.SARTE.Functions.Quests["CombatText_AddMessage_Gradient"] = function(changed_details, val, ...)
  local hasGradientStops = select("#", ...) > 0

  for _, detail in ipairs(changed_details) do
    local percentComplete = detail.numFulfilled / detail.numRequired

    if hasGradientStops then
      -- Use custom gradient stops with ColorGradient
      local r, g, b = Lua_ASCT.SARTE.Functions.Quests["ColorGradient"](percentComplete, ...)
      Functions.CombatText["CombatText_AddMessage"](detail[val], CombatText_StandardScroll, r, g, b)
    else
      -- Fallback to Colors_Percentage logic
      local percentage = Lua_ASCT.SARTE.Functions.Quests["Percentage"](detail.numFulfilled, detail.numRequired, 3)
      local colors = Lua_ASCT.SARTE.Functions.Quests["Colors_Percentage"](Lua_ASCT.SARTE.Functions.Quests["DefaultColorTable"], percentage)
      Functions.CombatText["CombatText_AddMessage"](detail[val], CombatText_StandardScroll, colors.red, colors.green, colors.blue)
    end
  end
end
]]