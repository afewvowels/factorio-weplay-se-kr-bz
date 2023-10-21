-- Reapply Research Data item append to Nuclear Fuel Reprocessing technology
-- table.insert(data.raw["technology"]["nuclear-fuel-reprocessing"].effects,
--     { type = "unlock-recipe", recipe = "research-data-recipe" })


data.raw["item"]["plutonium-fuel"].stack_size = 200

local item = table.deepcopy(data.raw.item["plutonium-fuel"])
local recipe = table.deepcopy(data.raw.recipe["plutonium-fuel-recipe"])

item.name = "shielded-plutonium-jetpack-fuel"
item.fuel_value = "1.5GJ"

recipe.name = "shielded-plutonium-jetpack-fuel-recipe"
recipe.results = {{"shielded-plutonium-jetpack-fuel", 1}}

data:extend({item, recipe})

table.insert(data.raw.technology["plutonium-fuel"].effects, {type = "unlock-recipe", recipe = "shielded-plutonium-jetpack-fuel-recipe"})
