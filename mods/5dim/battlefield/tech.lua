local function createTech(index)
  local tech = table.deepcopy(data.raw.technology["gun-turret"])

  local paddedIndex = "0" .. index
  if index == 10 then
    paddedIndex = index
  end

  tech.name = "5dim-battlefield-" .. paddedIndex
  tech.effects = {
    {
      type = "unlock-recipe",
      recipe = "5d-gun-turret-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-gun-turret-big-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-gun-turret-small-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-gun-turret-sniper-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-laser-turret-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-laser-turret-big-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-laser-turret-small-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-laser-turret-sniper-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-tesla-turret-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-flamethrower-turret-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-stone-wall-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-gate-" .. paddedIndex
    },
    {
      type = "unlock-recipe",
      recipe = "5d-radar-" .. paddedIndex
    }
  }
  tech.prerequisites = {"gun-turret", "laser-turret", "stone-wall", "gate", "flamethrower"}
  if index > 2 then
    tech.prerequisites = {"5dim-battlefield-0" .. (index - 1)}
    table.insert(tech.prerequisites, "logistics-" .. (index - 1))
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