-- Make each tier of ultimate belts dependant on Space Exploration Material Science packs since I've tweaked the mod parameters to use Ultimate Belts as tiers between Space Transport belts and Deep Space Transport Belts. I'll add those changes here if the mod gets updated and I lose the changes made in the mod .rar archive.

data.raw["technology"]["ultra-fast-logistics"].prerequisites = {"logistics-3"}
data.raw.technology["ub-ultra-fast-miniloader"].unit.ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"chemical-science-pack", 1},
  {"se-rocket-science-pack", 1}
}
-- table.insert(modifyPrerequisites, "space-science-pack")
-- table.remove(modifyPrerequisites, "logistics-3")

local modifyPrerequisites = data.raw["technology"]["extreme-fast-logistics"].prerequisites
table.insert(modifyPrerequisites, "se-material-science-pack-1")

modifyPrerequisites = data.raw["technology"]["ultra-express-logistics"].prerequisites
table.insert(modifyPrerequisites, "se-material-science-pack-2")

modifyPrerequisites = data.raw["technology"]["extreme-express-logistics"].prerequisites
table.insert(modifyPrerequisites, "se-material-science-pack-3")

modifyPrerequisites = data.raw["technology"]["ultimate-logistics"].prerequisites
table.insert(modifyPrerequisites, "se-material-science-pack-4")

local collision_floor = {
    --"item-layer", -- stops player from dropping items on belts.
    "floor-layer",
    "object-layer",
    "water-tile",
    "transport-belt-layer"
  }

data.raw["transport-belt"]["ultra-fast-belt"].se_allow_in_space = true
data.raw["transport-belt"]["ultra-fast-belt"].collision_mask = collision_floor
data.raw["transport-belt"]["ultra-fast-belt"].related_underground_belt = "ultra-fast-underground-belt"
data.raw["transport-belt"]["extreme-fast-belt"].se_allow_in_space = true
data.raw["transport-belt"]["extreme-fast-belt"].collision_mask = collision_floor
data.raw["transport-belt"]["extreme-fast-belt"].related_underground_belt = "extreme-fast-underground-belt"
data.raw["transport-belt"]["ultra-express-belt"].se_allow_in_space = true
data.raw["transport-belt"]["ultra-express-belt"].collision_mask = collision_floor
data.raw["transport-belt"]["ultra-express-belt"].related_underground_belt = "ultra-express-underground-belt"
data.raw["transport-belt"]["extreme-express-belt"].se_allow_in_space = true
data.raw["transport-belt"]["extreme-express-belt"].collision_mask = collision_floor
data.raw["transport-belt"]["extreme-express-belt"].related_underground_belt = "extreme-express-underground-belt"
data.raw["transport-belt"]["ultimate-belt"].se_allow_in_space = true
data.raw["transport-belt"]["ultimate-belt"].collision_mask = collision_floor
data.raw["transport-belt"]["ultimate-belt"].related_underground_belt = "original-ultimate-underground-belt"

data.raw["underground-belt"]["ultra-fast-underground-belt"].se_allow_in_space = true
data.raw["underground-belt"]["ultra-fast-underground-belt"].collision_mask = collision_floor
data.raw["underground-belt"]["extreme-fast-underground-belt"].se_allow_in_space = true
data.raw["underground-belt"]["extreme-fast-underground-belt"].collision_mask = collision_floor
data.raw["underground-belt"]["ultra-express-underground-belt"].se_allow_in_space = true
data.raw["underground-belt"]["ultra-express-underground-belt"].collision_mask = collision_floor
data.raw["underground-belt"]["extreme-express-underground-belt"].se_allow_in_space = true
data.raw["underground-belt"]["extreme-express-underground-belt"].collision_mask = collision_floor
data.raw["underground-belt"]["original-ultimate-underground-belt"].se_allow_in_space = true
data.raw["underground-belt"]["original-ultimate-underground-belt"].collision_mask = collision_floor

data.raw["splitter"]["ultra-fast-splitter"].se_allow_in_space = true
data.raw["splitter"]["ultra-fast-splitter"].collision_mask = collision_floor
data.raw["splitter"]["extreme-fast-splitter"].se_allow_in_space = true
data.raw["splitter"]["extreme-fast-splitter"].collision_mask = collision_floor
data.raw["splitter"]["ultra-express-splitter"].se_allow_in_space = true
data.raw["splitter"]["ultra-express-splitter"].collision_mask = collision_floor
data.raw["splitter"]["extreme-express-splitter"].se_allow_in_space = true
data.raw["splitter"]["extreme-express-splitter"].collision_mask = collision_floor
data.raw["splitter"]["original-ultimate-splitter"].se_allow_in_space = true
data.raw["splitter"]["original-ultimate-splitter"].collision_mask = collision_floor

