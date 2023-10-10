-- Armor
require("prototypes/item-groups/assignments/armor")

-- Automatization (like assembling machines and logistics)
require("prototypes/item-groups/assignments/automatization")

--Defense
require("prototypes/item-groups/assignments/defense")

-- Decoration
require("prototypes/item-groups/assignments/decoration")

-- Weapons Equipment
require("prototypes/item-groups/assignments/equipment-weapons")

-- Energy
require("prototypes/item-groups/assignments/energy")

-- Intermediates
require("prototypes/item-groups/assignments/intermediates")

-- Liquids
require("prototypes/item-groups/assignments/liquids")

-- Barreling
for _, fluid in pairs(data.raw.fluid) do
    local barrel = fluid.name .. "-barrel"
    local fill = "fill-" .. fluid.name .. "-barrel"
    local empty = "empty-" .. fluid.name .. "-barrel"
    if data.raw.item[barrel] then
        data.raw.item[barrel].subgroup = "liquid-item"
    end
    if data.raw.recipe[fill] then
        data.raw.recipe[fill].subgroup = "liquid-fill"
    end
    if data.raw.recipe[empty] then
        data.raw.recipe[empty].subgroup = "liquid-empty"
    end
end

-- Logistics items
require("prototypes/item-groups/assignments/logistics")

--Mining
require("prototypes/item-groups/assignments/mining")

--Module
require("prototypes/item-groups/assignments/modules")

--Plates
require("prototypes/item-groups/assignments/plates")

-- Trains
require("prototypes/item-groups/assignments/trains")

-- Nuclear
require("prototypes/item-groups/assignments/nuclear")

-- Transport - Miniloaders
require("prototypes/item-groups/assignments/transport-miniloaders")

-- Transport - Belts
require("prototypes/item-groups/assignments/transport-belts")

-- Vehicles
require("prototypes/item-groups/assignments/vehicles")