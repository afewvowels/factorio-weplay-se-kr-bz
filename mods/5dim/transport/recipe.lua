-- Simple changes to some later tier logistics transport items. Vanilla these all use the same ingredients with iron gear wheels. Swap out iron gear wheels for steel (plate and gear wheels) and adds tiered motors to stack inserters and splitters. And maybe explosives to later tier underground belts.

-- Ordering is based on type of item instead of grouping all tiers of logistics together for a better sense of cohesion in the progression of recipe complexity

-- Resource progression guide

-- Logistics 1 (Yellow): Iron plates + iron gear wheels
-- Logistics 2 (Red): Steel plates + steel gear wheels + motors
-- Logistics 3 (Blue): Lubricant, advanced circuits
-- Logistics 4 (Pink): Big motor
-- Logistics 5 (Green): Big electric motor
-- Logistics 6 (Brown): Tungsten plate, processing units
-- Logistics 7 (Purple): Copper tungsten
-- Logistics 8 (White): Titanium, AI Cores
-- Logistics 9 (Orange): Imersium plate + gear wheel
-- Logistics 10 (Blue/Purple): Arcospheres


local newItem = {
  -- Logistics 1 (Yellow)
  -- Logistics 2 (Red)
  -- Logistics 3 (Blue)
  -- Logistics 4 (Pink)
  -- Logistics 5 (Green)
  -- Logistics 6 (Brown)
  -- Logistics 7 (Purple)
  -- Logistics 8 (White)
  -- Logistics 9 (Orange)
  -- Logistics 10 (Blue/Purple)
}

-- Transport Belt
local transportBelt = {
  -- Logistics 1 (Yellow)
  {
    name = "transport-belt",
    ingredients = {
      {"iron-plate", 1},
      {"iron-gear-wheel", 1}
    }
  },
  -- Logistics 2 (Red)
  {
    name = "fast-transport-belt",
    ingredients = {
      {"transport-belt", 1},
      {"steel-plate", 1},
      {"iron-gear-wheel", 5},
      {"steel-gear-wheel", 1}
    }
  },
  -- Logistics 3 (Blue)
  {
    name = "express-transport-belt",
    ingredients = {
      {"fast-transport-belt", 1},
      {"steel-plate", 1},
      {"steel-gear-wheel", 3},
      {"iron-gear-wheel", 1},
      {
          type = "fluid",
          name = "lubricant",
          amount = 20
      }
    }
  },
  -- Logistics 4 (Pink)
  -- Logistics 5 (Green)
  -- Logistics 6 (Brown)
  -- Logistics 7 (Purple)
  -- Logistics 8 (White)
  -- Logistics 9 (Orange)
  -- Logistics 10 (Blue/Purple)
  splitter = {
    {"electronic-circuit", 5},
    {"iron-plate", 5},
    {"transport-belt", 4}
  },
  loader = {
    {"inserter", 2},
    {"electronic-circuit", 5},
    {"iron-gear-wheel", 5},
    {"iron-plate", 5},
    {"transport-belt", 2}
  },
  inserter = {
      {"electronic-circuit", 1},
      {"iron-gear-wheel", 1},
      {"iron-plate", 1}
  },
  filterInserter = {
      {"inserter", 1},
      {"electronic-circuit", 4}
  },
  stackInserter = {
      {"iron-gear-wheel", 15},
      {"electronic-circuit", 15},
      {"advanced-circuit", 1},
      {"inserter", 1}
  },
  stackFilterInserter = {
      {"stack-inserter", 1},
      {"electronic-circuit", 5}
  }
}


