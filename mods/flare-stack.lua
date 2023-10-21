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


-- Copy incineration recipe from Flare Stack mod and create some new incineratable item/recipes
function incinerateRecipe(item, category, craft_category)
  local newicons = get_icons(item)
  table.insert(newicons, no_icon)
  data:extend({
    {
      type = "recipe",
      name = category.."-"..item.name.."-incineration",
      category = craft_category,
      enabled = true,
      hidden = true,
      -- this is now done through incinerator crafting speed
      -- energy_required = 1.0 / settings.startup["flare-stack-item-rate"].value,
      energy_required = 1,
      ingredients =
      {
        {item.name, 1}
      },
      results = { },
      icons = newicons,
      icon_size = 32,
      subgroup = "fluid-recipes",
      order = "zz[incineration]"
    }
  })
end

local category_list =
{
  "capsule",
  "ammo",
  "gun",
  "module",
  "armor",
  "mining-tool",
  "repair-tool",
  "rail-planner",
  "tool",
  "locomotive",
  "fluid-wagon",
  "cargo-wagon"
}

local skipTheseNames = {
  "se-space-elevator-tug",
  "RT-ghostLocomotive",
  "RTPayloadWagon",
  "RTImpactWagon"
}

incinerateRecipe(data.raw["car"]["car"], "car", "incineration")
incinerateRecipe(data.raw["car"]["tank"], "car", "incineration")

for _, c in pairs(category_list) do
  for _, i in pairs(data.raw[c]) do
    for _, n in pairs(skipTheseNames) do
      if i.name == n then
        goto continue
      end
    end
    incinerateRecipe(i, c, "incineration")
    ::continue::
  end
end