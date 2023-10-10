data.raw["assembling-machine"]["space-train-battery-charging-station"].crafting_speed = 5
data.raw["assembling-machine"]["space-train-battery-charging-station"].module_specification = { module_slots = 1 }
data.raw["assembling-machine"]["space-train-battery-charging-station"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}

data.raw["cargo-wagon"]["space-cargo-wagon"].inventory_size = 250
data.raw["fluid-wagon"]["space-fluid-wagon"].capacity = 250000

if mods["space-trains"] then
  data.raw["electric-turret"]["space-trains-charger"].next_upgrade = nil
end