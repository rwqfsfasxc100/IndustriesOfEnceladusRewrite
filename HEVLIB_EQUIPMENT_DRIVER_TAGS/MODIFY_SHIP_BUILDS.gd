extends Node

# FORMATTING NOTES - How each constant's dictionary should be formatted.
# 
# This driver is intended to provide additional logic to the creation of a random config of a ship.
# If you are looking to add a whole config definition, that can be done with ADD_SHIPS.gd and 
# creating a ship entry either without defining `path` or defining `path` as an empty string (`""`).
#
# `ship_name`: is the ship's name as it's defined within Shipyard.gd's ships dictionary,
# or the `name` property of a ship entry in ADD_SHIPS.gd, NOT a ship's shipName variable, 
# e.g. SHIP_TRTL_T. Can be an array of strings or PoolStringArray if the entry is intended to cover
# multiple ship types
# 
# 
# `recurse_for_alias`: (optional) whether the check should also be used for any ships that would
# alias to the same ship. If ship_name is an array, will be recursive for all defined ship types
#  - Aliases are defined by Shipyard.gd's configAlias dictionary, or by the `alias` property
#    of a ship entry in ADD_SHIPS.gd.
# 
#  - e.g. defining ship_name as either TRTL or TRTL-T would mean that it could be used by any ship
#    that was aliased to TRTL as well.
# 
#  - Defaults to `false`
# 
# 
# `if_equipment_in_slot`: Array of dictionaries determining an equipment's addition if a specific
#  slot has either a specific item or an item within an array.
#  - slot: The slot that `system` will be added to. Can add to multiple slots at one by using an 
#    `and` keyword (used as `&&`)
# 
#  - system: The equipment system name to be added to the slot. Can be an array of strings or a
#    PoolStringArray to have the specific equipment entry randomly select one of the equipment items
# 
#  - do_add_if: Dictionary containing slots and the equipment that must be installed to 
#    that slot to warrant it's addition. Can also add an 'or' keyword (used as `||`) or 
#    an 'and' keyword (used as `&&`) to perform a check that must be true between one or
#    all defined slots. Order of operations is sequentially from left to right. Special`ALL`
#    sysname can be used to trigger `do_add_if` to be true if ANYTHING is contained within the slot
#    e.g. "slot":"weaponSlot.left.type&&weaponSlot.right.type":[...]
# 
#  - dont_add_if: Dictionary containing slots and the equipment that must NOT be installed to 
#    that slot to warrant it's addition. Can use the same operators as `do_add_if`.
# 
#  - check_numerics: Dictionary containing numeric equipment slots and checks that must pass to be
#    able to add this equipment item. This check will check a provided slot for a numeric value, 
#    and then perform an expression against it (==, >, <, >=, <=). Any expression can have an `!`
#    appended before it to make it a not statement (!==, !>, !<=). This operation can check strings
#    that would be valid numbers.
#    - `operation` or `expression`: defaults to `==`
#    - `comparison` or `value`: defaults to `0`
# 
#  - chance: Numeric chance for the change to be made if all filters are passed.
#    Must be between 0.0 and 1.0. Defaults to `0.1`
# 
#  - priority: Integer that defines which order the modifications defined within each entry will be
#    ordered by, instead of just being in the order of how the handlers and handler entries are
#    defined. Defaults to `0`
# 
#  - weight: Integer that defines how many times this specific entry can be rolled. Defaults to `0`
# 
# 
# `if_tag_in_slot`: Array of dictionaries determining an equipment's addition if a specific
#  slot has equipment installed that belongs to a specific tag or a tag within an array.
#  - Equivalent formatting to `if_equipment_in_slot`, just using tags in the place of system names
#    within the `do_add_if` and `dont_add_if` dictionaries.
# 
#  - Tags are defined within the `equipment_types` constant within the following script:
#    res://HevLib/scenes/equipment/vanilla_defaults/slot_tagging.gd
# 
#  - They can also be defined with the `equipment_types` array within the `EQUIPMENT_TAGS.gd`'s
#    EQUIPMENT_TAGS dictionary constant
# 
# 
# `random`: Simple random chance for an item to be added to a slot without any equipment filtering.
#  Can still make use of numeric filtering however, as equipment may still need specific numerics
#  to run.
#  - slot: The slot that `system` will be added to. Can add to multiple slots at one by using an 
#    `and` keyword (used as `&&`)
# 
#  - system: The equipment system name to be added to the slot. Can be an array of strings or a
#    PoolStringArray to have the specific equipment entry randomly select one of the equipment items
# 
#  - check_numerics: Dictionary containing numeric equipment slots and checks that must pass to be
#    able to add this equipment item. This check will check a provided slot for a numeric value, 
#    and then perform an expression against it (==, >, <, >=, <=). Any expression can have an `!`
#    appended before it to make it a not statement (!==, !>, !<=). This operation can check strings
#    that would be valid numbers.
# 
#  - chance: Numeric chance for the change to be made. Must be between 0.0 and 1.0. Defaults to 
#    `0.1`
# 
#  - priority: Integer that defines which order the modifications defined within each entry will be
#    ordered by, instead of just being in the order of how the handlers and handler entries are
#    defined. Defaults to `0`
# 
#  - weight: Integer that defines how many times this specific entry can be rolled. Defaults to `0`
# 
# 
# `if_equipment`: Similar to if_equipment_in_slot, however the check happens for all slots instead
# of a defined set of slots.
#  - slot: The slot that `system` will be added to. Can add to multiple slots at one by using an 
#    `and` keyword (used as `&&`)
# 
#  - system: The equipment system name to be added to the slot. Can be an array of strings or a
#    PoolStringArray to have the specific equipment entry randomly select one of the equipment items
# 
#  - do_add_if: Array containing the equipment that must be installed to warrant it's addition.
#    Can also add an 'or' keyword (used as `||`) or an 'and' keyword (used as `&&`) to perform
#    a check that must be true between one or all defined slots. Order of operations is
#    sequentially from left to right. Special `ALL` sysname can be used to trigger `do_add_if`
#    to be true if ANYTHING is contained within the slot.
#    e.g. "slot":"weaponSlot.left.type&&weaponSlot.right.type":[...]
# 
#  - dont_add_if: Array containing the equipment that must NOT be installed to warrant it's
#    addition. Can use the same operators as `do_add_if`.
# 
#  - check_numerics: Dictionary containing numeric equipment slots and checks that must pass to be
#    able to add this equipment item. This check will check a provided slot for a numeric value, 
#    and then perform an expression against it (==, >, <, >=, <=). Any expression can have an `!`
#    appended before it to make it a not statement (!==, !>, !<=). This operation can check strings
#    that would be valid numbers.
# 
#  - chance: Numeric chance for the change to be made if all filters are passed.
#    Must be between 0.0 and 1.0. Defaults to `0.1`
# 
#  - priority: Integer that defines which order the modifications defined within each entry will be
#    ordered by, instead of just being in the order of how the handlers and handler entries are
#    defined. Defaults to `0`
# 
#  - weight: Integer that defines how many times this specific entry can be rolled. Defaults to `0`
# 
# 
# `if_tag`: Similar to if_equipment_in_slot, however the check happens for all slots instead
# of a defined set of slots.
#  - Equivalent formatting to `if_equipment`, just using tags in the place of system names
#    within the `do_add_if` and `dont_add_if` dictionaries
# 
#  - Tags are defined within the `equipment_types` constant within the following script:
#    res://HevLib/scenes/equipment/vanilla_defaults/slot_tagging.gd
# 
#  - They can also be defined with the `equipment_types` array within the `EQUIPMENT_TAGS.gd`'s
#    EQUIPMENT_TAGS dictionary constant
# 
# 

