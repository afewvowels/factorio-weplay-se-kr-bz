table.insert(data.raw.technology["advanced-material-processing-2"].effects, { type = "unlock-recipe", recipe = "5d-masher-01" })
table.insert(data.raw.technology["fluid-handling"].effects, { type = "unlock-recipe", recipe = "5d-water-pumpjack-01" })


for index = 2, 10 do
  local name = "5d-lab-0" .. index
  if index == 10 then
    name = "5d-lab-10"
  end
  data.raw["lab"][name].inputs = data.raw["lab"]["lab"].inputs
end
