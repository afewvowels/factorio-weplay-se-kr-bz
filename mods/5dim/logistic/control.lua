local botSpeed = data.raw["construction-robot"]["construction-robot"].speed

for index = 2, 10 do
  local name = "5d-construction-robot-0" .. index
  if index == 10 then
    name = "5d-construction-robot-" .. index
  end
  data.raw["construction-robot"][name].speed = botSpeed + (0.03 * index)
  data.raw["construction-robot"][name].max_energy = (5 + index) .. "MJ"
  data.raw["construction-robot"][name].energy_per_tick = 0.05 - (index * 0.005) .. "kJ"
  data.raw["construction-robot"][name].energy_per_move = 5 - (index * 0.1) .. "kJ"
  data.raw["construction-robot"][name].max_payload_size = 2 + index
end

for index = 2, 10 do
  local name = "5d-logistic-robot-0" .. index
  if index == 10 then
    name = "5d-logistic-robot-" .. index
  end
  data.raw["logistic-robot"][name].speed = botSpeed + (0.03 * index)
  data.raw["logistic-robot"][name].max_energy = (5 + index) .. "MJ"
  data.raw["logistic-robot"][name].energy_per_tick = 0.05 - (index * 0.005) .. "kJ"
  data.raw["logistic-robot"][name].energy_per_move = 5 - (index * 0.1) .. "kJ"
  data.raw["logistic-robot"][name].max_payload_size = 2 + index
end


for index = 1, 10 do
  local name = "5d-roboport-0" .. index
  if index == 1 then
    name = "roboport"
  end
  if index == 10 then
    name = "5d-roboport-" .. index
  end

  data.raw["roboport"][name].energy_source.input_flow_limit = 50 * index .. "MW"
  data.raw["roboport"][name].energy_source.buffer_capacity = 1000 * index .. "MJ"
  data.raw["roboport"][name].charging_energy = 5 * index .. "MW"
  data.raw["roboport"][name].logistics_radius = 32 + (index * 32)
  data.raw["roboport"][name].construction_radius = data.raw["roboport"][name].logistics_radius * 2
  data.raw["roboport"][name].robot_slots_count = 5 + (index * 5)
  data.raw["roboport"][name].charging_station_count = 8 + (index * 8)
end