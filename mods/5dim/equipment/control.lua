table.insert(data.raw.technology["personal-laser-defense-equipment"].effects, { type = "unlock-recipe", recipe = "5d-personal-tesla-defense-equipment-01" })
table.insert(data.raw.technology["se-rtg-equipment"].effects, { type = "unlock-recipe", recipe = "5d-fusion-reactor-equipment-01"})
data.raw["recipe"]["5d-fusion-reactor-equipment-02"].ingredients = {
  {"5d-fusion-reactor-equipment-01", 1},
  {"processing-unit", 200},
  {"low-density-structure", 50}
}

local function generateTier1PersonalFusionReactorEquipment()
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
  equipment.take_result = "5d-fusion-reactor-equipment-01"
  equipment.power = "100MW"
  equipment.sprite.filename =
      "__5dim_equipment__/graphics/equipment/fusion-reactor/fusion-reactor-equipment-01.png"
  equipment.shape = { width = 2, height = 2, type = "full" }

  data:extend({ item, recipe, equipment })
end

local function generateEnergyShield(index)
  local item = table.deepcopy(data.raw.item["energy-shield-equipment"])
  local recipe = table.deepcopy(data.raw.recipe["energy-shield-equipment"])
  local equipment = table.deepcopy(data.raw["energy-shield-equipment"]["energy-shield-equipment"])
  local tech = table.deepcopy(data.raw.technology["energy-shield-equipment"])

  local name = "5d-energy-shield-equipment-0" .. index
  local icon = "__5dim_equipment__/graphics/icon/energy-shield/energy-shield-equipment-icon-0" .. index .. ".png"
  local subgroup = "armor-shield"
  local order = "a" .. index

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
  equipment.take_result = name
  equipment.max_shield_value = 200 * index
  equipment.energy_source.buffer_capacity = (2 * index) .. "MJ"
  equipment.energy_source.input_flow_limit = (2 * index) .. "MW"
  equipment.sprite.filename =
    "__5dim_equipment__/graphics/equipment/energy-shield/energy-shield-equipment-0" .. index .. ".png"

  data:extend({ item, recipe, equipment })
end

generateEnergyShield(1)
generateEnergyShield(2)
generateTier1PersonalFusionReactorEquipment()

local function generateNewPersonalRoboports(index)
  local item = table.deepcopy(data.raw.item["personal-roboport-equipment"])
  local recipe = table.deepcopy(data.raw.recipe["personal-roboport-equipment"])
  local equipment = table.deepcopy(data.raw["roboport-equipment"]["personal-roboport-equipment"])

  local name = "5d-personal-roboport-equipment-0" .. index
  local icon = "__5dim_equipment__/graphics/icon/personal-roboport/personal-roboport-equipment-icon-0" .. index .. ".png"
  local subgroup = "armor-roboport"

  -- Generate item
  item.name = name
  item.icon = icon
  item.icons = nil
  item.subgroup = subgroup
  item.order = "a" .. index
  item.placed_as_equipment_result = name

  -- Generate recipe
  recipe.name = name
  recipe.icon = icon
  recipe.icons = nil
  recipe.icon_size = 64
  recipe.subgroup = subgroup
  recipe.order = "a" .. index
  recipe.result = name
  recipe.ingredients = {
    {"electronic-circuit", 5},
    {"aluminum-plate", 3},
    {"optical-fiber", 5}
  }
  if index > 1 then
    table.insert(recipe.ingredients, {"5d-personal-roboport-equipment-0" .. (index - 1), 1})
  end
  recipe.enabled = false

  -- Generate equipment
  equipment.name = name
  equipment.take_result = name
  equipment.construction_radius = 10 + (index * 5)
  equipment.robot_limit = 25 + (index * 5)
  equipment.charging_station_count = 10 + (index * 2)
  equipment.charging_energy = 4 + (index * 2) .. "MW"
  equipment.energy_source = {
    type = "electric",
    buffer_capacity = (10 * index) .. "MJ",
    input_flow_limit = (2 * index) .. "MW",
    usage_priority = "secondary-input"
  }

  data:extend({ item, recipe, equipment })
end

-- Generate new personal roboports
generateNewPersonalRoboports(1)
generateNewPersonalRoboports(2)

-- Update take result on 5dim personal roboports
for index = 3, 10, 1 do
  local dimName = "5d-personal-roboport-equipment-0" .. index
  if index == 10 then
    dimName = "5d-personal-roboport-equipment-" .. index
  end
  data.raw["roboport-equipment"][dimName].take_result = dimName
end

-- Update 5dim roboport equipment to have a higher recharge rate and more recharge stations
local chargingStationCount = 14

