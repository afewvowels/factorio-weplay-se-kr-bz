-- Changes to 5dim mods:

-- Updated personal fusion equipment to be all new and not modify existing tier 1 fusion reactor. Added se-rtg-equipment as technology prerequisite.
-- Updated all 5dim items to be new entities in corresponding 5dim files

-- Update 5dim power armor equipment grids to accept "universal-equipment" category items


data.raw["electric-pole"]["substation"].maximum_wire_distance = 22
data.raw["electric-pole"]["substation"].supply_area_distance = 11
data.raw["electric-pole"]["5d-substation-02"].maximum_wire_distance = 24
data.raw["electric-pole"]["5d-substation-02"].supply_area_distance = 12

data.raw.item["fusion-reactor-equipment"].subgroup = "armor-armor-armor"
data.raw.recipe["fusion-reactor-equipment"].subgroup = "armor-armor-armor"

-- Bounding box has been changed on accumulator somewhere. Idk yet.
-- data.raw["accumulator"]["accumulator"].next_upgrade = "5d-accumulator-02"

-- Rescale solar panel output for 5dim mod
local power = 1.0
local powerIncrement = 0.75
for i = 1, 10 do
  local name = "solar-panel"
  if i == 10 then
    name = "5d-solar-panel-10"
  elseif i > 1 then
    name = "5d-solar-panel-0" .. i
  end
  data.raw["solar-panel"][name].production = power .. "MW"
  power = power + powerIncrement
end

data.raw["accumulator"]["accumulator"].collision_box = data.raw["accumulator"]["5d-accumulator-02"].collision_box
data.raw["accumulator"]["accumulator"].fast_replaceable_group = "accumulator"
data.raw["accumulator"]["accumulator"].next_upgrade = "5d-accumulator-02"

for index = 2, 9 do
  local name = "5d-electric-mining-drill-0" .. index
  if index == 10 then
    name = "5d-electic-mining-drill-10"
  end
  data.raw["mining-drill"][name].fast_replaceable_group = "mining-drill"
end

data.raw["mining-drill"]["electric-mining-drill"].fast_replaceable_group = "mining-drill"
data.raw["mining-drill"]["electric-mining-drill"].next_upgrade = "5d-electric-mining-drill-02"

for index = 2, 10 do
  local name = "5d-pumpjack-0" .. index
  if index == 10 then
    name = "5d-pumpjack-10"
  end
  data.raw["mining-drill"][name].resource_categories = { "oil" }
  data.raw["mining-drill"][name].mining_speed = 1.5 + (index * 0.5)
end

for index = 1, 10 do
  local name = "accumulator"
  if index == 10 then
    name = "5d-accumulator-10"
  elseif index > 1 then
    name = "5d-accumulator-0" .. index
  end
  data.raw["accumulator"][name].energy_source.buffer_capacity = (50 * index) .. "MJ"
  data.raw["accumulator"][name].energy_source.input_flow_limit = (5 * index) .. "MW"
  data.raw["accumulator"][name].energy_source.output_flow_limit = (5 * index) .. "MW"
end

-- These items are using old or other modded icons so reset them to 5dim icons
data.raw.recipe["substation"].icon = "__5dim_energy__/graphics/icon/substation/substation-icon-01.png"
data.raw.item["substation"].icon = "__5dim_energy__/graphics/icon/substation/substation-icon-01.png"

data.raw.recipe["battery-equipment"].icon = "__5dim_equipment__/graphics/icon/battery/battery-equipment-icon-01.png"
data.raw.recipe["battery-equipment"].icons = nil
-- data.raw.recipe["battery-equipment"].icon_mipmaps = nil
data.raw.item["battery-equipment"].icon = "__5dim_equipment__/graphics/icon/battery/battery-equipment-icon-01.png"
data.raw.item["battery-equipment"].icons = nil
-- data.raw.item["battery-equipment"].icon_mipmaps = nil

data.raw.recipe["battery-mk2-equipment"].icon = "__5dim_equipment__/graphics/icon/battery/battery-equipment-icon-02.png"
data.raw.recipe["battery-mk2-equipment"].icons = nil
-- data.raw.recipe["battery-mk2-equipment"].icon_mipmaps = nil
data.raw.item["battery-mk2-equipment"].icon = "__5dim_equipment__/graphics/icon/battery/battery-equipment-icon-02.png"
data.raw.item["battery-mk2-equipment"].icons = nil
-- data.raw.item["battery-mk2-equipment"].icon_mipmaps = nil