const SHIP_TRTL = { # Example configs for specifically K37s & variants
	"ship_name":"TRTL",
	"recurse_for_alias":true,
	"if_equipment_in_slot":[
		{
			"slot":"weaponSlot.left.type&&weaponSlot.right.type", # both left and right low stress
			"system":"SYSTEM_DND_HARVHAUL",
			"dont_add_if":{
				"weaponSlot.main.type":[
					"SYSTEM_SALVAGE_ARM_LIGHT",
					"SYSTEM_SALVAGE_ARM_LONG",
					"SYSTEM_SALVAGE_ARM",
					"SYSTEM_SALVAGE_ARM_HEAVY",
				]
			},
			"chance":0.15,
		},
		{
			"slot":"weaponSlot.left.type",
			"system":"SYSTEM_MWTIGHTBEAM_PDT-L",
			"do_add_if":{
				"weaponSlot.right.type":[
					"SYSTEM_MWG"
				]
			},
			"dont_add_if":{
				"weaponSlot.main.type":[
					"SYSTEM_RAILTOR"
				]
			},
			"chance":0.25,
		},
	],
	"if_tag_in_slot":[
		{
			"slot":"weaponSlot.left.type",
			"system":"SYSTEM_EMD14",
			"do_add_if":{
				"weaponSlot.right.type":[
					"EQUIPMENT_MICROWAVES"
				]
			},
			"dont_add_if":{
				"weaponSlot.main.type":[
					"EQUIPMENT_MASS_DRIVERS"
				]
			},
		},
		{
			"slot":"weaponSlot.left.type",
			"system":"SYSTEM_MWTIGHTBEAM",
			"do_add_if":{
				"weaponSlot.right.type":[
					"EQUIPMENT_MICROWAVES"
				]
			},
			"dont_add_if":{
				"weaponSlot.main.type":[
					"EQUIPMENT_MASS_DRIVERS"
				]
			},
		},
	],
	"random":[
		{
			"slot":"weaponSlot.left.type",
			"system":"SYSTEM_DND_HARVTUG",
			"check_numerics":{
				"drones.capacity":{
					"operation":"!==",
					"comparison":0.0,
				}
			},
		},
		{
			"slot":"weaponSlot.main.type",
			"system":[
				"SYSTEM_SALVAGE_ARM_HEAVY",
				"SYSTEM_SALVAGE_ARM_LONG",
				"SYSTEM_SALVAGE_ARM_LIGHT",
				"SYSTEM_SALVAGE_ARM",
			],
			"chance":0.0875
		},
	],
	"if_equipment":[
		{
			"slot":"weaponSlot.left.type",
			"system":"SYSTEM_DND_HARVTUG",
			"check_numerics":{
				"drones.capacity":{
					"operation":"!==",
					"comparison":0.0,
				}
			},
			"do_add_if":[
				"SYSTEM_DND_TS",
				"SYSTEM_DND_HAUL"
			]
		},
	],
	"if_tag":[
		{
			"slot":"weaponSlot.left.type",
			"system":"SYSTEM_EMD14",
			"do_add_if":[
				"EQUIPMENT_MICROWAVES"
			],
			"dont_add_if":[
				"EQUIPMENT_MASS_DRIVERS"
			],
			"chance":0.1,
		},
		{	# All hardpoint slot types
			"slot":"weaponSlot.right.type && weaponSlot.left.type && weaponSlot.main.type",
			"system":"SYSTEM_DND_HARVTUG",
			"check_numerics":{
				"drones.capacity":{
					"operation":">=",
					"comparison":5000.0,
				}
			},
			"do_add_if":[
				"EQUIPMENT_NANODRONES",
			]
		},
	],
}

