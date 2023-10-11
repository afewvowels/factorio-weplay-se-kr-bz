-- Modifications to Krastorio2

-- data.raw["technology"]["kr-lithium-sulfur-battery"].prerequisites = {"kr-lithium-processing"}
-- data.raw["technology"]["kr-lithium-sulfur-battery"].unit.ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}}

-- Add "stream" category to Advanced Chemical Plant
-- if (mods["space-exploration"]) then
--   data.raw["assembling-machine"]["kr-advanced-chemical-plant"].crafting_categories = {"chemistry", "space-electromagnetics"}
-- end

-- Increase huge storage tank capacity to 2,000,000
data.raw["storage-tank"]["kr-fluid-storage-2"].fluid_box.base_area = 20000

-- Reset fluid handling to just require automation science packs
data.raw["technology"]["fluid-handling"].unit.ingredients = {
  {"basic-tech-card", 1},
  {"automation-science-pack", 1}
}
data.raw["technology"]["fluid-handling"].prerequisites = {"kr-basic-fluid-handling"}

data.raw["technology"]["kr-lithium-sulfur-battery"].unit.ingredients = {
    {"basic-tech-card", 1},
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1}
}
data.raw["technology"]["kr-lithium-sulfur-battery"].prerequisites = {"kr-lithium-processing","se-space-elevator"}


-- Bleh, update ammo distance for 5dim sniper turrets by copying entire ammo block from K2
-- Increase ammo maximum range
local pistol_range = 22
local rifle_range = 70
local sniper_range = 70

-- -- --

local bullets_collision_box = { { -0.5, -1 }, { 0.5, 1 } }
local k_target_type = "direction" -- "entity", "position" or "direction"
local k_d_radius = 0.5
local k_pistol_min_range = 0.5
local k_rifle_min_range = 0.5
local k_s_rifle_min_range = 1
local turret_range = 0

local bullets_collision_box = { { -0.5, -1 }, { 0.5, 1 } }
local k_target_type = "direction" -- "entity", "position" or "direction"
local k_d_radius = 0.5
local k_pistol_min_range = 0.5
local k_rifle_min_range = 0.5
local k_s_rifle_min_range = 1
local turret_range = 0

