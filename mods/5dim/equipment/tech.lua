local function createTech(index)
  local tech = table.deepcopy(data.raw.technology["power-armor-mk2"])

  local paddedIndex = "0" .. index
  if index == 10 then
    paddedIndex = index
  end

  tech.name = "5dim-equipment-" .. paddedIndex
  tech.effects = {
    {
      type = "unlock-recipe",
      recipe = "5d-exoskeleton-equipment-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-fusion-reactor-equipment-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-personal-laser-defense-equipment-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-personal-tesla-defense-equipment-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-solar-panel-equipment-" .. paddedIndex
    }
  }
  if index > 2 then
    table.insert(tech.effects, {
      type = "unlock-recipe",
      recipe = "5d-battery-equipment-" .. paddedIndex
    })
    table.insert(tech.effects, {
      type = "unlock-recipe",
      recipe = "5d-personal-roboport-equipment-" .. paddedIndex
    })
    table.insert(tech.effects, {
      type = "unlock-recipe",
      recipe = "5d-energy-shield-equipment-" .. paddedIndex
    })
    table.insert(tech.effects, {
      type = "unlock-recipe",
      recipe = "5d-power-armor-" .. paddedIndex
    })
  end

  tech.prerequisites = {"se-rtg-equipment", "exoskeleton-equipment", "personal-laser-defense-equipment", "solar-panel-equipment"}

  if index > 2 then
    tech.prerequisites = {"5dim-equipment-0" .. (index - 1)}
  end

  if index == 3 then
    table.insert(tech.prerequisites, "battery-mk2-equipment")
    table.insert(tech.prerequisites, "personal-roboport-mk2-equipment")

  end

  tech.unit = {
    count = 120,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"military-science-pack", 1},
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
    table.insert(tech.unit.ingredients, {"production-science-pack", 1})
    table.insert(tech.unit.ingredients, {"utility-science-pack", 1})
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
  createTech(index)
end