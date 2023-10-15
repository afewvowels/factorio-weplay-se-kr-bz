local animations = require("__weplay_se_kr_bz__/mods/spidertron-tiers/utils")


-- Prototype Spidertron (3 legs)
-- data.raw["spider-vehicle"]["prototype_spidertron"].graphics_set = animations.torso
-- for index = 1, 3 do
--   data.raw["spider-leg"]["prototype-spidertron-leg-" .. index].graphics_set = animations.legs[index]
-- end

local spidertronTiers = {
  {"prototype_spidertron", "prototype-spidertron", 3},
  {"assault_spidertron_mk1", "assault-spidertron-mk1", 6},
  {"assault_spidertron_mk2", "assault-spidertron-mk2", 5},
  {"bulwark_spidertron_mk1", "bulwark-spidertron-mk1", 8},
  {"bulwark_spidertron_mk2", "bulwark-spidertron-mk2", 14},
  {"scout_spidertron_mk1", "scout-spidertron-mk1", 3},
  {"scout_spidertron_mk2", "scout-spidertron-mk2", 4},
  {"spidertron_mkn1", "spidertron-mk-1", 5},
  {"spidertron_mk0", "spidertron-mk0", 6},
  {"spidertron_mk2", "spidertron-mk2", 8},
  {"spidertron_mk3", "spidertron-mk3", 10},
  {"voyage_spidertron_mk1", "voyage-spidertron-mk1", 8},
  {"voyage_spidertron_mk2", "voyage-spidertron-mk2", 10},
}

local function restoreSpidertronGraphics(name, legName, legCount)
  data.raw["spider-vehicle"][name].graphics_set = animations.torso

  for index = 1, legCount do
    data.raw["spider-leg"][legName .. "-leg-" .. index].graphics_set = animations.legs[index]
  end
end

for _, spider in pairs(spidertronTiers) do
  restoreSpidertronGraphics(spider[1], spider[2], spider[3])
end