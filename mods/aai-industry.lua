data.raw["assembling-machine"]["fuel-processor"].module_specification = { module_slots = 2 }
data.raw["assembling-machine"]["fuel-processor"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}

data.raw.lab["burner-lab"].module_specification = { module_slots = 2 }
data.raw.lab["burner-lab"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}

-- data:extend({
--   {
--     type = "recipe",
--     name = "fuel-processing",
--     enabled = false,
--     energy_required = 5,
--     ingredients =
--     {
--       "processed-fuel", 25
--     },
--     category = "fuel-processing",
--     result = "rocket-fuel",
--     hidden = (not include_fuel_processor)
-- },
-- })