--Trains
data.raw["rail-planner"]["rail"].subgroup = "trains-rails"
data.raw["rail-planner"]["rail"].order = "a"
if mods["space-exploration"] then
  data.raw["rail-planner"]["se-space-rail"].subgroup = "trains-rails"
  data.raw["rail-planner"]["se-space-rail"].order = "aa"
end
if mods["LTN_Combinator_Modernized"] then
  data.raw.item["ltn-combinator"].subgroup = "trains-rails"
  data.raw.item["ltn-combinator"].order = "aaa"
end
if mods["LogisticTrainNetwork"] then
  data.raw.item["logistic-train-stop"].subgroup = "trains-rails"
  data.raw.item["logistic-train-stop"].order = "b"
end
data.raw.item["train-stop"].subgroup = "trains-rails"
data.raw.item["train-stop"].order = "c"
data.raw.item["rail-signal"].subgroup = "trains-rails"
data.raw.item["rail-signal"].order = "d"
data.raw.item["rail-chain-signal"].subgroup = "trains-rails"
data.raw.item["rail-chain-signal"].order = "e"

if mods["electric-shuttle-train"] then
  data.raw["item-with-entity-data"]["shuttle"].subgroup = "trains-specialty"
  data.raw["item-with-entity-data"]["shuttle"].order = "a"
  data.raw["item-with-entity-data"]["shuttle_car"].subgroup = "trains-specialty"
  data.raw["item-with-entity-data"]["shuttle_car"].order = "b"
  data.raw["item-with-entity-data"]["electric_shuttle"].subgroup = "trains-specialty"
  data.raw["item-with-entity-data"]["electric_shuttle"].order = "c"
  data.raw["item-with-entity-data"]["electric_shuttle_car"].subgroup = "trains-specialty"
  data.raw["item-with-entity-data"]["electric_shuttle_car"].order = "d"
end

if mods["se-space-trains"] then
  data.raw["item-with-entity-data"]["space-locomotive"].subgroup = "trains-space"
  data.raw["item-with-entity-data"]["space-locomotive"].order = "a"
  data.raw["item-with-entity-data"]["space-cargo-wagon"].subgroup = "trains-space"
  data.raw["item-with-entity-data"]["space-cargo-wagon"].order = "b"
  data.raw["item-with-entity-data"]["space-fluid-wagon"].subgroup = "trains-space"
  data.raw["item-with-entity-data"]["space-fluid-wagon"].order = "c"
end

data.raw["item-with-entity-data"]["locomotive"].subgroup = "trains-locomotive"
data.raw["item-with-entity-data"]["locomotive"].order = "a"
data.raw["item-with-entity-data"]["cargo-wagon"].subgroup = "trains-wagons"
data.raw["item-with-entity-data"]["cargo-wagon"].order = "a"
data.raw["item-with-entity-data"]["fluid-wagon"].subgroup = "trains-liquids"
data.raw["item-with-entity-data"]["fluid-wagon"].order = "a"
data.raw["item-with-entity-data"]["artillery-wagon"].subgroup = "trains-vanilla"
data.raw["item-with-entity-data"]["artillery-wagon"].order = "a"
if data.raw["item-with-entity-data"]["insulated-wagon"] then
  data.raw["item-with-entity-data"]["insulated-wagon"].subgroup = "trains-vanilla"
  data.raw["item-with-entity-data"]["insulated-wagon"].order = "aa"
end

data.raw.recipe["locomotive"].subgroup = "trains-locomotive"
data.raw.recipe["locomotive"].order = "a"
data.raw.recipe["cargo-wagon"].subgroup = "trains-wagons"
data.raw.recipe["cargo-wagon"].order = "a"
data.raw.recipe["fluid-wagon"].subgroup = "trains-liquids"
data.raw.recipe["fluid-wagon"].order = "a"