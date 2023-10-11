local function createTech(index)
  local tech = table.deepcopy(data.raw.technology["electric-energy-distribution-1"])

  local paddedIndex = "0" .. index
  if index == 10 then
    paddedIndex = index
  end

  tech.name = "5dim-energy-distribution-" .. paddedIndex
  tech.effects = {
    {
      type = "unlock-recipe",
      recipe = "5d-medium-electric-pole-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-big-electric-pole-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-substation-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-lamp-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-accumulator-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-solar-panel-" .. paddedIndex
    }
  }
  if index > 3 then
    table.insert(tech.effects, {
      type = "unlock-recipe",
      recipe = "5d-assembling-machine-" .. paddedIndex
    })
  end
  tech.prerequisites = {"electric-energy-distribution-2", "electric-energy-accumulators", "solar-energy", "optics"}
  if index > 2 then
    tech.prerequisites = {"5dim-energy-distribution-0" .. (index - 1)}
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