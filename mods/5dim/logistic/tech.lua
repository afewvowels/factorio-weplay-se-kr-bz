
local function createRobotsTech(index)
  local tech = table.deepcopy(data.raw.technology["construction-robotics"])

  local paddedIndex = "0" .. index
  if index == 10 then
    paddedIndex = index
  end

  tech.name = "5dim-robotics-" .. paddedIndex
  tech.effects = {
    {
      type = "unlock-recipe",
      recipe = "5d-construction-robot-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-logistic-robot-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-roboport-" .. paddedIndex
    }
  }
  tech.prerequisites = {"construction-robotics", "logistic-robotics"}
  if index > 2 then
    tech.prerequisites = {"5dim-robotics-0" .. (index - 1)}
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
    table.insert(tech.unit.ingredients, {"se-energy-science-pack-1", 1})
  end
  if index > 7 then
    table.insert(tech.unit.ingredients, {"se-energy-science-pack-2", 1})
  end
  if index > 8 then
    table.insert(tech.unit.ingredients, {"se-energy-science-pack-3", 1})
  end
  if index > 9 then
    table.insert(tech.unit.ingredients, {"se-energy-science-pack-4", 1})
  end

  data:extend({tech})
end

for index = 2, 10 do
  createRobotsTech(index)
end