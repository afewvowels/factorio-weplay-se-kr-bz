-- Changes to 5dim mods:
require("5dim/neue-core/data")

-- Updated personal fusion equipment to be all new and not modify existing tier 1 fusion reactor. Added se-rtg-equipment as technology prerequisite.
-- Updated all 5dim items to be new entities in corresponding 5dim files

-- Update 5dim power armor equipment grids to accept "universal-equipment" category items

-- These items are using old or other modded icons so reset them to 5dim icons
data.raw.recipe["substation"].icon = "__5dim_energy__/graphics/icon/substation/substation-icon-01.png"
data.raw.item["substation"].icon = "__5dim_energy__/graphics/icon/substation/substation-icon-01.png"

-- data.raw.recipe["battery-equipment"].icon = "__5dim_equipment__/graphics/icon/battery/battery-equipment-icon-01.png"
-- data.raw.recipe["battery-equipment"].icons = nil
-- data.raw.item["battery-equipment"].icon = "__5dim_equipment__/graphics/icon/battery/battery-equipment-icon-01.png"
-- data.raw.item["battery-equipment"].icons = nil

-- data.raw.recipe["battery-mk2-equipment"].icon = "__5dim_equipment__/graphics/icon/battery/battery-equipment-icon-02.png"
-- data.raw.recipe["battery-mk2-equipment"].icons = nil
-- data.raw.item["battery-mk2-equipment"].icon = "__5dim_equipment__/graphics/icon/battery/battery-equipment-icon-02.png"
-- data.raw.item["battery-mk2-equipment"].icons = nil

data.raw.recipe["solar-panel-equipment"].icon = "__5dim_equipment__/graphics/icon/solar-panel/solar-panel-equipment-icon-01.png"
data.raw.recipe["solar-panel-equipment"].icons = nil
data.raw.item["solar-panel-equipment"].icon = "__5dim_equipment__/graphics/icon/solar-panel/solar-panel-equipment-icon-01.png"
data.raw.item["solar-panel-equipment"].icons = nil

data.raw.recipe["exoskeleton-equipment"].icon = "__5dim_equipment__/graphics/icon/exoskeleton/exoskeleton-equipment-icon-01.png"
data.raw.recipe["exoskeleton-equipment"].icons = nil
data.raw.item["exoskeleton-equipment"].icon = "__5dim_equipment__/graphics/icon/exoskeleton/exoskeleton-equipment-icon-01.png"
data.raw.item["exoskeleton-equipment"].icons = nil

data.raw.recipe["personal-laser-defense-equipment"].icon = "__5dim_equipment__/graphics/icon/personal-laser-defense/personal-laser-defense-equipment-icon-01.png"
data.raw.recipe["personal-laser-defense-equipment"].icons = nil
data.raw.item["personal-laser-defense-equipment"].icon = "__5dim_equipment__/graphics/icon/personal-laser-defense/personal-laser-defense-equipment-icon-01.png"
data.raw.item["personal-laser-defense-equipment"].icons = nil

-- data.raw.recipe["personal-roboport-equipment"].icon = "__5dim_equipment__/graphics/icon/personal-roboport/personal-roboport-equipment-icon-01.png"
-- data.raw.recipe["personal-roboport-equipment"].icons = nil
-- data.raw.item["personal-roboport-equipment"].icon = "__5dim_equipment__/graphics/icon/personal-roboport/personal-roboport-equipment-icon-01.png"
-- data.raw.item["personal-roboport-equipment"].icons = nil

-- data.raw.recipe["personal-roboport-mk2-equipment"].icon = "__5dim_equipment__/graphics/icon/personal-roboport/personal-roboport-equipment-icon-02.png"
-- data.raw.recipe["personal-roboport-mk2-equipment"].icons = nil
-- data.raw.item["personal-roboport-mk2-equipment"].icon = "__5dim_equipment__/graphics/icon/personal-roboport/personal-roboport-equipment-icon-02.png"
-- data.raw.item["personal-roboport-mk2-equipment"].icons = nil

data.raw.recipe["centrifuge"].icon = "__5dim_nuclear__/graphics/icon/centrifuge/centrifuge-icon-01.png"
data.raw.recipe["centrifuge"].icons = nil
data.raw.item["centrifuge"].icon = "__5dim_nuclear__/graphics/icon/centrifuge/centrifuge-icon-01.png"
data.raw.item["centrifuge"].icons = nil

