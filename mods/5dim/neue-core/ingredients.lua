-- Ingredient template contains:
-- 1. plate
-- 2. plateSecondary
-- ??? Space Plates ???
-- 3. plateAlloy
-- 4. intermediate
-- 5. cable
-- 6. cableDense (ASCR cable, space elevator tether???)
-- 7. circuit
-- 8. accessory (motors and the like)
-- 9. material (heat shielding, low density structure)
-- 10. substrate (stone brick, concrete)
local ingredients = {}

ingredients.plate = {
  "iron-plate",
  "steel-plate",
  "tungsten-plate",
  "titanium-plate",
  "imersium-plate",
  "naquium-plate"
}

ingredients.plateSecondary = {
  "aluminum-plate",
  "tin-plate",
  "lead-plate",
  "copper-plate",
  "zirconium-plate",
  "copper-tungsten"
}

ingredients.plateSpace = {
  "holomium-plate",
  "berylium-plate",
  "iridium-plate",
  "imersium-plate",
  "naquium-plate"
}

ingredients.plateAlloy = {
  "rare-metals",
  "bronze-plate",
  "aluminum-alloy-1",
  "zirconium-alloy",
  "aluminum-alloy-2"
}

ingredients.intermediate = {
  "iron-gear-wheel",
  "steel-gear-wheel",
  "imersium-gear-wheel"
}

ingredients.intermediateLong = {
  "iron-stick",
  "iron-beam",
  "steel-beam",
  "imersium-beam"
}

ingredients.cable = {
  "copper-cable",
  "optical-fiber",
  "holomium-cable",
  "superconductive-cable"
}

ingredients.cableDense = {
  "aluminum-cable",
  "ascr-cable",
  "silver-cable",
  "tinned-cable"
}

ingredients.circuit = {
  "automation-core",
  "electronic-circuit",
  "advanced-circuit",
  "processing-unit",
  "ai-core",
  "quantum-processor",
  "naquium-processor"
}

ingredients.accessory = {
  "motor",
  "small-electric-motor",
  "multi-cylinder-engine",
  "electric-engine-unit",
  "heavy-assembly",
}

ingredients.battery = {
  "battery",
  "lithium-sulfur-battery"
}

ingredients.material = {
  "stone-brick",
  "concrete",
  "refined-concrete"
}

return ingredients