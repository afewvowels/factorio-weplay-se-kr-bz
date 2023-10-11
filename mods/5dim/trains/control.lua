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