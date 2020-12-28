local function change_order(type, name, new_order)
  if data.raw[type][name] then
    data.raw[type][name].order = new_order
  end
end

local function change_subgroup(type, item_name, new_subgroup)
  if data.raw[type][item_name] then
    data.raw[type][item_name].subgroup = new_subgroup
  end
end

local function change_subgroup_group(subgroup_name, new_group)
  if data.raw["item-subgroup"][subgroup_name] then
    data.raw["item-subgroup"][subgroup_name].group = new_group
  end
end

change_order("item-group", "signals", "z")

-- LOGISTICS
change_subgroup("item", "small-electric-pole", "storage")
change_subgroup("item", "steel-chest", "logistic-network")
change_subgroup("item", "brass-chest", "logistic-chests-2")
change_subgroup("item", "titanium-chest", "logistic-chests-3")

change_order("item-subgroup", "logistic-chests-2", "g-2")
change_order("item-subgroup", "logistic-chests-3", "g-3")
change_order("item-subgroup", "angels-silo", "g-4")
change_order("item-subgroup", "angels-warehouse", "g-5")

data:extend(
{
	{
		type = "item-subgroup",
		name = "power-poles-2",
		group = "logistics",
		order = "d-2",
	},
	{
		type = "item-subgroup",
		name = "power-poles-3",
		group = "logistics",
		order = "d-3",
	},
	{
		type = "item-subgroup",
		name = "artillery",
		group = "combat",
		order = "h",
	},
})

change_subgroup("item", "big-electric-pole", "power-poles-2")
change_subgroup("item", "big-electric-pole-2", "power-poles-2")
change_subgroup("item", "big-electric-pole-3", "power-poles-2")
change_subgroup("item", "big-electric-pole-4", "power-poles-2")

change_subgroup("item", "substation", "power-poles-3")
change_subgroup("item", "substation-2", "power-poles-3")
change_subgroup("item", "substation-3", "power-poles-3")
change_subgroup("item", "substation-4", "power-poles-3")

change_subgroup("item-with-entity-data", "cargo-wagon", "bob-locomotive")
change_subgroup("item-with-entity-data", "bob-cargo-wagon-2", "bob-locomotive")
change_subgroup("item-with-entity-data", "bob-cargo-wagon-3", "bob-locomotive")
change_subgroup("item-with-entity-data", "fluid-wagon", "bob-locomotive")
change_subgroup("item-with-entity-data", "bob-fluid-wagon-2", "bob-locomotive")
change_subgroup("item-with-entity-data", "bob-fluid-wagon-3", "bob-locomotive")

change_order("item", "silo-buffer", "a[silo]-i[buffer]")
change_order("item", "silo-storage", "a[silo]-n[storage]")
change_order("item", "angels-warehouse-buffer", "a[warehouse]-i[buffer]")
change_order("item", "angels-warehouse-storage", "a[warehouse]-n[storage]")

change_subgroup("item", "artillery-turret", "artillery")
change_subgroup("item", "bob-artillery-turret-2", "artillery")
change_subgroup("item", "bob-artillery-turret-3", "artillery")

change_subgroup_group("transport", "combat")


-- BOB-LOGISTICS
change_subgroup_group("pipe", "angels-fluid-control")
change_subgroup_group("pipe-to-ground", "angels-fluid-control")

change_order("item-subgroup", "pipe", "a-a")
change_order("item-subgroup", "pipe-to-ground", "a-b")

data:extend(
{
	{
		type = "item-subgroup",
		name = "pipe-2",
		group = "angels-fluid-control",
		order = "a-c",
	},
	{
		type = "item-subgroup",
		name = "pipe-to-ground-2",
		group = "angels-fluid-control",
		order = "a-d",
	},
})

change_subgroup("item", "titanium-pipe", "pipe-2")
change_subgroup("item", "ceramic-pipe", "pipe-2")
change_subgroup("item", "tungsten-pipe", "pipe-2")
change_subgroup("item", "nitinol-pipe", "pipe-2")
change_subgroup("item", "copper-tungsten-pipe", "pipe-2")

change_subgroup("item", "titanium-pipe-to-ground", "pipe-to-ground-2")
change_subgroup("item", "ceramic-pipe-to-ground", "pipe-to-ground-2")
change_subgroup("item", "tungsten-pipe-to-ground", "pipe-to-ground-2")
change_subgroup("item", "nitinol-pipe-to-ground", "pipe-to-ground-2")
change_subgroup("item", "copper-tungsten-pipe-to-ground", "pipe-to-ground-2")