const TORCH_SHIPS = {
	"ship_name":PoolStringArray([
		"TRTL",
		"PROSPECTOR",
		"EIME",
		"COTHON",
		"AT225",
		"OCP209",
		"MADCERF",
		"OBERON",
	]),
	"recurse_to_variants":true,
	"random":[
		{
			"slot":"propulsion.main",
			"system":[
				"SYSTEM_MAIN_ENGINE_GEMINI",
				"SYSTEM_MAIN_ENGINE_GEMINI",
				"SYSTEM_MAIN_ENGINE_GEMINI",
				"SYSTEM_MAIN_ENGINE_GEMINI",
				"SYSTEM_MAIN_ENGINE_GEMINI",
				"SYSTEM_MAIN_ENGINE_GEMINI",
				"SYSTEM_MAIN_ENGINE_THUNDER",
				"SYSTEM_MAIN_ENGINE_THUNDER",
				"SYSTEM_MAIN_ENGINE_THUNDER",
				"SYSTEM_MAIN_ENGINE_THUNDER",
				"SYSTEM_MAIN_ENGINE_THUNDER",
				"SYSTEM_MAIN_ENGINE_THUNDER",
				"SYSTEM_MAIN_ENGINE_SOYUZ",
				"SYSTEM_MAIN_ENGINE_SOYUZ",
				"SYSTEM_MAIN_ENGINE_SOYUZ",
				"SYSTEM_MAIN_ENGINE_SOYUZ",
				"SYSTEM_MAIN_ENGINE_SOYUZ",
				"SYSTEM_MAIN_ENGINE_SOYUZ",
				"SYSTEM_MAIN_ENGINE_PMS",
				"SYSTEM_MAIN_ENGINE_PMS",
				"SYSTEM_MAIN_ENGINE_PMS",
				"SYSTEM_MAIN_ENGINE_PMS",
				"SYSTEM_MAIN_ENGINE_PIN1200",
				"SYSTEM_MAIN_ENGINE_PIN1200",
				"SYSTEM_MAIN_ENGINE_CRACK",
				"SYSTEM_MAIN_ENGINE_CRACK",
				"SYSTEM_MAIN_ENGINE_NANI",
			],
			"chance":0.2
		},
	]
}

