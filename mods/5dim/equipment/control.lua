table.insert(data.raw.technology["personal-laser-defense-equipment"].effects, { type = "unlock-recipe", recipe = "5d-personal-tesla-defense-equipment-01" })
table.insert(data.raw.technology["se-rtg-equipment"].effects, { type = "unlock-recipe", recipe = "5d-fusion-reactor-equipment-01"})

local item = table.deepcopy(data.raw.item["se-rtg-equipment"])
local recipe = table.deepcopy(data.raw.recipe["se-rtg-equipment"])
local equipment = table.deepcopy(data.raw["generator-equipment"]["se-rtg-equipment"])
local tech = table.deepcopy(data.raw.technology["se-rtg-equipment"])

--Item
item.name = "5d-fusion-reactor-equipment-01"
item.icon = "__5dim_equipment__/graphics/icon/fusion-reactor/fusion-reactor-equipment-icon-01.png"
item.subgroup = "armor-reactor"
item.order = "a"
item.placed_as_equipment_result = "5d-fusion-reactor-equipment-01"

--Recipe
recipe.name = item.name
recipe.icon = item.icon
recipe.result = item.name
recipe.icon_size = 64
recipe.ingredients = {
  {"se-rtg-equipment", 1},
  {"processing-unit", 200},
  {"low-density-structure", 50}
}
recipe.enabled = false

-- Equipment
equipment.name = "5d-fusion-reactor-equipment-01"
equipment.power = "100MW"
equipment.sprite.filename =
    "__5dim_equipment__/graphics/equipment/fusion-reactor/fusion-reactor-equipment-01.png"
equipment.shape = { width = 2, height = 2, type = "full" }

tech.name = "5d-fusion-reactor-equipment-01"
tech.icon = item.icon
tech.icons = nil
tech.icon_size = 64
tech.unit.count = 50
tech.unit.ingredients = data.raw.technology["se-rtg-equipment"].unit.ingredients
tech.prerequisites = { "se-rtg-equipment" }
tech.effects = {
    {
        type = "unlock-recipe",
        recipe = item.name
    }
}

data:extend({ item, recipe, equipment, tech })

local function generateEnergyShield(index)
  local item = table.deepcopy(data.raw.item["energy-shield-equipment"])
  local recipe = table.deepcopy(data.raw.recipe["energy-shield-equipment"])
  local equipment = table.deepcopy(data.raw["energy-shield-equipment"]["energy-shield-equipment"])
  local tech = table.deepcopy(data.raw.technology["energy-shield-equipment"])

  local name = "5d-energy-shield-equipment-0" .. index
  local icon = "__5dim_equipment__/graphics/icon/energy-shield/energy-shield-equipment-icon-0" .. index .. ".png"
  local subgroup = "armor-shield"
  local order = index

  item.name = name
  item.icon = icon
  item.subgroup = subgroup
  item.order = order
  item.placed_as_equipment_result = name

  recipe.name = name
  recipe.icon = icon
  recipe.result = name
  recipe.icon_size = 64
  recipe.ingredients = {
    {"advanced-circuit", 10},
    {"steel-plate", 10},
    {"low-density-structure", 10}
  }
  if index > 1 then
    table.insert(recipe.ingredients, {"5d-energy-shield-equipment-0" .. (index - 1), 1})
  end
  recipe.enabled = false

  equipment.name = name
  equipment.max_shield_value = 200 * index
  equipment.energy_source.buffer_capacity = (2 * index) .. "MJ"
  equipment.energy_source.input_flow_limit = (2 * index) .. "MW"
  equipment.sprite.filename =
    "__5dim_equipment__/graphics/equipment/energy-shield/energy-shield-equipment-0" .. index .. ".png"

  tech.name = name
  tech.icon = icon
  tech.icon_size = 64
  tech.unit.count = 50
  tech.unit.ingredients = {
    {"basic-tech-card", 1},
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    {"military-science-pack", 1}
  }

  if index > 1 then
    table.insert(tech.unit.ingredients, {"se-rocket-science-pack", 1})
  end

  tech.prerequisites = { "se-adaptive-armour-1" }
  if index > 1 then
    tech.prerequisites = { "5d-energy-shield-equipment-0" .. (index - 1) }
  end

  data:extend({ tech, item, recipe, equipment })
end

generateEnergyShield(1)
generateEnergyShield(2)