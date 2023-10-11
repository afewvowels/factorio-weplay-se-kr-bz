-- SE + KR2 Tech pack names:
-- nil => basic-tech-card


local techToClear = {}

local function insert(name, startIndex, endIndex)
  table.insert(techToClear, {name, startIndex, endIndex})
end

local function clearTech(name, startIndex, endIndex)
  for index = startIndex, endIndex do
    local techName = name .. "-" .. index
    data.raw.technology[techName] = nil
  end
end

if mods["5dim_automation"] then
  insert("automation", 4, 10)
  insert("5d-chemical-plant", 1, 9)
  insert("5d-lab", 1, 9)
  insert("5d-oil-refinery", 1, 9)
end

if mods["5dim_battlefield"] then
  insert("5d-flamethrower-turrets", 1, 9)
  insert("gun-turret", 2, 10)
  insert("5d-gun-turret-big", 1, 10)
  insert("5d-gun-turret-small", 1, 10)
  insert("5d-gun-turret-sniper", 1, 10)
  insert("laser-turret", 2, 10)
  insert("5d-laser-turret-big", 1, 10)
  insert("5d-laser-turret-small", 1, 10)
  insert("5d-laser-turret-sniper", 1, 10)
  insert("5d-tesla-turrets", 1, 10)
  insert("gate", 2, 10)
  insert("stone-wall", 2, 10)
  insert("5d-radars", 1,9)
end

if mods["5dim_energy"] then
  insert("electric-energy-accumulators", 2, 10)
  insert("solar-energy", 2, 10)

  insert("5d-medium-electric-pole", 1, 9)
  insert("5d-big-electric-pole", 1, 9)
  insert("5d-substation", 1, 9)
  insert("optics", 2, 10) -- Lamps

  insert("5d-boiler", 1, 9)
  insert("5d-steam-engine", 1, 9)
end

-- Single tech upgrade for Nightvision Mk2 equipment. May be necessary to remove this technology at a later point in time but is not included here for now.
if mods["5dim_equipment"] then
  insert("5d-battery-equipment", 1, 8)
  insert("5d-energy-shield-equipment", 1, 8)
  insert("exoskeleton-equipment", 2, 10)
  insert("fusion-reactor-equipment", 2, 10)
  insert("personal-laser-defense-equipment", 2, 10)
  insert("5d-personal-roboport-equipment", 1, 8)
  insert("5d-personal-tesla-defense-equipment", 1, 10)
  insert("5d-power-armor", 1, 8)
  insert("solar-panel-equipment", 2, 10)
end

if mods["5dim_logistic"] then
  insert("5d-construction-robot", 1, 9)
  insert("5d-logistic-robot", 1, 9)
  insert("5d-roboport", 1, 9)
end

if mods["5dim_mining"] then
  insert("5d-mining", 1, 9)
  insert("5d-offshore-pump", 1, 9)
  insert("5d-pumpjack", 1, 9)
  insert("5d-water-pumpjack", 1, 10)
end

if mods["5dim_nuclear"] then
  -- Atomic Overhaul seems to reference this centrifuge technology so disabling it fully this way causes Vulcanite Processing tech to not unlock. Doesn't throw a "missing prerequisite" error???
  -- insert("5d-centrifuge", 1, 9)
  insert("5d-centrifuge", 1, 9)
  insert("5d-heat-exchanger", 1, 9)
  insert("5d-heat-pipe", 1, 9)
  insert("5d-nuclear-reactor", 1, 9)
  insert("5d-steam-turbine", 1, 9)
end

if mods["5dim_resources"] then
  -- 3 through 11 handle electric furnaces, 12 handles new 5Dim Industrial Furnace
  insert("advanced-material-processing", 3, 12)
  insert("5d-masher", 1, 10)
end

if mods["5dim_storage"] then
  insert("5d-storage-tank-multi", 1, 10)
  insert("fluid-handling", 2, 10)
end

if mods["5dim_trains"] then
  insert("5d-cargo-wagon", 2, 10)
  insert("fluid-wagon", 2, 10)
  insert("5d-locomotive", 2, 10)
end

if mods["5dim_transport"] then
  insert("5d-pump", 2, 10)
  -- insert("stack-inserter", 2, 10)
  -- insert("logistics", 4, 10)
end

for _, tech in pairs(techToClear) do
  clearTech(tech[1], tech[2], tech[3])
end