const GENERIC_SHIPS = { # This adds potential for IoE equipment that can be fitted to all ships
	"ship_name":PoolStringArray([
		"TRTL",
		"PROSPECTOR",
		"EIME",
		"COTHON",
		"AT225",
		"OCP209",
		"KITSUNE",
		"Tsukuyomi-Decom",
		"ATLAS-WASP",
		"MADCERF",
		"OBERON",
	]),
	"recurse_to_variants":true,
	"if_equipment":[
		{
			"slot":"cargo.consumableVat",
			"system":PoolStringArray(["SYSTEM_HULLVAT_CONSUMABLESPEED_1","SYSTEM_HULLVAT_CONSUMABLESPEED_2"]),
			"chance":0.2,
			"do_add_if":[
				"SYSTEM_DND_HARVTUG",
				"SYSTEM_DND_HARVHAUL",
				"SYSTEM_IROH",
				"SYSTEM_EMD17RF",
			],
		},
	],
	"if_tag":[
		{
			"slot":"cargo.consumableVat",
			"system":PoolStringArray([
				"SYSTEM_HULLVAT_AMMO_1",
				"SYSTEM_HULLVAT_AMMO_2",
			]),
			"do_add_if":[
				"EQUIPMENT_MASS_DRIVERS"
			],
			"check_numerics":{
				"ammo.capacity":{
					"operation":"<",
					"comparison":2000.0,
				}
			},
			"chance":0.5
		},
		{
			"slot":"cargo.consumableVat",
			"system":PoolStringArray([
				"SYSTEM_HULLVAT_AMMO_EXTEND_1",
				"SYSTEM_HULLVAT_AMMO_EXTEND_2",
				"SYSTEM_HULLVAT_AMMO_EXTEND_3",
			]),
			"do_add_if":[
				"EQUIPMENT_MASS_DRIVERS"
			],
			"check_numerics":{
				"ammo.capacity":{
					"operation":">",
					"comparison":1000.0,
				}
			},
			"chance":0.2
		},
		{
			"slot":"cargo.consumableVat",
			"system":PoolStringArray([
				"SYSTEM_HULLVAT_NANO_1",
				"SYSTEM_HULLVAT_NANO_2",
			]),
			"do_add_if":[
				"EQUIPMENT_NANODRONES"
			],
			"check_numerics":{
				"drones.capacity":{
					"operation":"<",
					"comparison":5000.0,
				}
			},
			"chance":0.5
		},
		{
			"slot":"cargo.consumableVat",
			"system":PoolStringArray([
				"SYSTEM_HULLVAT_NANO_EXTEND_1",
				"SYSTEM_HULLVAT_NANO_EXTEND_2",
				"SYSTEM_HULLVAT_NANO_EXTEND_3",
			]),
			"do_add_if":[
				"EQUIPMENT_NANODRONES"
			],
			"check_numerics":{
				"ammo.capacity":{
					"operation":">",
					"comparison":1000.0,
				}
			},
			"chance":0.2
		},
	],
	"random":[
		{
			"slot":"propulsion.rcs",
			"system":PoolStringArray([
				"SYSTEM_THRUSTER_BLAST",
				"SYSTEM_THRUSTER_PNTRM",
				"SYSTEM_THRUSTER_PIN150",
			]),
			"chance":0.2
		},
		{
			"slot":"cargo.consumableVat",
			"system":PoolStringArray([
				"SYSTEM_HULLVAT_PROP_1",
				"SYSTEM_HULLVAT_PROP_2",
			]),
			"check_numerics":{
				"fuel.capacity":{
					"operation":"<",
					"comparison":30000.0,
				}
			},
			"chance":0.5
		},
		{
			"slot":"cargo.consumableVat",
			"system":PoolStringArray([
				"SYSTEM_HULLVAT_PROP_EXTEND_1",
				"SYSTEM_HULLVAT_PROP_EXTEND_2",
				"SYSTEM_HULLVAT_PROP_EXTEND_3",
			]),
			"check_numerics":{
				"fuel.capacity":{
					"operation":">",
					"comparison":50000.0,
				}
			},
			"chance":0.2
		},
		{
			"slot":"crew.modifier",
			"system":PoolStringArray([
				"SYSTEM_CREW_ADD_BUNK",
				"SYSTEM_CREW_ADD_BUNK2",
				"SYSTEM_CREW_MOD_HOME",
				"SYSTEM_CREW_ADD_CAPSULE",
				"SYSTEM_CREW_MOD_KMX",
				"SYSTEM_CREW_MOD_OCM",
			]),
			"chance":0.5
		},
		{
			"slot":"reactor.power",
			"system":1.0,
			"chance":0.0375
		},
		{
			"slot":"turbine.power&&turbine.capacity",
			"system":20.0,
			"chance":0.0375
		},
		{
			"slot":"turbine.power && turbine.capacity",
			"system":160.0,
			"check_numerics":{
				"turbine.power":{
					"operation":"==",
					"comparison":200.0,
				}
			},
			"chance":0.25,
			"priority":10,
			"weight":3
		},
		{
			"slot":"turbine.power && turbine.capacity",
			"system":160.0,
			"check_numerics":{
				"turbine.power":{
					"operation":"==",
					"comparison":100.0,
				}
			},
			"chance":0.3,
			"priority":10,
			"weight":3
		},
		{
			"slot":"turbine.power && turbine.capacity",
			"system":320.0,
			"check_numerics":{
				"turbine.power":{
					"operation":"==",
					"comparison":500.0,
				}
			},
			"chance":0.5,
			"priority":10,
			"weight":3
		},
		{
			"slot":"turbine.power && turbine.capacity",
			"system":320.0,
			"check_numerics":{
				"turbine.power":{
					"operation":"==",
					"comparison":200.0,
				}
			},
			"chance":0.3,
			"priority":10,
			"weight":3
		},
		{
			"slot":"capacitor.capacity",
			"system":100.0,
			"chance":0.0025
		},
		{
			"slot":"capacitor.capacity",
			"system":700.0,
			"check_numerics":{
				"capacitor.capacity":{
					"operation":"==",
					"comparison":1000.0,
				}
			},
			"chance":0.4,
			"priority":10,
			"weight":3
		},
		{
			"slot":"capacitor.capacity",
			"system":1400.0,
			"check_numerics":{
				"capacitor.capacity":{
					"operation":"==",
					"comparison":1500.0,
				}
			},
			"chance":0.3,
			"priority":10,
			"weight":3
		},
		{
			"slot":"ammo.capacity && ammo.initial",
			"system":100.0,
			"check_numerics":{
				"ammo.capacity":{
					"operation":"<",
					"comparison":1000.0,
				}
			},
			"chance":0.5,
			"priority":10,
			"weight":3
		},
		{
			"slot":"cargo.equipment",
			"system":["SYSTEM_CARGO_MPU_FURN","SYSTEM_CARGO_MPU_BULK"],
			"chance":0.35
		},
	],
	"if_tag_in_slot":[
		{
			"slot":"aux.power",
			"system":"SYSTEM_AUX_MPD_1400",
			"do_add_if":{
				"aux.power":[
					"POWER_AUX_POWER_SLOT"
				]
			},
			"chance":0.4,
			"priority":10
		},
		{
			"slot":"aux.power",
			"system":"SYSTEM_IOE_AUX_HYBRID",
			"do_add_if":{
				"aux.power":[
					"POWER_AUX_POWER_SLOT"
				]
			},
			"chance":0.4,
			"priority":10,
			"weight":2
		},
		{
			"slot":"aux.power",
			"system":"SYSTEM_AUX_MPD_2000",
			"do_add_if":{
				"aux.power":[
					"POWER_AUX_POWER_SLOT"
				]
			},
			"chance":0.2,
			"priority":10
		},
		{
			"slot":"aux.power",
			"system":"SYSTEM_AUX_SMES_10K",
			"do_add_if":{
				"aux.power":[
					"POWER_AUX_POWER_SLOT"
				]
			},
			"chance":0.4,
			"priority":10,
			"weight":3
		},
		{
			"slot":"cargo.equipment",
			"system":PoolStringArray(["SYSTEM_CARGO_MPU_FURN","SYSTEM_CARGO_MPU_BULK"]),
			"do_add_if":{
				"cargo.equipment":[
					"CARGO_BAY"
				]
			},
			"chance":0.25,
			"priority":10,
			"weight":2
		},
	],
}

