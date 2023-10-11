
for index = 2, 9 do
  local name = "5d-electric-mining-drill-0" .. index
  if index == 10 then
    name = "5d-electic-mining-drill-10"
  end
  data.raw["mining-drill"][name].fast_replaceable_group = "mining-drill"
end

data.raw["mining-drill"]["electric-mining-drill"].fast_replaceable_group = "mining-drill"
data.raw["mining-drill"]["electric-mining-drill"].next_upgrade = "5d-electric-mining-drill-02"

for index = 2, 10 do
  local name = "5d-pumpjack-0" .. index
  if index == 10 then
    name = "5d-pumpjack-10"
  end
  data.raw["mining-drill"][name].resource_categories = { "oil" }
  data.raw["mining-drill"][name].mining_speed = 1.5 + (index * 0.5)
end

-- Krastorio switches all "Furnace" type entities to be "Assembling machines" and Space Exploration categorizes the Coke recipe from K2 to "kiln" so this has been quite the journey to figure out this code and it will completely not work if any of the above mods are removed. Also BZFoundry kind of does stuff here too.
if mods["Krastorio2"] then
  for index = 2, 10 do
    local name = "5d-electric-furnace-0" .. index
    if index == 10 then
      name = "5d-electric-furnace-10"
    end

    table.insert(data.raw["assembling-machine"][name].crafting_categories,"smelting")
    table.insert(data.raw["assembling-machine"][name].crafting_categories,"smelting-crafting")
    table.insert(data.raw["assembling-machine"][name].crafting_categories,"kiln")
  end
end