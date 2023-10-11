local function setStackSize(size, min, max)
  if size <= min then
    size = min
  else
    size = max
  end

  return size
end

local function universalStackSize()
  local stackSize = settings["startup"]["universalStackSize"].value

  -- Standardize Item Stack Sizes
  for _, item in pairs(data.raw.item) do
    if item.name == "factory-connection-indicator-settings" then
        goto continue
    end
    if item.name == "factory-overlay-controller-settings" then
        goto continue
    end
    item.stack_size = stackSize
    ::continue::
  end

  for _, moduleItem in pairs(data.raw["module"]) do
    moduleItem.stack_size = stackSize
    moduleItem.limitation = nil
    ::continue::
  end

  for _, capsuleItem in pairs(data.raw["capsule"]) do
    capsuleItem.stack_size = stackSize
    ::continue::
  end

  for _, ammoItem in pairs(data.raw.ammo) do
    ammoItem.stack_size = stackSize
    ::continue::
  end

  for _, gunItem in pairs(data.raw["gun"]) do
    gunItem.stack_size = stackSize
    ::continue::
  end


  for _, item in pairs(data.raw["item-with-entity-data"]) do
    if string.match(item.name, "locomotive") then
        item.stack_size = stackSize
        goto continue
    end
    if string.match(item.name, "wagon") then
        item.stack_size = stackSize
        goto continue
    end
    if string.match(item.name, "trainengine") then
        item.stack_size = stackSize
        goto continue
    end
    if string.match(item.name, "spider") then
        item.stack_size = stackSize
        goto continue
    end
    item.stack_size = stackSize
    ::continue::
  end

  -- Sanity check for rocket fuel stack size for SE
  if mods["space-exploration"] then
    data.raw.item["rocket-fuel"].stack_size = 10
  end
end

local function minMaxStackSize()
  local minValue = settings["startup"]["minStackSize"].value
  local maxValue = settings["startup"]["maxStackSize"].value

  if minValue > maxValue then
    minValue = settings["startup"]["minStackSize"].default_value
    maxValue = settings["startup"]["maxStackSize"].default_value
  end

  -- Standardize Item Stack Sizes
  for _, item in pairs(data.raw.item) do
    if item.name == "factory-connection-indicator-settings" then
        goto continue
    end
    if item.name == "factory-overlay-controller-settings" then
        goto continue
    end

    item.stack_size = setStackSize(item.stack_size, minValue, maxValue)
    ::continue::
  end

  for _, moduleItem in pairs(data.raw["module"]) do
    moduleItem.stack_size = setStackSize(moduleItem.stack_size, minValue, maxValue)
    moduleItem.limitation = nil
    ::continue::
  end

  for _, capsuleItem in pairs(data.raw["capsule"]) do
    capsuleItem.stack_size = setStackSize(capsuleItem.stack_size, minValue, maxValue)
    ::continue::
  end

  for _, ammoItem in pairs(data.raw.ammo) do
    ammoItem.stack_size = setStackSize(ammoItem.stack_size, minValue, maxValue)
    ::continue::
  end

  for _, gunItem in pairs(data.raw["gun"]) do
    gunItem.stack_size = setStackSize(gunItem.stack_size, minValue, maxValue)
    ::continue::
  end


  for _, item in pairs(data.raw["item-with-entity-data"]) do
    if string.match(item.name, "locomotive") then
      item.stack_size = setStackSize(item.stack_size, minValue, maxValue)
      goto continue
    end
    if string.match(item.name, "wagon") then
      item.stack_size = setStackSize(item.stack_size, minValue, maxValue)
      goto continue
    end
    if string.match(item.name, "trainengine") then
      item.stack_size = setStackSize(item.stack_size, minValue, maxValue)
      goto continue
    end
    if string.match(item.name, "spider") then
      item.stack_size = setStackSize(item.stack_size, minValue, maxValue)
      goto continue
    end
    item.stack_size = setStackSize(item.stack_size, minValue, maxValue)
    ::continue::
  end

  -- Sanity check for rocket fuel stack size for SE
  if mods["space-exploration"] then
    data.raw.item["rocket-fuel"].stack_size = 10
  end
end

-- Modify combinators and such to not use power
data.raw["arithmetic-combinator"]["arithmetic-combinator"].energy_source.type = "void"
data.raw["decider-combinator"]["decider-combinator"].energy_source.type = "void"

if mods["nixie-tubes"] then
  data.raw["lamp"]["nixie-tube"].energy_source.type = "void"
  data.raw["lamp"]["nixie-tube-alpha"].energy_source.type = "void"
  data.raw["lamp"]["nixie-tube-small"].energy_source.type = "void"
end

-- Done in control.lua on player join map
-- Increase character reach distance to full screen
-- data.raw.character["character"].build_distance = 125
-- data.raw.character["character"].reach_distance = 125

data.raw["assembling-machine"]["assembling-machine-1"].module_specification= { module_slots = 3 }
data.raw["assembling-machine"]["assembling-machine-1"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}


-- Tweak collision masks on rails and signals for much tighter placement
data.raw["curved-rail"]["curved-rail"].collision_mask = {"floor-layer", "water-tile", "rail-layer"}
data.raw["straight-rail"]["straight-rail"].collision_mask = {"floor-layer", "water-tile", "rail-layer"}
data.raw["rail-signal"]["rail-signal"].collision_mask = {"object-layer"}
data.raw["rail-chain-signal"]["rail-chain-signal"].collision_mask = {"object-layer"}


if mods["space-exploration"] then
  data.raw["rail-signal"]["se-space-elevator-rail-signal"].collision_mask = {"object-layer"}
  data.raw["curved-rail"]["se-space-curved-rail"].collision_mask = {"floor-layer", "water-tile", "rail-layer"}
  data.raw["straight-rail"]["se-space-straight-rail"].collision_mask = {"floor-layer", "water-tile", "rail-layer"}
  -- data.raw["straight-rail"]["se-space-straight-rail"].collision_mask = {"object-layer"}
  -- data.raw["straight-rail"]["se-spaceship-clamp-place"].collision_mask = {"object-layer"}
  -- data.raw["curved-rail"]["se-space-curved-rail"].collision_mask = {"object-layer"}
end

-- Technology for quicker start. Bot speed upgrade, hand crafting speed, base inverntory slot bonus, etc., etc.
data:extend({
  {
    type = "technology",
    name = "weplay-starting-tech-enhancements",
    icon_size = 256,
    icon = "__base__/graphics/technology/worker-robots-speed.png",
    effects = {
			{
				type = "worker-robot-speed",
				modifier = "2"
			},
      {
        type = "worker-robot-storage",
        modifier = "2"
      },
      {
        type= "worker-robot-battery",
        modifier = "1.0"
      },
      {
        type= "character-crafting-speed",
        modifier = "1.5"
      },
      {
        type = "character-inventory-slots-bonus",
        modifier = 40
      },
      {
        type = "inserter-stack-size-bonus",
        modifier = 1
      },
      {
        type = "stack-inserter-capacity-bonus",
        modifier = 3
      }
    },
    unit = {
      count = 25,
      ingredients = {
        {"automation-science-pack", 1}
      },
      time = 60,
    },
    order = "a"
  }
})

if settings["startup"]["standardizeStackSize"].value == true then
  if settings["startup"]["singleStackSize"].value == true then
    universalStackSize()
  else
    minMaxStackSize()
  end
end