-- Underground belts (vanilla + 30 length + 50 length)
local groundBelt = {
  -- Logistics 1 (Yellow)
  {
    {
      name = "underground-belt",
      ingredients = {
        {"iron-plate", 5},
        {"iron-gear-wheels", 5},
        {"transport-belt", 5}
      }
    },
    {
      name = "5d-underground-belt-30-01",
      ingredients = {
        {"iron-plate", 10},
        {"transport-belt", 30}
      },
    },
    {
      name = "5d-underground-belt-50-01",
      ingredients = {
        {"iron-plate", 10},
        {"transport-belt", 50}
      },
    }
  },
  -- Logistics 2 (Red)
  {
    {
      name = "fast-underground-belt",
        ingredients = {
        {"fast-transport-belt", 5},
        {"iron-gear-wheel", 10},
        {"steel-gear-wheel", 5},
        {"underground-belt", 2}
      }
    },
    {
      name = "5d-underground-belt-30-02",
      ingredients = {
        {"iron-gear-wheel", 20},
        {"steel-gear-wheel", 10},
        {"5d-fast-underground-belt-30-01", 2}
      },
    },
    {
      name = "5d-underground-belt-50-02",
      ingredients = {
        {"iron-gear-wheel", 30},
        {"steel-gear-wheel", 15},
        {"5d-fast-underground-belt-50-02", 2}
      },
    }
  },
  -- Logistics 3 (Blue)
  {
    {
      name = "express-underground-belt",
      ingredients = {
        {"express-transport-belt", 5},
        {"iron-gear-wheel", 5},
        {"steel-gear-wheel", 10},
        {"fast-underground-belt", 2},
        {
            type = "fluid",
            name = "lubricant",
            amount = 40
        }
      },
    },
    {
      name = "5d-underground-belt-30-03",
      ingredients = {
        {"iron-gear-wheel", 80},
        {"5d-fast-underground-belt-30-02", 2},
        {"iron-plate", 10},
        {"express-transport-belt", 5},
        {
            type = "fluid",
            name = "lubricant",
            amount = 40
        }
      },
    },
    {
      name = "5d-underground-belt-50-03",
      ingredients = {
        {"iron-plate", 10},
        {"transport-belt", 50},
        {
            type = "fluid",
            name = "lubricant",
            amount = 40
        }
      },
    }
  },
  -- Logistics 4 (Pink)
  -- Logistics 5 (Green)
  -- Logistics 6 (Brown)
  -- Logistics 7 (Purple)
  -- Logistics 8 (White)
  -- Logistics 9 (Orange)
  -- Logistics 10 (Blue/Purple)
  splitter = {
    {"splitter", 1},
    {"steel-gear-wheel", 5},
    {"electronic-circuit", 5},
    {"motor", 1}
  },
  loader = {
    {"fast-transport-belt", 5},
    {"fast-inserter", 2},
    {"motor", 1},
    {"loader", 1}
  },
  inserter = {
    {"inserter", 1},
    {"electronic-circuit", 1},
    {"iron-gear-wheel", 1},
    {"iron-plate", 1}
  },
  filterInserter = {
    {"fast-inserter", 1}, -- Tier 2 inserter (n)
    {"filter-inserter", 1}, -- Tier 1 filter inserter (n-1)
    {"electronic-circuit", 4}
  },
  stackInserter = {
    {"fast-inserter", 1}, -- Tier 2 inserter (n)
    {"stack-inserter", 1}, -- Tier 1 stack inserter (n-1)
    {"iron-gear-wheel", 10},
    {"steel-gear-wheel", 1},
    {"electronic-circuit", 10},
    {"advanced-circuit", 1}
  },
  stackFilterInserter = {
    {"5d-stack-inserter-02", 1}, -- Tier 2 stack inserter (n)
    {"stack-filter-inserter", 1}, -- Tier 1 stack filter inserter (n-1)
    {"electronic-circuit", 2},
    {"advanced-circuit", 2}
  }
}


-- Splitters
local ingredients = {
  groundBelt30 = {
    {
        type = "fluid",
        name = "lubricant",
        amount = 40
    }
  },
  groundBelt50 = {
    {"iron-gear-wheel", 80},
    {"5d-fast-underground-belt-50-02", 2},
    {
        type = "fluid",
        name = "lubricant",
        amount = 40
    }
  },
  splitter = {
    {"fast-splitter", 1},
    {"iron-gear-wheel", 10},
    {"advanced-circuit", 10},
    {
        type = "fluid",
        name = "lubricant",
        amount = 80
    }
  },
  loader = {
    {"express-transport-belt", 5},
    {"fast-loader", 1},
  },
  inserter = {
    {"5d-inserter-03", 1},
    {"electronic-circuit", 1},
    {"iron-gear-wheel", 1},
    {"iron-plate", 1}
  },
  filterInserter = {
    {"5d-inserter-04", 1},
    {"5d-filter-inserter-03", 1},
    {"electronic-circuit", 4}
  },
  stackInserter = {
    {"5d-inserter-04", 1},
    {"5d-stack-inserter-03", 1},
    {"iron-gear-wheel", 15},
    {"electronic-circuit", 15},
    {"advanced-circuit", 1}
  },
  stackFilterInserter = {
    {"5d-stack-inserter-04", 1},
    {"5d-stack-filter-inserter-03", 1},
    {"electronic-circuit", 5}
  }
}