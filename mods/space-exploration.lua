-- See control.lua line 659 to update spidertron substation list with 5dim variants
-- Changes to Thruster Suit invetory bonus and equipment grid sizes
data:extend({
    {
        type = "equipment-grid",
        name = "thruster-suit-01-armor-grid",
        width = 16,
        height = 16,
        equipment_categories = {
            "armor",
            "universal-equipment",
            "robot-interaction-equipment",
            "armor-jetpack"
        }
    },
    {
        type = "equipment-grid",
        name = "thruster-suit-02-armor-grid",
        width = 16,
        height = 20,
        equipment_categories = {
            "armor",
            "universal-equipment",
            "robot-interaction-equipment",
            "armor-jetpack"
        }
    },
    {
        type = "equipment-grid",
        name = "thruster-suit-03-armor-grid",
        width = 20,
        height = 24,
        equipment_categories = {
            "armor",
            "universal-equipment",
            "robot-interaction-equipment",
            "armor-jetpack"
        }
    },
    {
        type = "equipment-grid",
        name = "thruster-suit-04-armor-grid",
        width = 24,
        height = 30,
        equipment_categories = {
            "armor",
            "universal-equipment",
            "robot-interaction-equipment",
            "armor-jetpack"
        }
    }
})

data.raw.armor["se-thruster-suit"].equipment_grid = "thruster-suit-01-armor-grid"
data.raw.armor["se-thruster-suit"].inventory_size_bonus = 250

data.raw.armor["se-thruster-suit-2"].equipment_grid = "thruster-suit-02-armor-grid"
data.raw.armor["se-thruster-suit-2"].inventory_size_bonus = 300

data.raw.armor["se-thruster-suit-3"].equipment_grid = "thruster-suit-03-armor-grid"
data.raw.armor["se-thruster-suit-3"].inventory_size_bonus = 350

data.raw.armor["se-thruster-suit-4"].equipment_grid = "thruster-suit-04-armor-grid"
data.raw.armor["se-thruster-suit-4"].inventory_size_bonus = 400


-- Space assembling machine list to add productivity modules specification to

local machines = {
  "se-space-assembling-machine",
  "se-space-decontamination-facility",
  "se-lifesupport-facility",
  "se-space-manufactory",
  "se-space-electromagnetics-laboratory",
  "se-space-biochemical-laboratory",
  "se-space-astrometrics-laboratory",
  "se-space-genetics-laboratory",
  "se-space-gravimetrics-laboratory",
  "se-space-growth-facility",
  "se-space-hypercooler",
  "se-space-laser-laboratory",
  "se-space-manufactory",
  "se-space-material-fabricator",
  "se-space-mechanical-laboratory",
  "se-space-particle-accelerator",
  "se-space-particle-collider",
  "se-space-plasma-generator",
  "se-space-radiation-laboratory",
  "se-space-radiator",
  "se-space-radiator-2",
  "se-recycling-facility",
  "se-space-supercomputer-1",
  "se-space-supercomputer-2",
  "se-space-supercomputer-3",
  "se-space-supercomputer-4",
  "se-space-telescope",
  "se-space-telescope-xray",
  "se-space-telescope-gammaray",
  "se-space-telescope-microwave",
  "se-space-telescope-radio",
  "se-space-thermodynamics-laboratory",
}

for index, name in pairs(machines) do
  data.raw["assembling-machine"][name].allowed_effects = {
    "consumption",
    "speed",
    "productivity",
    "pollution"
  }
end

data.raw["lab"]["se-space-science-lab"].allowed_effects = {
  "consumption",
  "speed",
  "productivity",
  "pollution"
}

-- Allow productivity in space assembling machines
-- data.raw["assembling-machine"]["se-space-assembling-machine"].allowed_effects = {
--     "consumption",
--     "speed",
--     "productivity",
--     "pollution"
-- }
-- data.raw["assembling-machine"]["se-space-decontamination-facility"].allowed_effects = {
--     "consumption",
--     "speed",
--     "productivity",
--     "pollution"
-- }

-- for _, machine in ipairs(data.raw["assembling-machine"]) do
--   if string.find(machine.name, "se-") then
--     machine.allowed_effects = {
--       "consumption",
--       "speed",
--       "productivity",
--       "pollution"
--     }
--   end
-- end

-- data.raw["assembling-machine"]["se-lifesupport-facility"].allowed_effects = {
--   "consumption",
--   "speed",
--   "productivity",
--   "pollution"
-- }
-- Add module slots to Core Mining Drill
data.raw["mining-drill"]["se-core-miner-drill"].module_specification.module_slots = 4
data.raw["mining-drill"]["se-core-miner-drill"].allowed_effects = {
    "consumption",
    "speed",
    "productivity",
    "pollution"
}