data.raw["roboport-equipment"]["personal-roboport-equipment"].charging_station_count = 10
data.raw["roboport-equipment"]["personal-roboport-equipment"].construction_radius = 10
data.raw["roboport-equipment"]["personal-roboport-equipment"].robot_limit = 25
data.raw["roboport-equipment"]["personal-roboport-equipment"].charging_energy = "4MW"
data.raw["roboport-equipment"]["personal-roboport-equipment"].energy_source =
{
  type = "electric",
  buffer_capacity = "70MJ",
  input_flow_limit = "10MW",
  usage_priority = "secondary-input"
}
table.insert(data.raw["roboport-equipment"]["personal-roboport-equipment"].categories, "universal-equipment")

data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].charging_station_count = 12
data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].construction_radius = 15
data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].robot_limit = 30
data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].charging_energy = "4MW"
data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].energy_source =
{
  type = "electric",
  buffer_capacity = "100MJ",
  input_flow_limit = "20MW",
  usage_priority = "secondary-input"
}

table.insert(data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].categories, "universal-equipment")

for index = 3, 10, 1 do
  local number = "0" .. index
  if index == 10 then
    number = "10"
  end
  local dimName = "5d-personal-roboport-equipment-" .. number
  data.raw["roboport-equipment"][dimName].charging_station_count = chargingStationCount
  chargingStationCount = chargingStationCount + 4
  data.raw["roboport-equipment"][dimName].construction_radius = 10 + (index * 5)
  data.raw["roboport-equipment"][dimName].robot_limit = 25 + (index * 5)
  table.insert(data.raw["roboport-equipment"][dimName].categories, "universal-equipment")
end

-- Adjust recipe for first original new 5Dim Personal Roboport Equipment (03) to use newly generated 5Dim Personal Roboport Equipment instead of original game Personal Roboport Equipment & MK2 Equipment
data.raw.recipe["5d-personal-roboport-equipment-03"].ingredients = {
  {"5d-personal-roboport-equipment-02", 2},
  {"processing-unit", 15},
  {"low-density-structure", 5}
}

local function generateNewPersonalBatteryEquipment(index)
  local item = table.deepcopy(data.raw.item["battery-equipment"])
  local recipe = table.deepcopy(data.raw.recipe["battery-equipment"])
  local equipment = table.deepcopy(data.raw["battery-equipment"]["battery-equipment"])

  local name = "5d-battery-equipment-0" .. index
  local icon = "__5dim_equipment__/graphics/icon/battery/battery-equipment-icon-0" .. index .. ".png"
  local subgroup = "armor-baterry"

  -- Generate item
  item.name = name
  item.icon = icon
  item.icons = nil
  item.subgroup = subgroup
  item.order = "a" .. index
  item.placed_as_equipment_result = name

  -- Generate recipe
  recipe.name = name
  recipe.icon = icon
  recipe.icons = nil
  recipe.icon_size = 64
  recipe.subgroup = subgroup
  recipe.order = "a" .. index
  recipe.result = name
  recipe.ingredients = {
    {"battery", 5},
    {"electronic-circuit", 3},
    {"copper-cable", 5}
  }
  if index > 1 then
    table.insert(recipe.ingredients, {"5d-battery-equipment-0" .. (index - 1), 1})
  end
  recipe.enabled = false

  -- Generate equipment
  equipment.name = name
  equipment.take_result = name
  equipment.energy_source = {
    type = "electric",
    buffer_capacity = (100 * index) .. "MJ",
    input_flow_limit = (10 * index) .. "MW",
    ouput_flow_limit = (50 * index) .. "MW",
    usage_priority = "secondary-input"
  }

  data:extend({item, recipe, equipment})
end

generateNewPersonalBatteryEquipment(1)
generateNewPersonalBatteryEquipment(2)


-- Adjust recipe for first original new 5Dim personal battery (03) to use newly generated 5Dim Personal Battery Equipment instead of original game Battery Equipment MK2
data.raw.recipe["5d-battery-equipment-03"].ingredients = {
  {"5d-battery-equipment-02", 2},
  {"processing-unit", 15},
  {"low-density-structure", 5}
}
-- Resize equipment grids then make new Tier 1 & 2 Power Armor Equipment for 5Dim mods
local width = 10
local height = 10

data.raw["equipment-grid"]["medium-equipment-grid"].width = width
data.raw["equipment-grid"]["medium-equipment-grid"].height = height

height = height + 2

data.raw["equipment-grid"]["large-equipment-grid"].width = width
data.raw["equipment-grid"]["large-equipment-grid"].height = height

