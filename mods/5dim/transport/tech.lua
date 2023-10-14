-- With 10 tiers of logistics transport items, rework logistics 3 to be earlier in the tech tree. This unlocks with lubricant instead of the SE Space Science Pack (the first science pack manufactured in space)
local logisticsTech = data.raw.technology["logistics-3"]

logisticsTech.unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"chemical-science-pack", 1},
  {"se-rocket-science-pack", 1}
}

logisticsTech.prerequisites = {
  "logistics-2",
  "lubricant"
}

data:extend({logisticsTech})

logisticsTech = data.raw.technology["logistics-4"]

logisticsTech.unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"chemical-science-pack", 1},
  {"se-rocket-science-pack", 1},
  {"space-science-pack", 1}
}

logisticsTech.prerequisites = {
  "logistics-3",
  "se-space-belt"
}

data:extend({logisticsTech})

local function createFluidsTech(index)
  local tech = table.deepcopy(data.raw.technology["fluid-handling"])

  local paddedIndex = "0" .. index
  if index == 10 then
    paddedIndex = index
  end

  tech.name = "5dim-fluids-" .. paddedIndex
  tech.effects = {
    {
      type = "unlock-recipe",
      recipe = "5d-boiler-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-steam-engine-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-offshore-pump-" .. paddedIndex
    },

    {
      type = "unlock-recipe",
      recipe = "5d-pump-" .. paddedIndex
    },

    {
      type = "unlock-recipe",
      recipe = "5d-storage-tank-" .. paddedIndex
    },

    {
      type = "unlock-recipe",
      recipe = "5d-storage-tank-multi-" .. paddedIndex
    }
  }
  tech.prerequisites = {"fluid-handling"}
  if index > 2 then
    tech.prerequisites = {"5dim-fluids-0" .. (index - 1)}
    table.insert(tech.prerequisites, "logistics-" .. (index - 1))
  end
  tech.unit = {
    count = 120,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1}
    },
    time = 30
  }

  if index < 5 then
    table.insert(tech.unit.ingredients, {"basic-tech-card", 1})
  end
  if index > 3 then
    table.insert(tech.unit.ingredients, {"se-rocket-science-pack", 1})
  end
  if index > 4 then
    table.insert(tech.unit.ingredients, {"space-science-pack", 1})
  end
  if index > 5 then
    table.insert(tech.unit.ingredients, {"utility-science-pack", 1})
  end
  if index > 6 then
    table.insert(tech.unit.ingredients, {"production-science-pack", 1})
  end
  if index > 7 then
    table.insert(tech.unit.ingredients, {"kr-optimization-tech-card", 1})
  end
  if index > 8 then
    table.insert(tech.unit.ingredients, {"se-material-science-pack-1", 1})
  end
  if index > 9 then
    table.insert(tech.unit.ingredients, {"se-material-science-pack-2", 1})
  end

  data:extend({tech})
end

for index = 2, 10 do
  createFluidsTech(index)
end