-- Add modules slots to Weapon Delivery Cannon
data.raw["assembling-machine"]["se-delivery-cannon-weapon"].module_specification.module_slots = 2
data.raw["assembling-machine"]["se-delivery-cannon-weapon"].allowed_effects = {
    "consumption",
    "speed",
    "productivity",
    "pollution"
}


-- Reduce stack size on several items
if data.raw["item"]["se-methane-ice"].stack_size > 200 then
  data.raw["item"]["se-methane-ice"].stack_size = 200
end

if data.raw["item"]["se-water-ice"].stack_size > 200 then
  data.raw["item"]["se-water-ice"].stack_size = 200
end

-- Alter matter production recipe to produce less scrap
-- Have to alter this recipe in the Space Exploration Postprocess mod
data.raw["recipe"]["se-kr-experimental-matter-processing"].results = {
    {
        type = "fluid",
        name = "matter",
        amount = 15
    }
}

-- Remove waste product (hot thermofluid) from antimatter stream recipe
data.raw["recipe"]["se-antimatter-stream"].results = {
    {
        type = "fluid",
        name = "se-antimatter-stream",
        amount = 50
    }
}

-- Add module slots to material fabricator
data.raw["assembling-machine"]["se-space-material-fabricator"].module_specification.module_slots = 4
data.raw["item"]["se-space-material-fabricator"].stack_size = 10

-- Increased satellite stack sizes in base.lua next to navigation satellite

-- Modified stack sizes. Added "* 10" to Solid Rocket Fuel stack size sanity check in space-exploration-postprocess/prototypes/sanity.lua line 5
-- data.raw["item"]["se-space-capsule"].stack_size = 10
-- data.raw["item"]["se-space-capsule-scorched"].stack_size = 10
-- data.raw["item"]["se-cargo-rocket-section"].stack_size = 10
-- data.raw["item"]["se-cargo-rocket-section-packed"].stack_size = 10
-- data.raw["item"]["se-rocket-launch-pad"].stack_size = 10
-- data.raw["item"]["se-rocket-landing-pad"].stack_size = 10
-- data.raw["item"]["se-space-manufactory"].stack_size = 10
-- data.raw["item"]["se-space-particle-collider"].stack_size = 10
-- data.raw["item"]["se-space-particle-accelerator"].stack_size = 10
-- data.raw["item"]["se-space-growth-facility"].stack_size = 10
-- data.raw["item"]["se-antimatter-reactor"].stack_size = 10
-- data.raw["item"]["se-space-probe-rocket-silo"].stack_size = 10
-- data.raw["item"]["se-energy-transmitter-emitter"].stack_size = 10
-- data.raw["item"]["se-energy-receiver"].stack_size = 10

-- data.raw["item"]["se-naquium-processor"].stack_size = 100
-- data.raw["item"]["se-naquium-tessaract"].stack_size = 100

-- data.raw["item"]["se-meteor-defence"].stack_size = 5
-- data.raw["item"]["se-energy-beam-defence"].stack_size = 5

-- Enable solid rocket fuel to liquid rocket fuel recipe from the beginning of the game
data.raw["recipe"]["se-liquid-rocket-fuel"].enabled = true

data:extend({
    {
        type = "recipe",
        name = "early-liquid-rocket-fuel",
        ingredients = {
            {
                name = "rocket-fuel",
                amount = 1
            }
        },
        results = {
            {
                name = "se-liquid-rocket-fuel",
                type = "fluid",
                amount = 500
            }
        },
        energy_required = 1,
        enabled = true,
        category = "fuel-refining",
        subgroup = "fuel",
        order = "p",
        crafting_machine_tint = {
            primary = {
                r = 0.290,
                g = 0.027,
                b = 0.000,
                a = 0.000
            }, -- #49060000
            secondary = {
                r = 0.722,
                g = 0.465,
                b = 0.190,
                a = 0.000
            }, -- #b8763000
            tertiary = {
                r = 0.870,
                g = 0.365,
                b = 0.000,
                a = 0.000
            } -- #dd5d0000
        }
    }
})

data:extend({
  {
      type = "recipe",
      name = "cheap-rocket-fuel",
      ingredients = {
          {
              name = "iron-plate",
              amount = 1
          },
          {
            name = "oxygen",
            type = "fluid",
            amount = 50
          },
          {
            name = "light-oil",
            type = "fluid",
            amount = 50
          }
      },
      results = {
          {
              name = "rocket-fuel",
              amount = 10
          }
      },
      energy_required = 1,
      enabled = true,
      category = "fuel-refining",
      subgroup = "fuel",
      order = "p",
      crafting_machine_tint = {
          primary = {
              r = 0.290,
              g = 0.027,
              b = 0.000,
              a = 0.000
          }, -- #49060000
          secondary = {
              r = 0.722,
              g = 0.465,
              b = 0.190,
              a = 0.000
          }, -- #b8763000
          tertiary = {
              r = 0.870,
              g = 0.365,
              b = 0.000,
              a = 0.000
          } -- #dd5d0000
      }
  }
})