-- PRODUCTION
change_subgroup("item", "wind-turbine-2", "bob-energy-fluid-generator")
change_subgroup_group("tool", "logistics")
change_order("item-subgroup", "tool", "i")

data:extend(
{
	{
		type = "item-subgroup",
		name = "nuclear-power",
		group = "production",
		order = "b-a",
	},
	{
		type = "item-subgroup",
		name = "bob-smelting-machine-2",
		group = "production",
		order = "d-a",
	},
})

change_subgroup("item", "centrifuge", "nuclear-power")
change_subgroup("item", "centrifuge-2", "nuclear-power")
change_subgroup("item", "centrifuge-3", "nuclear-power")
change_subgroup("item", "nuclear-reactor", "nuclear-power")
change_subgroup("item", "nuclear-reactor-2", "nuclear-power")
change_subgroup("item", "nuclear-reactor-3", "nuclear-power")
change_subgroup("item", "heat-pipe", "nuclear-power")
change_subgroup("item", "heat-pipe-2", "nuclear-power")
change_subgroup("item", "heat-pipe-3", "nuclear-power")

change_order("item", "centrifuge-2", "f[nuclear-energy]-a[centrifuge]")
change_order("item", "centrifuge-3", "f[nuclear-energy]-a[centrifuge]")

change_subgroup("item", "stone-mixing-furnace", "bob-smelting-machine-2")
change_subgroup("item", "steel-mixing-furnace", "bob-smelting-machine-2")
change_subgroup("item", "fluid-mixing-furnace", "bob-smelting-machine-2")
change_subgroup("item", "electric-mixing-furnace", "bob-smelting-machine-2")


-- MODULES
data:extend(
{
	{
		type = "item-subgroup",
		name = "module-intermediates-2",
		group = "bobmodules",
		order = "f-0",
	}
})

change_subgroup("tool", "speed-processor", "module-intermediates-2")
change_subgroup("item", "speed-processor-2", "module-intermediates-2")
change_subgroup("item", "speed-processor-3", "module-intermediates-2")
change_subgroup("tool", "effectivity-processor", "module-intermediates-2")
change_subgroup("item", "effectivity-processor-2", "module-intermediates-2")
change_subgroup("item", "effectivity-processor-3", "module-intermediates-2")
change_subgroup("tool", "productivity-processor", "module-intermediates-2")
change_subgroup("item", "productivity-processor-2", "module-intermediates-2")
change_subgroup("item", "productivity-processor-3", "module-intermediates-2")


-- INTERMEDIATE-PRODUCTS
change_subgroup("recipe", "diesel-fuel", "petrochem-fuel")
change_subgroup("fluid", "diesel-fuel", "petrochem-fuel")

change_subgroup("item", "iron-gear-wheel", "bob-gears")
change_order("item", "iron-gear-wheel", "a[iron-gear-wheel]")

change_subgroup("item", "battery", "bob-intermediates")
change_order("item", "battery", "e[battery]")

data:extend(
{
	{
		type = "item-subgroup",
		name = "fuel-cells",
		group = "intermediate-products",
		order = "h",
	},
	{
		type = "item-subgroup",
		name = "radioactive-materials",
		group = "intermediate-products",
		order = "i",
	},
	{
		type = "item-subgroup",
		name = "bob-robot-parts-2",
		group = "intermediate-products",
		order = "e-e2",
	},
	{
		type = "item-subgroup",
		name = "bob-robot-parts-3",
		group = "intermediate-products",
		order = "e-e3",
	},
})
change_subgroup("item", "plutonium-fuel-cell", "fuel-cells")
change_subgroup("item", "uranium-fuel-cell", "fuel-cells")
change_subgroup("item", "used-up-uranium-fuel-cell", "fuel-cells")
change_subgroup("item", "thorium-fuel-cell", "fuel-cells")
change_subgroup("item", "thorium-plutonium-fuel-cell", "fuel-cells")
change_subgroup("item", "used-up-thorium-fuel-cell", "fuel-cells")
change_subgroup("item", "deuterium-fuel-cell", "fuel-cells")
change_subgroup("item", "deuterium-fuel-cell-2", "fuel-cells")
change_subgroup("item", "used-up-deuterium-fuel-cell", "fuel-cells")

change_subgroup("item", "uranium-235", "radioactive-materials")
change_subgroup("item", "uranium-238", "radioactive-materials")
change_subgroup("item", "plutonium-239", "radioactive-materials")
change_subgroup("item", "thorium-232", "radioactive-materials")
change_subgroup("item", "fusion-catalyst", "radioactive-materials")

