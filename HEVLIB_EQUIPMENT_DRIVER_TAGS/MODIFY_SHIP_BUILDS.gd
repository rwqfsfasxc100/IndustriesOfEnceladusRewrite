extends Node

# FORMATTING NOTES - How each constant's dictionary should be formatted.
# 
# This driver is intended to provide additional logic to the creation of a random config of a ship.
# If you are looking to add a whole config definition, that can be done with ADD_SHIPS.gd and 
# creating a ship entry either without defining `path` or defining `path` as an empty string (`""`).
#
# `ship_name`: is the ship's name as it's defined within Shipyard.gd's ships dictionary,
# or the `name` property of a ship entry in ADD_SHIPS.gd.
# NOT a ship's shipName variable, e.g. SHIP_TRTL_T
#
# `recurse_for_alias`: (optional) whether the check should also be used for any ships that would
# alias to the same ship.
#  - Aliases are defined by Shipyard.gd's configAlias dictionary, or by the `alias` property
#    of a ship entry in ADD_SHIPS.gd.
#  - e.g. defining ship_name as either TRTL or TRTL-T would mean that it could be used by any ship
#    that was aliased to TRTL as well.
#  - Defaults to `false`
#
# `if_equipment_in_slot`: Array of dictionaries determining an equipment's addition if a specific
#  slot has either a specific item or an item within an array.
#  - slot: The slot that `system` will be added to. Can add to multiple slots at one by using an 
#    `and` keyword (used as `&&`)
#  - system: The equipment system name to be added to the slot
#  - do_add_if: Dictionary containing slots and the equipment that must be installed to 
#    that slot to warrant it's addition. Can also add an 'or' keyword (used as `||`) or 
#    an 'and' keyword (used as `&&`) to perform a check that must be true between one or
#    all defined slots. Order of operations is sequentially from left to right. Special`ALL`
#    sysname can be used to trigger `do_add_if` to be true if ANYTHING is contained within the slot
#    e.g. "slot":"weaponSlot.left.type&&weaponSlot.right.type":[...]
#  - dont_add_if: Dictionary containing slots and the equipment that must NOT be installed to 
#    that slot to warrant it's addition. Can use the same operators as `do_add_if`.
#  - check_numerics: Dictionary containing numeric equipment slots and checks that must pass to be
#    able to add this equipment item. This check will check a provided slot for a numeric value, 
#    and then perform an expression against it (==, >, <, >=, <=). Any expression can have an `!`
#    appended before it to make it a not statement (!==, !>, !<=). This operation can check strings
#    that would be valid numbers.
#    - `operation` or `expression`: defaults to `==`
#    - `comparison` or `value`: defaults to `0`
#  - chance: Numeric chance for the change to be made if all filters are passed.
#    Must be between 0.0 and 1.0. Defaults to `0.1`
#  - priority: Integer that defines which order the modifications defined within each entry will be
#    ordered by, instead of just being in the order of how the handlers and handler entries are
#    defined. Defaults to `0`
# 
# `if_tag_in_slot`: Array of dictionaries determining an equipment's addition if a specific
#  slot has equipment installed that belongs to a specific tag or a tag within an array.
#  - Equivalent formatting to `if_equipment_in_slot`, just using tags in the place of system names
#    within the `do_add_if` and `dont_add_if` dictionaries.
#  - Tags are defined within the `equipment_types` constant within the following script:
#    res://HevLib/scenes/equipment/vanilla_defaults/slot_tagging.gd
#  - They can also be defined with the `equipment_types` array within the `EQUIPMENT_TAGS.gd`'s
#    EQUIPMENT_TAGS dictionary constant
# 
# `random`: Simple random chance for an item to be added to a slot without any equipment filtering.
#  Can still make use of numeric filtering however, as equipment may still need specific numerics
#  to run.
#  - slot: The slot that `system` will be added to. Can add to multiple slots at one by using an 
#    `and` keyword (used as `&&`)
#  - system: The equipment system name to be added to the slot
#  - check_numerics: Dictionary containing numeric equipment slots and checks that must pass to be
#    able to add this equipment item. This check will check a provided slot for a numeric value, 
#    and then perform an expression against it (==, >, <, >=, <=). Any expression can have an `!`
#    appended before it to make it a not statement (!==, !>, !<=). This operation can check strings
#    that would be valid numbers.
#  - chance: Numeric chance for the change to be made. Must be between 0.0 and 1.0. Defaults to 
#    `0.1`
#  - priority: Integer that defines which order the modifications defined within each entry will be
#    ordered by, instead of just being in the order of how the handlers and handler entries are
#    defined. Defaults to `0`
# 
# `if_equipment`: Similar to if_equipment_in_slot, however the check happens for all slots instead
# of a defined set of slots.
#  - slot: The slot that `system` will be added to. Can add to multiple slots at one by using an 
#    `and` keyword (used as `&&`)
#  - system: The equipment system name to be added to the slot
#  - do_add_if: Array containing the equipment that must be installed to warrant it's addition.
#    Can also add an 'or' keyword (used as `||`) or an 'and' keyword (used as `&&`) to perform
#    a check that must be true between one or all defined slots. Order of operations is
#    sequentially from left to right. Special `ALL` sysname can be used to trigger `do_add_if`
#    to be true if ANYTHING is contained within the slot.
#    e.g. "slot":"weaponSlot.left.type&&weaponSlot.right.type":[...]
#  - dont_add_if: Array containing the equipment that must NOT be installed to warrant it's
#    addition. Can use the same operators as `do_add_if`.
#  - check_numerics: Dictionary containing numeric equipment slots and checks that must pass to be
#    able to add this equipment item. This check will check a provided slot for a numeric value, 
#    and then perform an expression against it (==, >, <, >=, <=). Any expression can have an `!`
#    appended before it to make it a not statement (!==, !>, !<=). This operation can check strings
#    that would be valid numbers.
#  - chance: Numeric chance for the change to be made if all filters are passed.
#    Must be between 0.0 and 1.0. Defaults to `0.1`
#  - priority: Integer that defines which order the modifications defined within each entry will be
#    ordered by, instead of just being in the order of how the handlers and handler entries are
#    defined. Defaults to `0`
# 
# `if_tag`: Similar to if_equipment_in_slot, however the check happens for all slots instead
# of a defined set of slots.
#  - Equivalent formatting to `if_equipment`, just using tags in the place of system names
#    within the `do_add_if` and `dont_add_if` dictionaries
#  - Tags are defined within the `equipment_types` constant within the following script:
#    res://HevLib/scenes/equipment/vanilla_defaults/slot_tagging.gd
#  - They can also be defined with the `equipment_types` array within the `EQUIPMENT_TAGS.gd`'s
#    EQUIPMENT_TAGS dictionary constant
# 