for i = 3, 10 do
  local number = "0" .. i
  if i == 10 then
      number = "10"
  end
  local grid = data.raw["equipment-grid"]["5d-grid-power-armor-" .. number]
  grid.equipment_categories = {"armor", "universal-equipment", "armor-jetpack"}
  grid.width = width
  grid.height = height
  data.raw["equipment-grid"]["5d-grid-power-armor-" .. number] = grid
  if i % 2 == 0 then
    width = width + 2
  end
  height = height + 2
end

for i = 3, 10 do
  local name = "5d-power-armor-0" .. i
  if i == 10 then
    name = "5d-power-armor-" .. i
  end
  data.raw["armor"][name].inventory_size_bonus = 40 + (20 * index)
end

-- Create new equipment grids for early game armors
data:extend({
  {
      type = "equipment-grid",
      name = "light-armor-grid",
      width = 6,
      height = 6,
      equipment_categories = {
          "armor",
          "universal-equipment",
          "robot-interaction-equipment",
          "armor-jetpack"
      }
  },
  {
      type = "equipment-grid",
      name = "heavy-armor-grid",
      width = 6,
      height = 8,
      equipment_categories = {
          "armor",
          "universal-equipment",
          "robot-interaction-equipment",
          "armor-jetpack"
      }
  },
  {
      type = "equipment-grid",
      name = "modular-armor-grid",
      width = 6,
      height = 10,
      equipment_categories = {
          "armor",
          "universal-equipment",
          "robot-interaction-equipment",
          "armor-jetpack"
      }
  }
})

data.raw["armor"]["light-armor"].equipment_grid = "light-armor-grid"
data.raw["armor"]["light-armor"].inventory_size_bonus = 20

data.raw["armor"]["heavy-armor"].equipment_grid = "heavy-armor-grid"
data.raw["armor"]["heavy-armor"].inventory_size_bonus = 30

data.raw["armor"]["modular-armor"].equipment_grid = "modular-armor-grid"
data.raw["armor"]["modular-armor"].inventory_size_bonus = 40


local function generateNewPowerArmorEquipment(index)
  local item = table.deepcopy(data.raw["armor"]["power-armor"])
  local recipe = table.deepcopy(data.raw.recipe["power-armor"])

  local name = "5d-power-armor-0" .. index
  local icon = "__5dim_equipment__/graphics/icon/power-armor/power-armor-icon-0" .. index .. ".png"
  local subgroup = "armor-power-armor"

  -- Generate item
  item.name = name
  item.icon = icon
  item.subgroup = subgroup
  item.order = "a" .. index
  item.equipment_grid = "medium-equipment-grid"
  if index > 1 then
    item.equipment_grid = "large-equipment-grid"
  end
  item.inventory_size_bonus = 40 + (20 * index)

  -- Generate recipe
  recipe.name = name
  recipe.icon = icon
  recipe.icon_size = 64
  recipe.subgroup = subgroup
  recipe.order = "a" .. index
  recipe.result = name
  recipe.ingredients = {
    {"steel-plate", 5},
    {"electronic-circuit", 3},
    {"copper-cable", 5},
    {"glass", 1}
  }
  local previousArmor = nil
  if index == 1 then
    previousArmor = "modular-armor"
  elseif index == 2 then
    previousArmor = "5d-power-armor-0" .. (index - 1)
  end
  table.insert(recipe.ingredients, {previousArmor, 1})
  recipe.enabled = false

  data:extend({item, recipe})
end

generateNewPowerArmorEquipment(1)
generateNewPowerArmorEquipment(2)

-- Adjust recipe for first original new 5Dim power armor to use newly generated 5Dim power armors instead of original game Power Armor MK2
data.raw.recipe["5d-power-armor-03"].ingredients = {
  {"5d-power-armor-02", 1},
  {"effectivity-module-2", 25},
  {"speed-module-2", 25},
  {"processing-unit", 60},
  {"electric-engine-unit", 40},
  {"low-density-structure", 30}
}

-- Update first new 5Dim energy shield equipment made by the original 5dim_equipment mod which is tier 3 to use these new custom 5dim energy shiedl items in the recipe instead of the vanilla ones which are heavily modified by Krastorio2 and Space Exploration
data.raw.recipe["5d-energy-shield-equipment-03"].ingredients = {
  {"5d-energy-shield-equipment-02", 2},
  {"processing-unit", 15},
  {"low-density-structure", 5}
}
-- Update technology to reference new 5dim tier 2 energy shield equipment tech as prerequisite instead of original technology
-- data.raw.technology["5d-energy-shield-equipment-1"].prerequisites = { "5d-energy-shield-equipment-02" }
-- data.raw.technology["5d-energy-shield-equipment-1"].unit.ingredients = {
--   {"basic-tech-card", 1},
--   {"automation-science-pack", 1},
--   {"logistic-science-pack", 1},
--   {"chemical-science-pack", 1},
--   {"military-science-pack", 1},
--   {"se-rocket-science-pack", 1}
-- }

