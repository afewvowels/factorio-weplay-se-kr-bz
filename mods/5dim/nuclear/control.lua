-- if not data.raw.technology["se-centrifuge"] then
--   data:extend({
--     {
--       type = "technology",
--       name = data_util.mod_prefix .. "centrifuge",
--       icon_size = 256, icon_mipmaps = 1,
--       icon = "__space-exploration-graphics__/graphics/technology/centrifuge.png",
--       effects =
--       {
--         {
--           type = "unlock-recipe",
--           recipe = "centrifuge"
--         },
--       },
--       prerequisites = {"advanced-electronics-2"},
--       unit =
--       {
--         ingredients =
--         {
--           {"automation-science-pack", 1},
--           {"logistic-science-pack", 1},
--           {"chemical-science-pack", 1},
--           {data_util.mod_prefix .. "rocket-science-pack", 1}
--         },
--         time = 30,
--         count = 200
--       },
--       order = "e-p-b-c"
--     }
--   })
-- end

-- Atomic Energy hides this tech which keeps Vulcanite Processing technology from being researched
data.raw.technology["se-centrifuge"].hidden = false
data.raw.recipe["centrifuge"].ingredients = {
  {"se-heat-shielding", 10},
  {"advanced-circuit", 3},
  {"stone-brick", 10},
  {"steel-plate", 10}
}

-- Align heat exchangers and steam turbine output/input values

local energy_consumption = 50
local specific_heat = 5.0

for index = 2, 10, 1 do
  local number = "0" .. index
  if index == 10 then
    number = "10"
  end
  local dimName = "5d-heat-exchanger-" .. number
  data.raw["boiler"][dimName].energy_consumption = energy_consumption .. "MW"
  data.raw["boiler"][dimName].energy_source.specific_heat = specific_heat .. "MJ"
  energy_consumption = energy_consumption + 10
  specific_heat = specific_heat - 0.3
end

local fluid_usage_per_tick = 5
local effectivity = 1.0

for index = 2, 10, 1 do
  local number = "0" .. index
  if index == 10 then
    number = "10"
  end
  local dimName = "5d-steam-turbine-" .. number
  data.raw["generator"][dimName].fluid_usage_per_tick = fluid_usage_per_tick / 6
  data.raw["generator"][dimName].effectivity = effectivity
  fluid_usage_per_tick = fluid_usage_per_tick + 1
  effectivity = effectivity + 0.1
end

for index = 2, 10 do
  local name = "5d-nuclear-reactor-0" .. index
  if index == 10 then
    name = "5d-nuclear-reactor-10"
  end
  data.raw["reactor"][name].collision_mask = data.raw["reactor"]["nuclear-reactor"].collision_mask
  data.raw["reactor"][name].consumption = 250 + (50 * index) .. "MW"
  data.raw["reactor"][name].neighbor_bonus = math.floor(1 + (index / 2))
end
-- data.raw["reactor"]["5d-nuclear-reactor-02"].collision_mask = data.raw["reactor"]["nuclear-reactor"].collision_mask

-- local collision_floor = {
--   --"item-layer", -- stops player from dropping items on belts.
--   "floor-layer",
--   "object-layer",
--   "water-tile",
--   "transport-belt-layer"
-- }

-- data.raw["reactor"]["nuclear-reactor"].collision_mask = collision_floor
-- data.raw["reactor"]["5d-nuclear-reactor-02"].collision_mask = collision_floor