const SHIP_TRTL = {
	"ship_name":"TRTL",
	"recurse_for_alias":true,
	"if_equipment_in_slot":[
		{
			"slot":"weaponSlot.left.type&&weaponSlot.right.type",
			"system":"SYSTEM_DND_HARVHAUL",
			"dont_add_if":{
				"weaponSlot.main.type":[
					"SYSTEM_SALVAGE_ARM_LIGHT",
					"SYSTEM_SALVAGE_ARM_LONG",
					"SYSTEM_SALVAGE_ARM",
					"SYSTEM_SALVAGE_ARM_HEAVY",
				]
			},
			"chance":0.25,
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
			"chance":0.15,
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
			"system":"SYSTEM_SALVAGE_ARM_HEAVY",
		},
		{
			"slot":"weaponSlot.main.type",
			"system":"SYSTEM_SALVAGE_ARM_LONG",
		},
		{
			"slot":"weaponSlot.main.type",
			"system":"SYSTEM_SALVAGE_ARM_LIGHT",
			"chance":0.2
		},
		{
			"slot":"ammo.capacity",
			"system":100.0,
			"check_numerics":{
				"ammo.capacity":{
					"operation":"<",
					"comparison":1000.0,
				}
			},
			"chance":0.5
		},
		{
			"slot":"propulsion.main",
			"system":"SYSTEM_MAIN_ENGINE_PIN1200",
			"chance":0.05
		},
		{
			"slot":"reactor.power",
			"system":1.0,
			"chance":0.01
		},
		{
			"slot":"propulsion.main",
			"system":"SYSTEM_MAIN_ENGINE_NANI",
			"chance":0.033
		},
		{
			"slot":"cargo.consumableVat",
			"system":"SYSTEM_HULLVAT_AMMO_EXTEND_2",
			"chance":0.025
		},
		{
			"slot":"cargo.consumableVat",
			"system":"SYSTEM_HULLVAT_NANO_EXTEND_1",
			"chance":0.025
		},
		{
			"slot":"cargo.consumableVat",
			"system":"SYSTEM_HULLVAT_CONSUMABLESPEED_1",
			"chance":0.05
		},
		{
			"slot":"cargo.consumableVat",
			"system":"SYSTEM_HULLVAT_CONSUMABLESPEED_2",
			"chance":0.025
		},
		{
			"slot":"cargo.consumableVat",
			"system":"SYSTEM_HULLVAT_PROP_2",
			"chance":0.025
		},
		{
			"slot":"propulsion.rcs",
			"system":"SYSTEM_THRUSTER_BLAST",
			"chance":0.05
		},
		{
			"slot":"propulsion.rcs",
			"system":"SYSTEM_THRUSTER_PNTRM",
			"chance":0.05
		},
		{
			"slot":"propulsion.rcs",
			"system":"SYSTEM_THRUSTER_PIN150",
			"chance":0.05
		},
		{
			"slot":"crew.modifier",
			"system":"SYSTEM_CREW_ADD_BUNK",
			"chance":0.05
		},
		{
			"slot":"crew.modifier",
			"system":"SYSTEM_CREW_ADD_BUNK2",
			"chance":0.05
		},
		{
			"slot":"crew.modifier",
			"system":"SYSTEM_CREW_MOD_HOME",
			"chance":0.05
		},
		{
			"slot":"crew.modifier",
			"system":"SYSTEM_CREW_ADD_CAPSULE",
			"chance":0.05
		},
		{
			"slot":"crew.modifier",
			"system":"SYSTEM_CREW_MOD_KMX",
			"chance":0.05
		},
		{
			"slot":"crew.modifier",
			"system":"SYSTEM_CREW_MOD_OCM",
			"chance":0.05
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
			"chance":0.05,
		},
		{
			"slot":"weaponSlot.right.type && weaponSlot.left.type && weaponSlot.middle.type",
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
