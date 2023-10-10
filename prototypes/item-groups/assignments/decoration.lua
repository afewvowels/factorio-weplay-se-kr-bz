-- Lots of new landfills
data.raw.recipe["landfill-aluminum-ore"].subgroup = "decoration-landfill-recipes"
data.raw.recipe["landfill-aluminum-ore"].order = "a"
data.raw.recipe["landfill-flake-graphite"].subgroup = "decoration-landfill-recipes"
data.raw.recipe["landfill-flake-graphite"].order = "b"
data.raw.recipe["landfill-lead-ore"].subgroup = "decoration-landfill-recipes"
data.raw.recipe["landfill-lead-ore"].order = "c"
data.raw.recipe["landfill-tin-ore"].subgroup = "decoration-landfill-recipes"
data.raw.recipe["landfill-tin-ore"].order = "d"
data.raw.recipe["landfill-titanium-ore"].subgroup = "decoration-landfill-recipes"
data.raw.recipe["landfill-titanium-ore"].order = "e"
data.raw.recipe["landfill-tungsten-ore"].subgroup = "decoration-landfill-recipes"
data.raw.recipe["landfill-tungsten-ore"].order = "f"
data.raw.recipe["landfill-zircon"].subgroup = "decoration-landfill-recipes"
data.raw.recipe["landfill-zircon"].order = "g"


data.raw.item["landfill"].subgroup = "decoration-floors"
data.raw.item["landfill"].order = "a"

-- Standard floors
data.raw.item["stone-brick"].subgroup = "decoration-floors-3"
data.raw.item["stone-brick"].order = "a-a"
data.raw.item["concrete"].subgroup = "decoration-floors-3"
data.raw.item["concrete"].order = "a-b"
data.raw.item["refined-concrete"].subgroup = "decoration-floors-3"
data.raw.item["refined-concrete"].order = "a-ba"
data.raw.item["hazard-concrete"].subgroup = "decoration-floors-3"
data.raw.item["hazard-concrete"].order = "a-bb"
data.raw.item["refined-hazard-concrete"].subgroup = "decoration-floors-3"
data.raw.item["refined-hazard-concrete"].order = "a-bc"
-- data.raw.capsule["cliff-explosives"].subgroup = "decoration-floors-3"
-- data.raw.capsule["cliff-explosives"].order = "a-aa"


-- Krastorio floor plates
data.raw.item["kr-black-reinforced-plate"].subgroup = "decoration-floors-4"
data.raw.item["kr-black-reinforced-plate"].order = "a-a"
data.raw.item["kr-white-reinforced-plate"].subgroup = "decoration-floors-4"
data.raw.item["kr-white-reinforced-plate"].order = "a-b"

if mods["safefill"] then
    data.raw.item["safefill-shallow"].subgroup = "decoration-floors-2"
    data.raw.item["safefill-shallow"].order = "a"
    data.raw.item["safefill-medium"].subgroup = "decoration-floors-2"
    data.raw.item["safefill-medium"].order = "b"
    data.raw.item["safefill-deep"].subgroup = "decoration-floors-2"
    data.raw.item["safefill-deep"].order = "c"

    data.raw.item["safefill-mud"].subgroup = "decoration-floors-2"
    data.raw.item["safefill-mud"].order = "d"
    data.raw.item["safefill-green"].subgroup = "decoration-floors-2"
    data.raw.item["safefill-green"].order = "e"
    data.raw.item["safefill-deepgreen"].subgroup = "decoration-floors-2"
    data.raw.item["safefill-deepgreen"].order = "f"
end

if mods["space-exploration"] then
    data.raw.item["se-space-platform-scaffold"].subgroup = "decoration-space-floors"
    data.raw.item["se-space-platform-scaffold"].order = "a"
    data.raw.item["se-space-platform-plating"].subgroup = "decoration-space-floors"
    data.raw.item["se-space-platform-plating"].order = "b"
end

-- Text plates A
