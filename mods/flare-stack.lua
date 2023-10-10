-- Increase flare stack crafting speed to compensate for lower volumes of destroyed fluids per tick
data.raw["furnace"]["flare-stack"].crafting_speed = 5000
data.raw["furnace"]["electric-incinerator"].crafting_speed = 1000

data.raw["furnace"]["flare-stack"].module_specification = { module_slots = 4 }
data.raw["furnace"]["flare-stack"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}

data.raw["furnace"]["electric-incinerator"].module_specification = { module_slots = 4 }
data.raw["furnace"]["electric-incinerator"].allowed_effects = {"consumption", "speed", "productivity", "pollution"}


-- thinking about adding "straight-rail", "curved-rail", "locomotive", "cargo-wagon", "fluid-wagon" to list of non-item categories to create incineration recipes for in flare-stack/data-final-fixes.lua

data:extend({
    {
        type = "recipe",
        name = "5d-iron-dust-incineration",
        category = "incineration",
        enabled = true,
        hidden = true,
        energy_required = 1,
        ingredients =
        {
          {"5d-iron-dust", 1}
        },
        results = { },
        icon = "__5dim_resources__/graphics/icon/resources/5d-iron-dust.png",
        icon_size = 32,
        subgroup = "fluid-recipes",
        order = "zz[incineration]"
    },
    {
        type = "recipe",
        name = "5d-copper-dust-incineration",
        category = "incineration",
        enabled = true,
        hidden = true,
        energy_required = 1,
        ingredients =
        {
          {"5d-copper-dust", 1}
        },
        results = { },
        icon = "__5dim_resources__/graphics/icon/resources/5d-copper-dust.png",
        icon_size = 32,
        subgroup = "fluid-recipes",
        order = "zz[incineration]"
    },
    {
        type = "recipe",
        name = "lead-dust-incineration",
        category = "incineration",
        enabled = true,
        hidden = true,
        energy_required = 1,
        ingredients =
        {
          {"lead-dust", 1}
        },
        results = { },
        icon = "__bzlead__/graphics/icons/lead-powder.png",
        icon_size = 64, icon_mipmaps = 3,
        subgroup = "fluid-recipes",
        order = "zz[incineration]"
    },
    {
        type = "recipe",
        name = "tungsten-dust-incineration",
        category = "incineration",
        enabled = true,
        hidden = true,
        energy_required = 1,
        ingredients =
        {
          {"tungsten-dust", 1}
        },
        results = { },
        icon = "__bztungsten__/graphics/icons/tungsten-powder.png",
        icon_size = 64, icon_mipmaps = 3,
        subgroup = "fluid-recipes",
        order = "zz[incineration]"
    }
})