const PREPROC_COMPATIBLE_VARIANTS = { # Adds preprocessors for ship types where all variants work
	"ship_name":[
		"Tsukuyomi-Decom",
		"AT225",
		"COTHON",
		"MADCERF",
	],
	"recurse_to_variants":true,
	"if_tag_in_slot":[
		{
			"slot":"cargo.aux",
			"system":PoolStringArray([
				"SYSTEM_CARGO_PREPROC_P15",
				"SYSTEM_CARGO_PREPROC_P15",
				"SYSTEM_CARGO_PREPROC_P15",
				"SYSTEM_CARGO_PREPROC_P15",
				"SYSTEM_CARGO_BAFFLES",
				"SYSTEM_CARGO_BAFFLES",
				"SYSTEM_CARGO_PREPROC_M35",
				"SYSTEM_CARGO_PREPROC_M35",
				"SYSTEM_CARGO_PREPROC_M85",
				"SYSTEM_CARGO_AUX_PREPROC_0x30",
				"SYSTEM_CARGO_AUX_PREPROC_0x30",
				"SYSTEM_CARGO_AUX_PREPROC_0x30",
				"SYSTEM_CARGO_AUX_STORAGE_4K",
				"SYSTEM_CARGO_AUX_STORAGE_4K",
				"SYSTEM_CARGO_AUX_STORAGE_4K",
				"SYSTEM_CARGO_AUX_PREPROC_20x10",
				"SYSTEM_CARGO_AUX_PREPROC_20x10",
				"SYSTEM_CARGO_AUX_STORPROC_8K",
				"SYSTEM_CARGO_AUX_STORPROC_8K",
				"SYSTEM_CARGO_AUX_PREPROC_40x20",
				"SYSTEM_CARGO_AUX_PREPROC_40x20",
				"SYSTEM_CARGO_AUX_FAB",
				"SYSTEM_CARGO_AUX_FAB",
				"SYSTEM_CARGO_AUX_BIGFAB",
			]),
			"do_add_if":{
				"cargo.equipment":[
					"CARGO_BAY"
				]
			},
			"chance":0.5,
			"priority":10,
		},
	],
}
const PREPROC_NOTALLSUPPORTED = { # Adds preprocessors for K37s and Prospectors since some variants don't work
	"ship_name":[
		"TRTL-OCP",
		"TRTL-PEEPER",
		"TRTL-RAM",
		"OCP209-DD",
		"PIGEON-PROSPECTOR",
		"TRTL-LCB",
		"TRTL",
		"TRTL-44",
		"PROSPECTOR-VP",
		"PROSPECTOR",
		"PROSPECTOR-LUX",
		"PROSPECTOR-FAT",
	],
	"recurse_to_variants":false,
	"if_tag_in_slot":[
		{
			"slot":"cargo.aux",
			"system":PoolStringArray([
				"SYSTEM_CARGO_PREPROC_P15",
				"SYSTEM_CARGO_PREPROC_P15",
				"SYSTEM_CARGO_PREPROC_P15",
				"SYSTEM_CARGO_PREPROC_P15",
				"SYSTEM_CARGO_BAFFLES",
				"SYSTEM_CARGO_BAFFLES",
				"SYSTEM_CARGO_PREPROC_M35",
				"SYSTEM_CARGO_PREPROC_M35",
				"SYSTEM_CARGO_PREPROC_M85",
				"SYSTEM_CARGO_AUX_PREPROC_0x30",
				"SYSTEM_CARGO_AUX_PREPROC_0x30",
				"SYSTEM_CARGO_AUX_PREPROC_0x30",
				"SYSTEM_CARGO_AUX_STORAGE_4K",
				"SYSTEM_CARGO_AUX_STORAGE_4K",
				"SYSTEM_CARGO_AUX_STORAGE_4K",
				"SYSTEM_CARGO_AUX_PREPROC_20x10",
				"SYSTEM_CARGO_AUX_PREPROC_20x10",
				"SYSTEM_CARGO_AUX_STORPROC_8K",
				"SYSTEM_CARGO_AUX_STORPROC_8K",
				"SYSTEM_CARGO_AUX_PREPROC_40x20",
				"SYSTEM_CARGO_AUX_PREPROC_40x20",
				"SYSTEM_CARGO_AUX_FAB",
				"SYSTEM_CARGO_AUX_FAB",
				"SYSTEM_CARGO_AUX_BIGFAB",
			]),
			"do_add_if":{
				"cargo.equipment":[
					"CARGO_BAY"
				]
			},
			"chance":0.5,
			"priority":10
		},
	],
}

