-- Modify stack sizes on nanotubes and fullerenes from the BZ Carbon mod
-- data.raw["item"]["nanotubes"].stack_size = 200
-- data.raw["item"]["fullerenes"].stack_size = 200

-- Add module slots to the Foundry
data.raw["assembling-machine"]["foundry"].module_specification = { module_slots = 4 }
data.raw["assembling-machine"]["foundry"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}

-- Add module slots to the Basic Chemical Plant
data.raw["assembling-machine"]["basic-chemical-plant"].module_specification = { module_slots = 4 }
data.raw["assembling-machine"]["basic-chemical-plant"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}