data.raw["recipe"]["satellite"].ingredients = {
  {
    name = "advanced-circuit",
    amount = 5
  },
  {
    name = "rocket-engine-nozzle",
    amount = 1
  },
  {
    name = "glass",
    amount = 10
  },
  {
    name = "graphene",
    amount = 10
  },
  {
    name = "low-density-structure",
    amount = 5
  },
  {
    name = "rocket-fuel",
    amount = 5
  },
  {
    name = "accumulator",
    amount = 1
  },
  {
    name = "solar-panel",
    amount = 1
  }
}

data.raw["recipe"]["se-meteor-defence-ammo"].energy_required = 1

data.raw["recipe"]["se-cargo-rocket-section"].energy_required = 6
data.raw["recipe"]["se-cargo-rocket-section-beryllium"].energy_required = 6
data.raw["recipe"]["se-cargo-rocket-section-pack"].energy_required = 3
data.raw["recipe"]["se-cargo-rocket-section-unpack"].energy_required = 3

data.raw["recipe"]["se-space-capsule"].energy_required = 6
data.raw["recipe"]["se-space-capsule"].ingredients = {
  {
    name = "glass",
    amount = 5
  },
  {
    name = "se-heat-shielding",
    amount = 10
  },
  {
    name = "low-density-structure",
    amount = 10
  },
  {
    name = "rocket-fuel",
    amount = 10
  },
  {
    name = "rocket-control-unit",
    amount = 10
  },
  {
    name = "accumulator",
    amount = 5
  },
  {
    name = "solar-panel",
    amount = 5
  }
}

-- Make Space Elevator accessible when reaching space science
data.raw["recipe"]["se-space-elevator-cable"].ingredients = {
    {
        name = "copper-cable",
        amount = 25
    },
    {
        name = "acsr-cable",
        amount = 25
    },
    {
        name = "steel-plate",
        amount = 10
    },
    {
        name = "plastic-bar",
        amount = 10
    }
}
data.raw["recipe"]["se-space-elevator-cable"].energy_required = 3

data.raw["recipe"]["se-space-elevator"].ingredients = {
    {
        name = "se-space-elevator-cable",
        amount = 100
    },
    {
        name = "aluminum-plate",
        amount = 50
    },
    {
        name = "steel-plate",
        amount = 10
    },
    {
        name = "alumina",
        amount = 50
    },
    {
        name = "processing-unit",
        amount = 30
    },
    {
        name = "radar",
        amount = 10
    }
}

data.raw["technology"]["se-space-elevator"].prerequisites = {
    "se-rocket-landing-pad",
    "se-rocket-launch-pad"
}

data.raw["technology"]["se-space-elevator"].unit.ingredients = {
    {
        name = "automation-science-pack",
        amount = 1
    },
    {
        name = "logistic-science-pack",
        amount = 1
    },
    {
        name = "chemical-science-pack",
        amount = 1
    },
    {
        name = "se-rocket-science-pack",
        amount = 1
    }
}

data.raw["technology"]["se-space-platform-scaffold"].prerequisites = {
    "se-space-elevator"
}
data.raw["technology"]["se-space-platform-scaffold"].unit.ingredients = {
    {
        name = "automation-science-pack",
        amount = 1
    },
    {
        name = "logistic-science-pack",
        amount = 1
    },
    {
        name = "chemical-science-pack",
        amount = 1
    },
    {
        name = "se-rocket-science-pack",
        amount = 1
    }
}

data.raw["recipe"]["se-space-platform-scaffold"].category = "crafting"

data.raw["technology"]["se-space-rail"].prerequisites = {
    "railway",
    "se-space-elevator"
}
data.raw["technology"]["se-space-rail"].unit.ingredients = {
    {
        name = "automation-science-pack",
        amount = 1
    },
    {
        name = "logistic-science-pack",
        amount = 1
    },
    {
        name = "chemical-science-pack",
        amount = 1
    },
    {
        name = "se-rocket-science-pack",
        amount = 1
    }
}

data.raw["recipe"]["se-space-rail"].category = "crafting"
data.raw["recipe"]["se-space-rail"].ingredients = {
    {
        name = "rail",
        amount = 100
    },
    {
        name = "titanium-plate",
        amount = 10
    },
    {
        name = "acsr-cable",
        amount = 50
    }
}