data.raw.recipe["solar-panel-equipment"].icon = "__5dim_equipment__/graphics/icon/solar-panel/solar-panel-equipment-icon-01.png"
data.raw.recipe["solar-panel-equipment"].icons = nil
-- data.raw.recipe["solar-panel-equipment"].icon_mipmaps = nil
data.raw.item["solar-panel-equipment"].icon = "__5dim_equipment__/graphics/icon/solar-panel/solar-panel-equipment-icon-01.png"
data.raw.item["solar-panel-equipment"].icons = nil
-- data.raw.item["solar-panel-equipment"].icon_mipmaps = nil

data.raw.recipe["exoskeleton-equipment"].icon = "__5dim_equipment__/graphics/icon/exoskeleton/exoskeleton-equipment-icon-01.png"
data.raw.recipe["exoskeleton-equipment"].icons = nil
-- data.raw.recipe["exoskeleton-equipment"].icon_mipmaps = nil
data.raw.item["exoskeleton-equipment"].icon = "__5dim_equipment__/graphics/icon/exoskeleton/exoskeleton-equipment-icon-01.png"
data.raw.item["exoskeleton-equipment"].icons = nil
-- data.raw.item["exoskeleton-equipment"].icon_mipmaps = nil

data.raw.recipe["personal-laser-defense-equipment"].icon = "__5dim_equipment__/graphics/icon/personal-laser-defense/personal-laser-defense-equipment-icon-01.png"
data.raw.recipe["personal-laser-defense-equipment"].icons = nil
-- data.raw.recipe["personal-laser-defense-equipment"].icon_mipmaps = nil
data.raw.item["personal-laser-defense-equipment"].icon = "__5dim_equipment__/graphics/icon/personal-laser-defense/personal-laser-defense-equipment-icon-01.png"
data.raw.item["personal-laser-defense-equipment"].icons = nil
-- data.raw.item["personal-laser-defense-equipment"].icon_mipmaps = nil

data.raw.recipe["personal-roboport-equipment"].icon = "__5dim_equipment__/graphics/icon/personal-roboport/personal-roboport-equipment-icon-01.png"
data.raw.recipe["personal-roboport-equipment"].icons = nil
-- data.raw.recipe["personal-roboport-equipment"].icon_mipmaps = nil
data.raw.item["personal-roboport-equipment"].icon = "__5dim_equipment__/graphics/icon/personal-roboport/personal-roboport-equipment-icon-01.png"
data.raw.item["personal-roboport-equipment"].icons = nil
-- data.raw.item["personal-roboport-equipment"].icon_mipmaps = nil

data.raw.recipe["personal-roboport-mk2-equipment"].icon = "__5dim_equipment__/graphics/icon/personal-roboport/personal-roboport-equipment-icon-02.png"
data.raw.recipe["personal-roboport-mk2-equipment"].icons = nil
-- data.raw.recipe["personal-roboport-mk2-equipment"].icon_mipmaps = nil
data.raw.item["personal-roboport-mk2-equipment"].icon = "__5dim_equipment__/graphics/icon/personal-roboport/personal-roboport-equipment-icon-02.png"
data.raw.item["personal-roboport-mk2-equipment"].icons = nil
-- data.raw.item["personal-roboport-mk2-equipment"].icon_mipmaps = nil

data.raw.recipe["centrifuge"].icon = "__5dim_nuclear__/graphics/icon/centrifuge/centrifuge-icon-01.png"
data.raw.recipe["centrifuge"].icons = nil
-- data.raw.recipe["centrifuge"].icon_mipmaps = nil
data.raw.item["centrifuge"].icon = "__5dim_nuclear__/graphics/icon/centrifuge/centrifuge-icon-01.png"
data.raw.item["centrifuge"].icons = nil
-- data.raw.item["centrifuge"].icon_mipmaps = nil

data.raw.recipe["energy-shield-equipment"].icon = "__5dim_equipment__/graphics/icon/energy-shield/energy-shield-equipment-icon-01.png"
data.raw.recipe["energy-shield-equipment"].icons = nil
-- data.raw.recipe["energy-shield-equipment"].icon_mipmaps = nil
data.raw.item["energy-shield-equipment"].icon = "__5dim_equipment__/graphics/icon/energy-shield/energy-shield-equipment-icon-01.png"
data.raw.item["energy-shield-equipment"].icons = nil
-- data.raw.item["energy-shield-equipment"].icon_mipmaps = nil