collision_floor = {"floor-layer", "item-layer", "object-layer", "water-tile", "transport-belt-layer"}

data.raw["inserter"]["ub-ultra-fast-miniloader-inserter"].se_allow_in_space = true
data.raw["inserter"]["ub-ultra-fast-miniloader-inserter"].collision_mask = collision_floor
data.raw["inserter"]["ub-extreme-fast-miniloader-inserter"].se_allow_in_space = true
data.raw["inserter"]["ub-extreme-fast-miniloader-inserter"].collision_mask = collision_floor
data.raw["inserter"]["ub-ultra-express-miniloader-inserter"].se_allow_in_space = true
data.raw["inserter"]["ub-ultra-express-miniloader-inserter"].collision_mask = collision_floor
data.raw["inserter"]["ub-extreme-express-miniloader-inserter"].se_allow_in_space = true
data.raw["inserter"]["ub-extreme-express-miniloader-inserter"].collision_mask = collision_floor
data.raw["inserter"]["ub-ultimate-miniloader-inserter"].se_allow_in_space = true
data.raw["inserter"]["ub-ultimate-miniloader-inserter"].collision_mask = collision_floor

data.raw["inserter"]["ub-ultra-fast-filter-miniloader-inserter"].se_allow_in_space = true
data.raw["inserter"]["ub-ultra-fast-filter-miniloader-inserter"].collision_mask = collision_floor
data.raw["inserter"]["ub-extreme-fast-filter-miniloader-inserter"].se_allow_in_space = true
data.raw["inserter"]["ub-extreme-fast-filter-miniloader-inserter"].collision_mask = collision_floor
data.raw["inserter"]["ub-ultra-express-filter-miniloader-inserter"].se_allow_in_space = true
data.raw["inserter"]["ub-ultra-express-filter-miniloader-inserter"].collision_mask = collision_floor
data.raw["inserter"]["ub-extreme-express-filter-miniloader-inserter"].se_allow_in_space = true
data.raw["inserter"]["ub-extreme-express-filter-miniloader-inserter"].collision_mask = collision_floor
data.raw["inserter"]["ub-ultimate-filter-miniloader-inserter"].se_allow_in_space = true
data.raw["inserter"]["ub-ultimate-filter-miniloader-inserter"].collision_mask = collision_floor

data.raw["loader-1x1"]["ub-ultra-fast-miniloader-loader"].se_allow_in_space = true
data.raw["loader-1x1"]["ub-ultra-fast-miniloader-loader"].collision_mask = collision_floor
data.raw["loader-1x1"]["ub-extreme-fast-miniloader-loader"].se_allow_in_space = true
data.raw["loader-1x1"]["ub-extreme-fast-miniloader-loader"].collision_mask = collision_floor
data.raw["loader-1x1"]["ub-ultra-express-miniloader-loader"].se_allow_in_space = true
data.raw["loader-1x1"]["ub-ultra-express-miniloader-loader"].collision_mask = collision_floor
data.raw["loader-1x1"]["ub-extreme-express-miniloader-loader"].se_allow_in_space = true
data.raw["loader-1x1"]["ub-extreme-express-miniloader-loader"].collision_mask = collision_floor
data.raw["loader-1x1"]["ub-ultimate-miniloader-loader"].se_allow_in_space = true
data.raw["loader-1x1"]["ub-ultimate-miniloader-loader"].collision_mask = collision_floor

data.raw["loader-1x1"]["ub-ultra-fast-filter-miniloader-loader"].se_allow_in_space = true
data.raw["loader-1x1"]["ub-ultra-fast-filter-miniloader-loader"].collision_mask = collision_floor
data.raw["loader-1x1"]["ub-extreme-fast-filter-miniloader-loader"].se_allow_in_space = true
data.raw["loader-1x1"]["ub-extreme-fast-filter-miniloader-loader"].collision_mask = collision_floor
data.raw["loader-1x1"]["ub-ultra-express-filter-miniloader-loader"].se_allow_in_space = true
data.raw["loader-1x1"]["ub-ultra-express-filter-miniloader-loader"].collision_mask = collision_floor
data.raw["loader-1x1"]["ub-extreme-express-filter-miniloader-loader"].se_allow_in_space = true
data.raw["loader-1x1"]["ub-extreme-express-filter-miniloader-loader"].collision_mask = collision_floor
data.raw["loader-1x1"]["ub-ultimate-filter-miniloader-loader"].se_allow_in_space = true
data.raw["loader-1x1"]["ub-ultimate-filter-miniloader-loader"].collision_mask = collision_floor