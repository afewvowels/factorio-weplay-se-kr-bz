-- Rescale current modules Tier 1-9 added from Space Exploration
for index = 1, 8 do
  local productivityBonus = nil
  local speedBonus = nil
  local name = "productivity-module"
  local speedName = "speed-module"
  local effectivityName = "effectivity-module"
  if index > 1 then
    name = name .. "-" .. index
    speedName = speedName .. "-" .. index
    effectivityName = effectivityName .. "-" .. index
  end

  -- Productivity Module changes
  -- productivityBonus = data.raw.module[name].effect.productivity.bonus
  -- productivityBonus = productivityBonus * 2
  data.raw.module[name].effect.productivity.bonus = 0.4 + (0.1 * index)
  data.raw.module[name].effect.speed.bonus = 0.6 + (0.1 * index)
  data.raw.module[name].effect.consumption.bonus = 0.05 * index

  -- Speed Module changes
  data.raw.module[speedName].effect.speed.bonus = data.raw.module[speedName].effect.speed.bonus + (0.2 * index)
  -- if data.raw.module[speedName].effect.productivity then
  --   data.raw.module[speedName].effect.productivity.bonus = data.raw.module[speedName].effect.consumption.bonus + (0.2 * index)
  -- else
  --   data.raw.module[speedName]. effect.productivity.bonus = 0.2
  -- end


  -- Effectivity module changes
  data.raw.module[effectivityName].effect.consumption.bonus = data.raw.module[effectivityName].effect.consumption.bonus - (0.3 * index)
  if data.raw.module[effectivityName].effect.speed then
    data.raw.module[effectivityName].effect.speed.bonus = data.raw.module[effectivityName].effect.speed.bonus + (0.1 * index)
  else
    data.raw.module[effectivityName].effect.speed = { bonus = 0.1 }
  end

  data.raw.module[effectivityName].effect.pollution.bonus = data.raw.module[effectivityName].effect.pollution.bonus - (0.2 * index)
end

-- Changes to tier 9 modules
local newModuleStats = {
    productivity = {
        bonus = 50.0
    },
    consumption = {
        bonus = 0
    },
    pollution = {
        bonus = 0
    },
    speed = {
        bonus = 10.0
    }
}

data.raw["module"]["productivity-module-9"].effect = newModuleStats

newModuleStats = {
    productivity = {
        bonus = 5.0
    },
    consumption = {
        bonus = 0
    },
    pollution = {
        bonus = 10.0
    },
    speed = {
        bonus = 10.0
    }
}

data.raw["module"]["effectivity-module-9"].effect = newModuleStats

newModuleStats = {
  productivity = {
      -- bonus = 0.33
      bonus = 0
  },
  consumption = {
      bonus = 0.2
  },
  pollution = {
      bonus = -0.2
  },
  speed = {
      bonus = 50.0
  }
}

data.raw["module"]["speed-module-9"].effect = newModuleStats

-- Add new Tier 0 module for burner phase before module technology is unlocked
data:extend({
  {
    type = "module",
    name = "burner-module",
    icon = "__weplay_se_kr_bz__/graphics/icons/burner-module-icon.png",
    icon_size = 64,
    subgroup = "neue-modules",
    order = "a",
    category = "productivity",
    tier = 1,
    stack_size = 50,
    effect =
    {
      productivity = {bonus = 0.5},
      consumption = {bonus = 2},
      pollution = {bonus = -0.2},
      speed = {bonus = 0.5}
    }
  },
  {
      type = "recipe",
      name = "burner-module",
      subgroup = "neue-modules",
      order = "a",
      ingredients = {
        {name = "aluminum-plate", amount = 2},
        {name = "wood", amount = 2},
        {name = "stone", amount = 1}
      },
      energy_required = 2,
      result = "burner-module",
      enabled = true
  }
})