-- Resize 5dim fusion reactor equipment to 2x2
for index = 1, 10, 1 do
  local number = "0" .. index
  if index == 10 then
    number = "10"
  end
  local dimName = "5d-fusion-reactor-equipment-" .. number
  data.raw["generator-equipment"][dimName].shape = { width = 2, height = 2, type = "full" }
  data.raw["generator-equipment"][dimName].power = (100 * index) .. "MW"
end

-- Update 5dim energy shield equipment to have higher recharge rates
local bufferCapacity = 120
local inputFlow = 60
local maxShieldValue = 1000

for index = 1, 10, 1 do
  local number = "0" .. index
  if index == 10 then
    number = "10"
  end
  local dimName = "5d-energy-shield-equipment-" .. number
  -- if index == 1 then
  --   dimName = "energy-shield-equipment"
  -- elseif index == 2 then
  --   dimName = "energy-shield-mk2-equipment"
  -- end

  data.raw["energy-shield-equipment"][dimName].energy_source.buffer_capacity = bufferCapacity .. "MJ"
  data.raw["energy-shield-equipment"][dimName].energy_source.input_flow_limit = inputFlow .. "MW"
  data.raw["energy-shield-equipment"][dimName].max_shield_value = maxShieldValue
  bufferCapacity = bufferCapacity * 1.5
  inputFlow = inputFlow * 1.5
  maxShieldValue = maxShieldValue + 1000
end



for index = 1, 10 do
  local number = "0" .. index
  if index == 10 then
    number = "10"
  end
  local name = "solar-panel-equipment"
  if index > 1 then
    name = "5d-solar-panel-equipment-" .. number
  end
  data.raw["solar-panel-equipment"][name].power = (5 * index) .. "MW"
end


for index = 1, 10 do
  local number = "0" .. index
  if index == 10 then
    number = "10"
  end
  local name = "5d-battery-equipment-" .. number
  -- Generating new Tier 1 and 2 5Dim personal battery equipment
  -- local name = "battery-equipment"
  -- if index == 2 then
  --   name = "battery-mk2-equipment"
  -- elseif index > 2 then
  --   name = "5d-battery-equipment-" .. number
  -- end

  data.raw["battery-equipment"][name].energy_source.buffer_capacity = (100 * index) .. "MJ"
  data.raw["battery-equipment"][name].energy_source.input_flow_limit = (10 * index) .. "MJ"
  data.raw["battery-equipment"][name].energy_source.output_flow_limit = (20 * index) .. "MJ"
end

-- Insert Tier 1 5Dim personal tesla equipment as unlock to Tier 1 (vanilla) personal laser defense equipment
table.insert(data.raw.technology["personal-laser-defense-equipment"].effects, {
  type = "unlock-recipe",
  recipe = "5d-personal-tesla-defense-equipment-01"
})

-- Refactor and update personal laser defense equipment range and damage values etc.
for index = 1, 10 do
  local number = "0" .. index
  if index == 10 then
    number = "10"
  end

  local name = "personal-laser-defense-equipment"
  local teslaName = "5d-personal-tesla-defense-equipment-" .. number
  if index > 1 then
    name = "5d-personal-laser-defense-equipment-" .. number
  end

  data.raw["active-defense-equipment"][name].attack_parameters.range = 30 + index
  data.raw["active-defense-equipment"][name].attack_parameters.ammo_type.energy_consumption = "1MJ"
  data.raw["active-defense-equipment"][name].attack_parameters.ammo_type.cooldown = 40 - index
  data.raw["active-defense-equipment"][name].attack_parameters.damage_modifier = 10 + index
  -- data.raw["active-defense-equipment"][name].attack_parameters.ammo_type.action.action_delivery.max_length = 35 + index

  data.raw["active-defense-equipment"][teslaName].attack_parameters.range = 20 + index
  data.raw["active-defense-equipment"][teslaName].attack_parameters.ammo_type.energy_consumption = "1MJ"
  data.raw["active-defense-equipment"][teslaName].attack_parameters.ammo_type.cooldown = 20 - index
  data.raw["active-defense-equipment"][teslaName].attack_parameters.damage_modifier = 7 + index
  -- data.raw["active-defense-equipment"][teslaName].attack_parameters.ammo_type.action.action_delivery.max_length = 35 + index
  -- data.raw["active-defense-equipment"][teslaName].attack_parameters.ammo_type.category = "electric"
  -- data.raw["active-defense-equipment"][teslaName].attack_parameters.ammo_type.action.action_delivery.beam = "electric-beam"
end