-- Reapply Research Data item append to Nuclear Fuel Reprocessing technology
-- table.insert(data.raw["technology"]["nuclear-fuel-reprocessing"].effects,
--     { type = "unlock-recipe", recipe = "research-data-recipe" })

data.raw["item"]["plutonium-fuel"].stack_size = 200

-- Added Plutonium Fuel to Jetpack Fuel category in the Jetpack mod in __jetpack__/scripts/jetpack.lua at line 44