
local function createTech(index)
  local tech = table.deepcopy(data.raw.technology["nuclear-power"])

  local paddedIndex = "0" .. index
  if index == 10 then
    paddedIndex = index
  end

  tech.name = "5dim-nuclear-" .. paddedIndex
  tech.icon = "__5dim_nuclear__/graphics/icon/nuclear-reactor/nuclear-reactor-icon-" .. paddedIndex .. ".png"
  tech.icon_size = 64
  tech.effects = {
    {
      type = "unlock-recipe",
      recipe = "5d-nuclear-reactor-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-centrifuge-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-heat-pipe-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-heat-exchanger-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-steam-turbine-" .. paddedIndex
    }
  }
  tech.prerequisites = {"nuclear-power"}
  if index > 2 then
    tech.prerequisites = {"5dim-nuclear-0" .. (index - 1)}
    table.insert(tech.prerequisites, "logistics-" .. (index - 1))
  end
  tech.unit = {
    count = 120,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"se-rocket-science-pack", 1}
    },
    time = 30
  }

  if index < 5 then
    table.insert(tech.unit.ingredients, {"space-science-pack", 1})
  end
  if index > 3 then
    table.insert(tech.unit.ingredients,  {"utility-science-pack", 1})
  end
  if index > 4 then
    table.insert(tech.unit.ingredients,  {"production-science-pack", 1})
  end
  if index > 5 then
    table.insert(tech.unit.ingredients, {"se-material-science-pack-1", 1})
  end
  if index > 6 then
    table.insert(tech.unit.ingredients, {"se-material-science-pack-2", 1})
  end
  if index > 7 then
    table.insert(tech.unit.ingredients, {"se-material-science-pack-3", 1})
  end
  if index > 8 then
    table.insert(tech.unit.ingredients, {"se-material-science-pack-4", 1})
  end
  if index > 9 then
    table.insert(tech.unit.ingredients, {"se-deep-space-science-pack-1", 1})
  end

  data:extend({tech})
end

for index = 2, 10 do
  createTech(index)
end