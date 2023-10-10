function doubleEquipmentGridSize(name)
  local equipment_grid = data.raw["equipment-grid"][name]
  equipment_grid.width = equipment_grid.width * 2
  equipment_grid.height = equipment_grid.height * 2
  equipment_grid.equipment_categories = {"universal-equipment", "armor"}

  if equipment_grid.width > equipment_grid.height then
    local temp = equipment_grid.width
    equipment_grid.width = equipment_grid.height
    equipment_grid.height = temp
  end

  if equipment_grid.width < 8 then
    equipment_grid.width = 8
  end
  if equipment_grid.height < 8 then
    equipment_grid.height = 12
  end

  data:extend{
    equipment_grid
  }
end

function doubleTrashSize(name)
  local tempTrashSize = data.raw["spider-vehicle"][name].trash_inventory_size
  tempTrashSize = tempTrashSize * 2
  if tempTrashSize < 20 then
    tempTrashSize = 20
  end
  data.raw["spider-vehicle"][name].trash_inventory_size = tempTrashSize
end

function doubleInventorySize(name)
  local tempInventorySize = data.raw["spider-vehicle"][name].inventory_size
  tempInventorySize = tempInventorySize * 2
  if tempInventorySize < 80 then
    tempInventorySize = 80
  end
  data.raw["spider-vehicle"][name].inventory_size = tempInventorySize
end

local spiders = {
  "spidertron",
  "ss-space-spidertron",
  "spidertronmk2",
  "spidertronmk3",
  "immolator",
  "spidertron-builder",
  "prototype_spidertron",
  "assault_spidertron_mk1",
  "assault_spidertron_mk2",
  "bulwark_spidertron_mk1",
  "bulwark_spidertron_mk2",
  "scout_spidertron_mk1",
  "scout_spidertron_mk2",
  "spidertron_mk0",
  "spidertron_mk2",
  "spidertron_mk3",
  "spidertron_mkn1",
  "voyage_spidertron_mk1",
  "voyage_spidertron_mk2"

}

local spiderEquipmentGridNames = {
  "spidertron-equipment-grid",
  "kr-spidertron-equipment-grid",
  "spidertronmk2-grid",
  "spidertronmk3-grid",
  "spidertron-builder-grid",
  "immolator-grid",
  "prototype-spidertron-equipment-grid",
  "assault-spidertron-mk1-equipment-grid",
  "assault-spidertron-mk2-equipment-grid",
  "bulwark-spidertron-mk1-equipment-grid",
  "bulwark-spidertron-mk2-equipment-grid",
  "scout-spidertron-mk1-equipment-grid",
  "scout-spidertron-mk2-equipment-grid",
  "spidertron-mk0-equipment-grid",
  "spidertron-mk2-equipment-grid",
  "spidertron-mk3-equipment-grid",
  "spidertron-mk-1-equipment-grid",
  "voyage-spidertron-mk1-equipment-grid",
  "voyage-spidertron-mk2-equipment-grid"

}

for _, spider in ipairs(spiders) do
  doubleTrashSize(spider)
  doubleInventorySize(spider)
end

for _, grid in ipairs(spiderEquipmentGridNames) do
  doubleEquipmentGridSize(grid)
end