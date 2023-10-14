
local function createAssemblerTech(index)
  local tech = table.deepcopy(data.raw.technology["automation-3"])

  local paddedIndex = "0" .. index
  if index == 10 then
    paddedIndex = index
  end

  tech.name = "5dim-automation-" .. paddedIndex
  tech.effects = {
    {
      type = "unlock-recipe",
      recipe = "5d-assembling-machine-" .. paddedIndex
    }
  }
  tech.prerequisites = {"automation-3"}
  if index > 4 then
    tech.prerequisites = {"5dim-automation-0" .. (index - 1)}
    table.insert(tech.prerequisites, "logistics-" .. (index - 1))
  end
  tech.unit = {
    count = 120,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"se-rocket-science-pack", 1},
      {"space-science-pack", 1}
    },
    time = 30
  }

  if index > 4 then
    table.insert(tech.unit.ingredients, {"utility-science-pack", 1})
  end
  if index > 5 then
    table.insert(tech.unit.ingredients, {"kr-optimization-tech-card", 1})
  end
  if index > 6 then
    table.insert(tech.unit.ingredients, {"se-material-science-pack-1", 1})
  end
  if index > 7 then
    table.insert(tech.unit.ingredients, {"se-material-science-pack-2", 1})
  end
  if index > 8 then
    table.insert(tech.unit.ingredients, {"se-material-science-pack-3", 1})
  end
  if index > 9 then
    table.insert(tech.unit.ingredients, {"se-material-science-pack-4", 1})
  end

  data:extend({tech})
end


local function createOilTech(index)
  local tech = table.deepcopy(data.raw.technology["automation-3"])

  tech.icon = "__base__/graphics/technology/oil-processing.png"

  local paddedIndex = "0" .. index
  if index == 10 then
    paddedIndex = index
  end

  tech.name = "5dim-oil-plants-" .. paddedIndex
  tech.effects = {
    {
      type = "unlock-recipe",
      recipe = "5d-oil-refinery-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-chemical-plant-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-pumpjack-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-water-pumpjack-" .. paddedIndex
    }
  }
  tech.prerequisites = {"oil-processing"}
  if index > 2 then
    tech.prerequisites = {"5dim-oil-plants-0" .. (index - 1)}
    table.insert(tech.prerequisites, "logistics-" .. (index - 1))
  end
  tech.unit = {
    count = 120,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
    },
    time = 30
  }

  if index > 2 then
    table.insert(tech.unit.ingredients, {"se-rocket-science-pack", 1})
  end
  if index > 3 then
    table.insert(tech.unit.ingredients, {"space-science-pack", 1})
  end
  if index > 4 then
    table.insert(tech.unit.ingredients, {"utility-science-pack", 1})
  end
  if index > 5 then
    table.insert(tech.unit.ingredients, {"kr-optimization-tech-card", 1})
  end
  if index > 6 then
    table.insert(tech.unit.ingredients, {"se-material-science-pack-1", 1})
  end
  if index > 7 then
    table.insert(tech.unit.ingredients, {"se-material-science-pack-2", 1})
  end
  if index > 8 then
    table.insert(tech.unit.ingredients, {"se-material-science-pack-3", 1})
  end
  if index > 9 then
    table.insert(tech.unit.ingredients, {"se-material-science-pack-4", 1})
  end

  data:extend({tech})
end

local function createLabTech(index)
  local tech = table.deepcopy(data.raw.technology["electric-lab"])

  local paddedIndex = "0" .. index
  if index == 10 then
    paddedIndex = index
  end

  tech.name = "5dim-labs-" .. paddedIndex
  tech.icon = "__5dim_automation__/graphics/icon/lab/lab-icon-" .. paddedIndex .. ".png"
  tech.icon_size = 64
  tech.effects = {
    {
      type = "unlock-recipe",
      recipe = "5d-lab-" .. paddedIndex
    }
  }
  tech.prerequisites = {"electric-lab"}
  if index > 2 then
    tech.prerequisites = {"5dim-labs-0" .. (index - 1)}
    table.insert(tech.prerequisites, "logistics-" .. (index - 1))
  end
  tech.unit = {
    count = 120,
    ingredients = {
      {"automation-science-pack", 1},
    },
    time = 30
  }

  if index > 2 then
    table.insert(tech.unit.ingredients, {"logistic-science-pack", 1})
  end
  if index > 3 then
    table.insert(tech.unit.ingredients, {"chemical-science-pack", 1})
  end
  if index > 4 then
    table.insert(tech.unit.ingredients, {"se-rocket-science-pack", 1})
  end
  if index > 5 then
    table.insert(tech.unit.ingredients, {"space-science-pack", 1})
  end
  if index > 6 then
    table.insert(tech.unit.ingredients, {"utility-science-pack", 1})
  end
  if index > 7 then
    table.insert(tech.unit.ingredients, {"kr-optimization-tech-card", 1})
  end
  if index > 8 then
    table.insert(tech.unit.ingredients, {"se-astronomic-science-pack-1", 1})
  end
  if index > 9 then
    table.insert(tech.unit.ingredients, {"se-astronomic-science-pack-2", 1})
  end

  data:extend({tech})
end

local function createMiningTech(index)
  local tech = table.deepcopy(data.raw.technology["advanced-material-processing-2"])

  local paddedIndex = "0" .. index
  if index == 10 then
    paddedIndex = index
  end

  tech.name = "5dim-mining-" .. paddedIndex
  tech.effects = {
    {
      type = "unlock-recipe",
      recipe = "5d-electric-furnace-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-masher-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-electric-mining-drill-" .. paddedIndex
    }
  }
  tech.prerequisites = {"advanced-material-processing-2"}
  if index > 2 then
    tech.prerequisites = {"5dim-mining-0" .. (index - 1)}
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

  if index > 2 then
    table.insert(tech.unit.ingredients, {"se-rocket-science-pack", 1})
  end
  if index > 3 then
    table.insert(tech.unit.ingredients, {"space-science-pack", 1})
  end
  if index > 4 then
    table.insert(tech.unit.ingredients, {"utility-science-pack", 1})
  end
  if index > 5 then
    table.insert(tech.unit.ingredients, {"kr-optimization-tech-card", 1})
  end
  if index > 6 then
    table.insert(tech.unit.ingredients, {"se-material-science-pack-1", 1})
  end
  if index > 7 then
    table.insert(tech.unit.ingredients, {"se-material-science-pack-2", 1})
  end
  if index > 8 then
    table.insert(tech.unit.ingredients, {"se-material-science-pack-3", 1})
  end
  if index > 9 then
    table.insert(tech.unit.ingredients, {"se-material-science-pack-4", 1})
  end

  data:extend({tech})
end

for index = 2, 10 do
  if index > 3 then
    createAssemblerTech(index)
  end
  createOilTech(index)
  createLabTech(index)
  createMiningTech(index)
end