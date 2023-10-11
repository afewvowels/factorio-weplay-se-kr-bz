
require("prototypes/item-groups/item-groups")

require("mods/5dim")
require("mods/5dim/neue-core/data")
require("mods/base")
require("mods/modules")
require("mods/se-space-trains")
require("mods/space-exploration")


-- Increase character reach distance to full screen
data.raw.character["character"].build_distance = 125
data.raw.character["character"].reach_distance = 125