change_subgroup("recipe", "nuclear-fuel-reprocessing", "radioactive-materials")
change_subgroup("recipe", "kovarex-enrichment-process", "radioactive-materials")
change_subgroup("recipe", "bobingabout-enrichment-process", "radioactive-materials")
change_subgroup("recipe", "plutonium-nucleosynthesis", "radioactive-materials")
change_subgroup("recipe", "thorium-fuel-reprocessing", "radioactive-materials")
change_subgroup("recipe", "deuterium-fuel-reprocessing", "radioactive-materials")

change_subgroup("item", "robot-brain-construction", "bob-robot-parts-2")
change_subgroup("item", "robot-brain-construction-2", "bob-robot-parts-2")
change_subgroup("item", "robot-brain-construction-3", "bob-robot-parts-2")
change_subgroup("item", "robot-brain-construction-4", "bob-robot-parts-2")
change_subgroup("item", "robot-brain-logistic", "bob-robot-parts-2")
change_subgroup("item", "robot-brain-logistic-2", "bob-robot-parts-2")
change_subgroup("item", "robot-brain-logistic-3", "bob-robot-parts-2")
change_subgroup("item", "robot-brain-logistic-4", "bob-robot-parts-2")
change_subgroup("item", "robot-tool-construction", "bob-robot-parts-3")
change_subgroup("item", "robot-tool-construction-2", "bob-robot-parts-3")
change_subgroup("item", "robot-tool-construction-3", "bob-robot-parts-3")
change_subgroup("item", "robot-tool-construction-4", "bob-robot-parts-3")
change_subgroup("item", "robot-tool-logistic", "bob-robot-parts-3")
change_subgroup("item", "robot-tool-logistic-2", "bob-robot-parts-3")
change_subgroup("item", "robot-tool-logistic-3", "bob-robot-parts-3")
change_subgroup("item", "robot-tool-logistic-4", "bob-robot-parts-3")

change_subgroup("item", "assembly-robot", "space-related")
change_subgroup("item", "drydock-assembly", "space-related")
change_subgroup("item", "drydock-structural", "space-related")
change_subgroup("item", "fusion-reactor", "space-related")
change_subgroup("item", "hull-component", "space-related")
change_subgroup("item", "protection-field", "space-related")
change_subgroup("item", "space-thruster", "space-related")
change_subgroup("item", "fuel-cell", "space-related")
change_subgroup("item", "habitation", "space-related")
change_subgroup("item", "life-support", "space-related")
change_subgroup("item", "command", "space-related")
change_subgroup("item", "astrometrics", "space-related")
change_subgroup("item", "ftl-drive", "space-related")

change_subgroup_group("bob-intermediates", "intermediate-products")
change_subgroup_group("bob-electronic-components", "intermediate-products")
change_subgroup_group("bob-boards", "intermediate-products")
change_subgroup_group("bob-electronic-boards", "intermediate-products")
change_subgroup_group("bob-gears", "intermediate-products")
change_subgroup_group("bob-bearings", "intermediate-products")
change_subgroup_group("bob-roboport-parts-antenna", "intermediate-products")
change_subgroup_group("bob-roboport-parts-door", "intermediate-products")
change_subgroup_group("bob-roboport-parts-charge", "intermediate-products")
change_subgroup_group("bob-robot-parts", "intermediate-products")

change_subgroup("item", "basic-circuit-board", "bob-boards")
change_subgroup("item", "circuit-board", "bob-boards")
change_subgroup("item", "superior-circuit-board", "bob-boards")
change_subgroup("item", "multy-layer-circuit-board", "bob-boards")

change_subgroup("item", "electronic-circuit", "bob-electronic-boards")
change_subgroup("item", "advanced-circuit", "bob-electronic-boards")
change_subgroup("item", "processing-unit", "bob-electronic-boards")
change_subgroup("item", "advanced-processing-unit", "bob-electronic-boards")

change_order("item-subgroup", "intermediate-product", "e-c2")


-- BOB-RESOURCE-PRODUCTS
change_subgroup("recipe", "carbon-dioxide", "petrochem-basics")


-- COMBAT
change_subgroup("item-with-entity-data", "artillery-wagon", "artillery")
change_subgroup("item-with-entity-data", "bob-artillery-wagon-2", "artillery")
change_subgroup("item-with-entity-data", "bob-artillery-wagon-3", "artillery")

change_subgroup("capsule", "artillery-targeting-remote", "artillery")


-- ANGELS-CASTING
change_subgroup("recipe", "angels-glass-fiber-board", "bob-boards")