data.raw.recipe["energy-shield-mk2-equipment"].icon = "__5dim_equipment__/graphics/icon/energy-shield/energy-shield-equipment-icon-02.png"
data.raw.recipe["energy-shield-mk2-equipment"].icons = nil
-- data.raw.recipe["energy-shield-mk2-equipment"].icon_mipmaps = nil
data.raw.item["energy-shield-mk2-equipment"].icon = "__5dim_equipment__/graphics/icon/energy-shield/energy-shield-equipment-icon-02.png"
data.raw.item["energy-shield-mk2-equipment"].icons = nil
-- data.raw.item["energy-shield-mk2-equipment"].icon_mipmaps = nil

-- Resize equipment grids

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

-- Update take result on 5dim personal roboports
for index = 3, 9, 1 do
  local dimName = "5d-personal-roboport-equipment-0" .. index
  data.raw["roboport-equipment"][dimName].take_result = dimName
end

data.raw["roboport-equipment"]["5d-personal-roboport-equipment-10"].take_result = "5d-personal-roboport-equipment-10"


-- Align heat exchangers and steam turbine output/input values

local energy_consumption = 50
local specific_heat = 5.0

for index = 2, 10, 1 do
  local number = "0" .. index
  if index == 10 then
    number = "10"
  end
  local dimName = "5d-heat-exchanger-" .. number
  data.raw["boiler"][dimName].energy_consumption = energy_consumption .. "MW"
  data.raw["boiler"][dimName].energy_source.specific_heat = specific_heat .. "MJ"
  energy_consumption = energy_consumption + 10
  specific_heat = specific_heat - 0.3
end

local fluid_usage_per_tick = 5
local effectivity = 1.0

for index = 2, 10, 1 do
  local number = "0" .. index
  if index == 10 then
    number = "10"
  end
  local dimName = "5d-steam-turbine-" .. number
  data.raw["generator"][dimName].fluid_usage_per_tick = fluid_usage_per_tick / 6
  data.raw["generator"][dimName].effectivity = effectivity
  fluid_usage_per_tick = fluid_usage_per_tick + 1
  effectivity = effectivity + 0.1
end

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
  if index == 1 then
    dimName = "energy-shield-equipment"
  elseif index == 2 then
    dimName = "energy-shield-mk2-equipment"
  end

  data.raw["energy-shield-equipment"][dimName].energy_source.buffer_capacity = bufferCapacity .. "MJ"
  data.raw["energy-shield-equipment"][dimName].energy_source.input_flow_limit = inputFlow .. "MW"
  data.raw["energy-shield-equipment"][dimName].max_shield_value = maxShieldValue
  bufferCapacity = bufferCapacity * 1.5
  inputFlow = inputFlow * 1.5
  maxShieldValue = maxShieldValue + 1000
end

-- Update 5dim roboport equipment to have a higher recharge rate and more recharge stations
local chargingStationCount = 14

data.raw["roboport-equipment"]["personal-roboport-equipment"].charging_station_count = 10
data.raw["roboport-equipment"]["personal-roboport-equipment"].construction_radius = 20
data.raw["roboport-equipment"]["personal-roboport-equipment"].robot_limit = 15
data.raw["roboport-equipment"]["personal-roboport-equipment"].charging_energy = "4MW"
data.raw["roboport-equipment"]["personal-roboport-equipment"].energy_source =
{
  type = "electric",
  buffer_capacity = "70MJ",
  input_flow_limit = "10MW",
  usage_priority = "secondary-input"
}

data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].charging_station_count = 12
data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].construction_radius = 23
data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].robot_limit = 20
data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].charging_energy = "4MW"
data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].energy_source =
{
  type = "electric",
  buffer_capacity = "100MJ",
  input_flow_limit = "20MW",
  usage_priority = "secondary-input"
}

