if not data.raw.technology["se-centrifuge"] then
  data:extend({
    {
      type = "technology",
      name = data_util.mod_prefix .. "centrifuge",
      icon_size = 256, icon_mipmaps = 1,
      icon = "__space-exploration-graphics__/graphics/technology/centrifuge.png",
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "centrifuge"
        },
      },
      prerequisites = {"advanced-electronics-2"},
      unit =
      {
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {data_util.mod_prefix .. "rocket-science-pack", 1}
        },
        time = 30,
        count = 200
      },
      order = "e-p-b-c"
    }
  })
end

-- Atomic Energy hides this tech which keeps Vulcanite Processing technology from being researched
data.raw.technology["se-centrifuge"].hidden = false