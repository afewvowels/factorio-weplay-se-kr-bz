-- Tweak tier 1 substation wire connection distance to match tiny grids blueprint sizes and scale tier 2 to match
data.raw["electric-pole"]["substation"].maximum_wire_distance = 22
data.raw["electric-pole"]["substation"].supply_area_distance = 11
data.raw["electric-pole"]["5d-substation-02"].maximum_wire_distance = 24
data.raw["electric-pole"]["5d-substation-02"].supply_area_distance = 12

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