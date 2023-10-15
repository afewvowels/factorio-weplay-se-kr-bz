function check_spider_colors(colors)
  if colors.r == 1 and colors.g == 0.5 and colors.b == 0 and colors.a == 0.5 then
    return true
  end
  return false
end

local spidertronColors = {
  {
    name = "prototype_spidertron",
    color = {25/255, 255/255, 25/255, 0.5}
  },
  {
    name = "scout_spidertron_mk1",
    color = {255/255, 136/255, 179/255, 0.5}
  },
  {
    name = "scout_spidertron_mk2",
    color = {255/255, 35/255, 125/255, 0.5}
  },
  {
    name = "assault_spidertron_mk1",
    color = {200/255, 54/255, 0/255, 0.5}
  },
  {
    name = "assault_spidertron_mk2",
    color = {106/255, 154/255, 34/255, 0.5}
  },
  {
    name = "bulwark_spidertron_mk1",
    color = {239/255, 99/255, 0/255, 0.5}
  },
  {
    name = "bulwark_spidertron_mk2",
    color = {160/255, 160/255, 160/255, 0.5}
  },
  {
    name = "voyage_spidertron_mk1",
    color = {160/255, 25/255, 25/255, 0.5}
  },
  {
    name = "voyage_spidertron_mk2",
    color = {245/255, 140/255, 13/255, 0.5}
  },
  {
    name = "spidertron_mkn1",
    color = {255/255, 128/255, 0/255, 0.5}
  },
  {
    name = "spidertron_mk0",
    color = {188/255, 188/255, 188/255, 0.5}
  },
  {
    name = "spidertron_mk2",
    color = {2/255, 2/255, 2/255, 0.5}
  },
  {
    name = "spidertron_mk3",
    color = {242/255, 242/255, 242/255, 0.5}
  },
}

local function is_tiers_spidertron(name)
  -- if name == "prototype_spidertron" then return true end
  for index, spidertron in pairs(spidertronColors) do
    if name == spidertron.name then
      return true
    end
  end
  return false
end

local function get_spider_colors(name)
  for index, spidertron in pairs(spidertronColors) do
    if name == spidertron.name then
      return spidertron.color
    end
  end
  return nil
end
-- script to modify the spidertronmk2 and spidertronmk3 color on placement
script.on_event(defines.events.on_built_entity,
function(event)
  if event.created_entity.type == "spider-vehicle" then
    local spidertron = event.created_entity
    local color = get_spider_colors(spidertron.name)
    if color ~= nil then
      spidertron.color = color
    end
  end
end)