data:extend({
  {
    type = "ammo",
    name = "rifle-magazine",
    icon = kr_items_with_variations_icons_path .. "ammo/rifle-ammo-1.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures = {
      {
        size = 64,
        filename = kr_items_with_variations_icons_path .. "ammo/rifle-ammo-1.png",
        scale = 0.25,
        mipmap_count = 4,
      },
    },
    ammo_type = {
      category = "bullet",
      cooldown_modifier = 0.8,
      target_type = k_target_type,
      action = {
        {
          type = "direct",
          action_delivery = {
            {
              type = "projectile",
              projectile = "rifle-ammo-1",
              starting_speed = 1.5,
              direction_deviation = 0.15,
              range_deviation = 0.15,
              max_range = rifle_range,
              source_effects = {
                {
                  type = "create-explosion",
                  entity_name = "explosion-gunshot",
                },
              },
            },
          },
        },
      },
    },
    magazine_size = 30,
    subgroup = "ammo",
    order = "a[basic-clips]-a03[rifle-magazine]",
    stack_size = 200,
  },

  {
    type = "projectile",
    name = "rifle-ammo-1",
    flags = { "not-on-map" },
    collision_box = bullets_collision_box,
    acceleration = -0.018,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "create-entity",
            entity_name = "explosion-hit",
          },
          {
            type = "damage",
            damage = { amount = 10, type = "physical" },
          },
        },
      },
    },
    animation = {
      filename = kr_entities_path .. "bullets/rifle-bullet-1.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high",
    },
    shadow = {
      filename = kr_entities_path .. "bullets/rifle-bullet-1.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high",
      draw_as_shadow = true,
    },
    --hit_at_collision_position = true,
    force_condition = "not-same",
    light = { intensity = 0.45, size = 5, color = { r = 1.0, g = 1.0, b = 0.5 } },
  },

  {
    type = "recipe",
    name = "rifle-magazine",
    energy_required = 1,
    enabled = false,
    ingredients = {
      { "coal", 2 },
      { "iron-plate", 1 },
      { "copper-plate", 1 },
    },
    result = "rifle-magazine",
  },

  -- ---------------------------------------------------------------------------------------------------------------- --

  {
    type = "ammo",
    name = "armor-piercing-rifle-magazine",
    icon = kr_items_with_variations_icons_path .. "ammo/rifle-ammo-2.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures = {
      {
        size = 64,
        filename = kr_items_with_variations_icons_path .. "ammo/rifle-ammo-2.png",
        scale = 0.25,
        mipmap_count = 4,
      },
    },
    ammo_type = {
      category = "bullet",
      target_type = k_target_type,
      action = {
        {
          type = "direct",
          action_delivery = {
            {
              type = "projectile",
              projectile = "rifle-ammo-2",
              starting_speed = 1.75,
              direction_deviation = 0.15,
              range_deviation = 0.15,
              max_range = rifle_range,
              source_effects = {
                {
                  type = "create-explosion",
                  entity_name = "explosion-gunshot",
                },
              },
            },
          },
        },
      },
    },
    magazine_size = 30,
    subgroup = "ammo",
    order = "a[basic-clips]-a04[rifle-magazine]",
    stack_size = 200,
  },

  {
    type = "projectile",
    name = "rifle-ammo-2",
    flags = { "not-on-map" },
    collision_box = bullets_collision_box,
    acceleration = -0.02,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "create-entity",
            entity_name = "explosion-hit-p",
          },
          {
            type = "damage",
            damage = { amount = 14, type = "physical" },
          },
        },
      },
    },
    animation = {
      filename = kr_entities_path .. "bullets/rifle-bullet-2.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high",
    },
    shadow = {
      filename = kr_entities_path .. "bullets/rifle-bullet-2.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high",
      draw_as_shadow = true,
    },
    --hit_at_collision_position = true,
    force_condition = "not-same",
    light = { intensity = 0.25, size = 7, color = { r = 1.0, g = 0.8, b = 0.5 } },
  },

  {
    type = "recipe",
    name = "armor-piercing-rifle-magazine",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { "rifle-magazine", 1 },
      { "steel-plate", 2 },
    },
    result = "armor-piercing-rifle-magazine",
  },

  -- ---------------------------------------------------------------------------------------------------------------- --

  {
    type = "ammo",
    name = "uranium-rifle-magazine",
    icon = kr_items_with_variations_icons_path .. "ammo/rifle-ammo-3.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures = {
      {
        size = 64,
        filename = kr_items_with_variations_icons_path .. "ammo/rifle-ammo-3.png",
        scale = 0.25,
        mipmap_count = 4,
      },
    },
    ammo_type = {
      category = "bullet",
      target_type = k_target_type,
      action = {
        {
          type = "direct",
          action_delivery = {
            {
              type = "projectile",
              projectile = "rifle-ammo-3",
              starting_speed = 1.75,
              direction_deviation = 0.15,
              range_deviation = 0.15,
              max_range = rifle_range,
              source_effects = {
                {
                  type = "create-explosion",
                  entity_name = "explosion-gunshot",
                },
              },
            },
          },
        },
      },
    },
    magazine_size = 30,
    subgroup = "ammo",
    order = "a[basic-clips]-a05[rifle-magazine]",
    stack_size = 200,
  },

  {
    type = "projectile",
    name = "rifle-ammo-3",
    flags = { "not-on-map" },
    collision_box = bullets_collision_box,
    acceleration = -0.02,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "create-entity",
            entity_name = "explosion-hit-u",
          },
          {
            type = "damage",
            damage = { amount = 14, type = "physical" },
          },
          {
            type = "damage",
            damage = { amount = 6, type = "radioactive" },
          },
        },
      },
    },
    animation = {
      filename = kr_entities_path .. "bullets/rifle-bullet-3.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high",
    },
    shadow = {
      filename = kr_entities_path .. "bullets/rifle-bullet-3.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high",
      draw_as_shadow = true,
    },
    --hit_at_collision_position = true,
    force_condition = "not-same",
    light = { intensity = 0.25, size = 7, color = { r = 0.5, g = 1, b = 0.5 } },
  },

  {
    type = "recipe",
    name = "uranium-rifle-magazine",
    energy_required = 3,
    enabled = false,
    ingredients = {
      { "rifle-magazine", 1 },
      { "uranium-238", 2 },
    },
    result = "uranium-rifle-magazine",
  },

  -- ---------------------------------------------------------------------------------------------------------------- --

  {
    type = "ammo",
    name = "imersite-rifle-magazine",
    icon = kr_items_with_variations_icons_path .. "ammo/rifle-ammo-4.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures = {
      {
        size = 64,
        filename = kr_items_with_variations_icons_path .. "ammo/rifle-ammo-4.png",
        scale = 0.25,
        mipmap_count = 4,
      },
    },
    ammo_type = {
      category = "bullet",
      target_type = k_target_type,
      action = {
        {
          type = "direct",
          action_delivery = {
            {
              type = "projectile",
              projectile = "rifle-ammo-4",
              starting_speed = 2.25,
              direction_deviation = 0.1,
              range_deviation = 0.1,
              max_range = rifle_range,
              source_effects = {
                {
                  type = "create-explosion",
                  entity_name = "explosion-gunshot",
                },
              },
            },
          },
        },
      },
    },
    magazine_size = 30,
    subgroup = "ammo",
    order = "a[basic-clips]-a06[rifle-magazine]",
    stack_size = 200,
  },

  {
    type = "projectile",
    name = "rifle-ammo-4",
    flags = { "not-on-map" },
    collision_box = bullets_collision_box,
    acceleration = -0.02,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "create-entity",
            entity_name = "explosion-hit-i",
          },
          {
            type = "damage",
            damage = { amount = 14, type = "physical" },
          },
          {
            type = "damage",
            damage = { amount = 10, type = "laser" },
          },
        },
      },
    },
    animation = {
      filename = kr_entities_path .. "bullets/rifle-bullet-4.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high",
    },
    shadow = {
      filename = kr_entities_path .. "bullets/rifle-bullet-4.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high",
      draw_as_shadow = true,
    },
    --hit_at_collision_position = true,
    force_condition = "not-same",
    light = { intensity = 0.25, size = 8, color = { r = 1, g = 0.45, b = 0.8 } },
  },

  {
    type = "recipe",
    name = "imersite-rifle-magazine",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { "rifle-magazine", 1 },
      { "imersite-crystal", 2 },
    },
    result = "imersite-rifle-magazine",
  },
})