const DIVIDED_MHKS_RECURSE = {
	"ship_name":[
		"Tsukuyomi-Decom",
		"AT225",
		"MADCERF",
		"WASP",
		"EIME",
	],
	"recurse_to_variants":true,
	"random":[
		{
			"slot":"cargo.modifierDivided",
			"system":PoolStringArray([
				"HOLD_MODIFIER_AMORPH6",
				"HOLD_MODIFIER_6K",
				"HOLD_MODIFIER_4K",
				"HOLD_MODIFIER_2K",
				"HOLD_MODIFIER_AMORPH4",
				"HOLD_MODIFIER_AMORPH5",
			]),
			"chance":0.5,
			"priority":10
		},
	]
}

const COMBINED_MHKS_RECURSE = {
	"ship_name":[
		"OCP209",
		"KITSUNE",
	],
	"recurse_to_variants":true,
	"random":[
		{
			"slot":"cargo.modifierAmorphic",
			"system":PoolStringArray([
				"HOLD_MODIFIER_6K",
				"HOLD_MODIFIER_4K",
				"HOLD_MODIFIER_2K",
				"HOLD_MODIFIER_BOLTS",
			]),
			"chance":0.5,
			"priority":10
		},
	]
}
const DIVIDED_MHKS_INDIVIDUAL = {
	"ship_name":[
		"TRTL-LCB",
		"TRTL",
		"TRTL-T",
		"TRTL-R",
		"TRTL-44",
		"PROSPECTOR-VP",
		"PROSPECTOR",
		"PROSPECTOR-LUX",
		"PROSPECTOR-FAT",
		"COTHON",
		"COTHON-CHK",
		"COTHON-LND",
		"CK65",
		"COTHON-LUX",
		"PIGEON-PROSPECTOR",
		"TRTL-OCP",
	],
	"recurse_to_variants":false,
	"random":[
		{
			"slot":"cargo.modifierDivided",
			"system":PoolStringArray([
				"HOLD_MODIFIER_AMORPH6",
				"HOLD_MODIFIER_6K",
				"HOLD_MODIFIER_4K",
				"HOLD_MODIFIER_2K",
				"HOLD_MODIFIER_AMORPH4",
				"HOLD_MODIFIER_AMORPH5",
			]),
			"chance":0.5,
			"priority":10
		},
	]
}

const COMBINED_MHKS_INDIVIDUAL = {
	"ship_name":[
		"COTHON-V",
		"CK69",
		"OBERON",
		"TRTL-RAM",
		"TRTL-PEEPER",
	],
	"recurse_to_variants":false,
	"random":[
		{
			"slot":"cargo.modifierAmorphic",
			"system":PoolStringArray([
				"HOLD_MODIFIER_6K",
				"HOLD_MODIFIER_4K",
				"HOLD_MODIFIER_2K",
				"HOLD_MODIFIER_BOLTS",
			]),
			"do_add_if":{
				"cargo.equipment":[
					"CARGO_BAY"
				]
			},
			"chance":0.5,
			"priority":10
		},
	]
}