for index = 3, 10, 1 do
  local number = "0" .. index
  if index == 10 then
    number = "10"
  end
  local dimName = "5d-personal-roboport-equipment-" .. number
  data.raw["roboport-equipment"][dimName].charging_station_count = chargingStationCount
  chargingStationCount = chargingStationCount + 4
  data.raw["roboport-equipment"][dimName].construction_radius = 20 + (index * 3)
  data.raw["roboport-equipment"][dimName].robot_limit = 15 + (index * 5)

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
  local name = "battery-equipment"
  if index == 2 then
    name = "battery-mk2-equipment"
  elseif index > 2 then
    name = "5d-battery-equipment-" .. number
  end

  data.raw["battery-equipment"][name].energy_source.buffer_capacity = (100 * index) .. "MJ"
  data.raw["battery-equipment"][name].energy_source.input_flow_limit = (10 * index) .. "MJ"
  data.raw["battery-equipment"][name].energy_source.output_flow_limit = (20 * index) .. "MJ"
end

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

for index = 1, 10 do
 local name = "steam-engine"
 local boilerName = "boiler"

 if index == 10 then
  name = "5d-steam-engine-10"
  boilerName = "5d-boiler-10"
 elseif index > 1 then
   name = "5d-steam-engine-0" .. index
   boilerName = "5d-boiler-0" .. index
 end

 data.raw["generator"][name].fluid_usage_per_tick = 0.2 + (index * 0.1)
 data.raw["generator"][name].max_power_output = 2 + (index * 0.5) .. "MW"

 data.raw["boiler"][boilerName].energy_consumption = 2 + index .. "MW"
 data.raw["boiler"][boilerName].target_temperature = 165
 data.raw["boiler"][boilerName].energy_source.emissions_per_minute = 30 - (index * 2)
 data.raw["boiler"][boilerName].energy_source.fuel_category = nil
 data.raw["boiler"][boilerName].energy_source.fuel_categories = { "chemical", "vehicle-fuel" }
end

for index = 2, 10 do
  local name = "5d-locomotive-0" .. index
  if index == 10 then
    name = "5d-locomotive-10"
  end
  local locomotive = table.deepcopy(data.raw.locomotive["locomotive"])
  locomotive.name = name
  locomotive.burner.fuel_category = nil
  locomotive.burner.fuel_categories = { "chemical", "vehicle-fuel" }
  locomotive.equipment_grid = "kr-locomotive-grid"
  locomotive.braking_force = 30 + index
  locomotive.max_speed = locomotive.max_speed + (index * 0.1)
  locomotive.max_power = 2 + (index * 0.2) .. "MW"
  locomotive.minable.result = name
  data.raw["locomotive"][name] = locomotive
end

for index = 2, 10 do
  local name = "5d-lab-0" .. index
  if index == 10 then
    name = "5d-lab-10"
  end
  data.raw["lab"][name].inputs = data.raw["lab"]["lab"].inputs
end

-- Krastorio switches all "Furnace" type entities to be "Assembling machines" and Space Exploration categorizes the Coke recipe from K2 to "kiln" so this has been quite the journey to figure out this code and it will completely not work if any of the above mods are removed. Also BZFoundry kind of does stuff here too.
for index = 2, 10 do
  local name = "5d-electric-furnace-0" .. index
  if index == 10 then
    name = "5d-electric-furnace-10"
  end

  -- if data.raw["assembling-machine"][name] then
    table.insert(data.raw["assembling-machine"][name].crafting_categories,"smelting")
    table.insert(data.raw["assembling-machine"][name].crafting_categories,"smelting-crafting")
    table.insert(data.raw["assembling-machine"][name].crafting_categories,"kiln")
  -- end
end


data.raw["reactor"]["nuclear-reactor"].collision_mask = data.raw["reactor"]["5d-nuclear-reactor-02"].collision_mask
-- data.raw["reactor"]["5d-nuclear-reactor-02"].collision_mask = data.raw["reactor"]["nuclear-reactor"].collision_mask

-- local collision_floor = {
--   --"item-layer", -- stops player from dropping items on belts.
--   "floor-layer",
--   "object-layer",
--   "water-tile",
--   "transport-belt-layer"
-- }

-- data.raw["reactor"]["nuclear-reactor"].collision_mask = collision_floor
-- data.raw["reactor"]["5d-nuclear-reactor-02"].collision_mask = collision_floor

data.raw["recipe"]["5d-fusion-reactor-equipment-02"].ingredients = {
  {"5d-fusion-reactor-equipment-01", 1},
  {"processing-unit", 200},
  {"low-density-structure", 50}
}