-- Restore new icons for energy shield and personal fusion reactor equipments for Krastorio2 + Space Exploration
-- data.raw.item["energy-shield-equipment"].icon = "__space-exploration-graphics__/graphics/equipment/energy-shield-yellow.png"
-- data.raw.recipe["energy-shield-equipment"].icon = "__space-exploration-graphics__/graphics/equipment/energy-shield-yellow.png"
-- data.raw.item["energy-shield-mk2-equipment"].icon = "__space-exploration-graphics__/graphics/equipment/energy-shield-red.png"
-- data.raw.recipe["energy-shield-mk2-equipment"].icon = "__space-exploration-graphics__/graphics/equipment/energy-shield-red.png"
-- data.raw.item["fusion-reactor-equipment"].icon = "__Krastorio2Assets__/equipments/universal/fusion-reactor-equipment.png"
-- data.raw.recipe["fusion-reactor-equipment"].icon = "__Krastorio2Assets__/equipments/universal/fusion-reactor-equipment.png"


data.raw.item["energy-shield-equipment"].subgroup = "equipment"
data.raw.item["energy-shield-equipment"].order = "b[shield]-a[energy-shield]"
data.raw.recipe["energy-shield-equipment"].subgroup = "equipment"
data.raw.recipe["energy-shield-equipment"].order = "b[shield]-a[energy-shield]"
data.raw.item["energy-shield-mk2-equipment"].subgroup = "equipment"
data.raw.item["energy-shield-mk2-equipment"].order = "b[shield]-b[energy-shield]"
data.raw.recipe["energy-shield-mk2-equipment"].subgroup = "equipment"
data.raw.recipe["energy-shield-mk2-equipment"].order = "b[shield]-b[energy-shield]"

data.raw.item["fusion-reactor-equipment"].subgroup = "equipment"
data.raw.item["fusion-reactor-equipment"].order = "a[energy-source]-b[fusion-reactor]-c"
data.raw.recipe["fusion-reactor-equipment"].subgroup = "equipment"
data.raw.recipe["fusion-reactor-equipment"].order = "a[energy-source]-b[fusion-reactor]-c"

data.raw.item["personal-roboport-equipment"].subgroup = "equipment"
-- data.raw.item["personal-roboport-equipment"].icon = "__Krastorio2Assets__/icons/equipments/universal/personal-roboport-equipment.png"
data.raw.recipe["personal-roboport-equipment"].subgroup = "equipment"
-- data.raw.recipe["personal-roboport-equipment"].icon = "__Krastorio2Assets__/icons/equipments/universal/personal-roboport-equipment.png"

data.raw.item["personal-roboport-mk2-equipment"].subgroup = "equipment"
-- data.raw.item["personal-roboport-mk2-equipment"].icon = "__Krastorio2Assets__/icons/equipments/universal/personal-roboport-mk2-equipment.png"
data.raw.recipe["personal-roboport-mk2-equipment"].subgroup = "equipment"
-- data.raw.recipe["personal-roboport-mk2-equipment"].icon = "__Krastorio2Assets__/icons/equipments/universal/personal-roboport-mk2-equipment.png"

data.raw.item["battery-equipment"].subgroup = "equipment"
-- data.raw.item["battery-equipment"].icon = "__Krastorio2Assets__/icons/equipments/universal/battery-mk1-equipment.png"
data.raw.recipe["battery-equipment"].subgroup = "equipment"
-- data.raw.recipe["battery-equipment"].icon = "__Krastorio2Assets__/icons/equipments/universal/battery-mk1-equipment.png"
data.raw.item["battery-mk2-equipment"].subgroup = "equipment"
-- data.raw.item["battery-mk2-equipment"].icon = "__Krastorio2Assets__/icons/equipments/universal/battery-mk2-equipment.png"
data.raw.recipe["battery-mk2-equipment"].subgroup = "equipment"
-- data.raw.recipe["battery-mk2-equipment"].icon = "__Krastorio2Assets__/icons/equipments/universal/battery-mk2-equipment.png"

data.raw.armor["power-armor"].subgroup = "equipment"
-- data.raw.armor["power-armor"].icon = "__base__/graphics/icons/power-armor.png"
data.raw.recipe["power-armor"].subgroup = "equipment"
-- data.raw.recipe["power-armor"].icon = "__base__/graphics/icons/power-armor.png"
data.raw.armor["power-armor-mk2"].subgroup = "equipment"
-- data.raw.armor["power-armor-mk2"].icon = "__Krastorio2Assets__/icons/equipments/character/power-armor-mk2.png"
data.raw.recipe["power-armor-mk2"].subgroup = "equipment"
-- data.raw.recipe["power-armor-mk2"].icon = "__Krastorio2Assets__/icons/equipments/character/power-armor-mk2.png"