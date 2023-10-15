table.insert(data.raw.technology["gun-turret"].effects, { type = "unlock-recipe", recipe = "5d-gun-turret-big-01" })
table.insert(data.raw.technology["gun-turret"].effects, { type = "unlock-recipe", recipe = "5d-gun-turret-small-01" })
table.insert(data.raw.technology["gun-turret"].effects, { type = "unlock-recipe", recipe = "5d-gun-turret-sniper-01" })

table.insert(data.raw.technology["laser-turret"].effects, { type = "unlock-recipe", recipe = "5d-laser-turret-big-01" })
table.insert(data.raw.technology["laser-turret"].effects, { type = "unlock-recipe", recipe = "5d-laser-turret-small-01" })
table.insert(data.raw.technology["laser-turret"].effects, { type = "unlock-recipe", recipe = "5d-laser-turret-sniper-01" })
table.insert(data.raw.technology["laser-turret"].effects, { type = "unlock-recipe", recipe = "5d-tesla-turret-01" })

-- Update new Flamethrower turrets to accept pyroflux as a fuel/ammo type
for index = 2, 10 do
  local name = "5d-flamethrower-turret-0" .. index
  if index == 10 then
    name = "5d-flamethrower-turret-10"
  end
  table.insert(data.raw["fluid-turret"][name].attack_parameters.fluids, {type = "se-pyroflux", damage_modifier = 1.2})
end