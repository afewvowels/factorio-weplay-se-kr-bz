-- Modify Angel's Storage Containers to use 5dim logistic item groups instead of vanilla logistic item groups.

-- data.raw["item-subgroup"]["angels-silo"].group = "logistic"
-- data.raw["item-subgroup"]["angels-ore-silo"].group = "logistic"
-- data.raw["item-subgroup"]["angels-warehouse"].group = "logistic"
-- if not data.raw["item-subgroup"]["angels-fluid-tanks"] then
--   data:extend({
--     {
--       type = "item-subgroup",
--       name = "angels-fluid-tanks",
--       group = "liquid",
--       order = "zf",
--     },
--   })
-- else
--   data.raw["item-subgroup"]["angels-fluid-tanks"].group = "liquid"
-- end

-- Upsize Angel's silo inventory sizes
local siloNames = {"silo", "ore1", "ore2", "ore3", "ore4", "ore5", "ore6", "coal"}

for _, name in pairs(siloNames) do
  local siloName = "silo-" .. name
  if name == "silo" then
    siloName = "silo"
  end
  if data.raw.container[siloName] ~= nil then
    data.raw.container[siloName].inventory_size = 1024
  end
end

siloNames = {"active-provider", "passive-provider", "storage", "buffer", "requester"}

for _, name in pairs(siloNames) do
  local siloName = "silo-" .. name
  if name == "silo" then
    siloName = "silo"
  end
  if data.raw["logistic-container"][siloName] ~= nil then
    data.raw["logistic-container"][siloName].inventory_size = 1024
  end
end

-- Had to modify stack values for logistics variants in the mod rar archive itself
local angelsWarehouseNames = {"active-provider", "passive-provider", "storage", "buffer", "requester"}

data.raw.container["angels-warehouse"].inventory_size = 2048

for _, name in pairs(angelsWarehouseNames) do
  local warehouseName = "angels-warehouse-" .. name
  if data.raw["logistic-container"][warehouseName] ~= nil then
    data.raw["logistic-container"][warehouseName].inventory_size = 2048
  end
end