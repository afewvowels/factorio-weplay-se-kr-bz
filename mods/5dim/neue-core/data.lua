-- Remove as many 5Dim defined technologies as possible (Logistics techs are referenced directly by Miniloader creation in miniloaders & more-miniloaders so they can't be full removed)
require("mods/5dim/neue-core/tech-refactor")

require("mods/5dim/automation/control")
require("mods/5dim/automation/tech")

require("mods/5dim/battlefield/control")
require("mods/5dim/battlefield/tech")

require("mods/5dim/energy/tech")

require("mods/5dim/equipment/control")
require("mods/5dim/equipment/tech")

require("mods/5dim/logistic/tech")

require("mods/5dim/nuclear/control")
require("mods/5dim/nuclear/tech")

require("mods/5dim/trains/tech")

require("mods/5dim/transport/control")
require("mods/5dim/transport/tech")
require("mods/5dim/transport/recipe")
