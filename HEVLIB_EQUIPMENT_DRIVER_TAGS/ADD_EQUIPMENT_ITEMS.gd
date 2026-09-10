# [license]
# 3-Clause BSD NON-AI License
# 
# Copyright 2026 __hev (Benjamin Buckhurst)
# 
# Redistribution and use in source and binary forms, with or without modification,
# are permitted provided that the following conditions are met:
# 
# 1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
# 
# 2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer
# in the documentation and/or other materials provided with the distribution.
# 
# 3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products
# derived from this software without specific prior written permission.
# 
# 4. The source code and the binary form, and any modifications made to them may not be used for the purpose of input data, reference code snippets and/or files, OR used in the training of, or improvement of machine learning algorithms,
# including but not limited to artificial intelligence, natural language processing, or data mining. This condition applies to any derivatives,
# modifications, or updates based on the Software code. Any usage of the source code or the binary form may not be present in any form as data fed, inputted, or provided to an AI, or present in any AI-training dataset is considered a breach of this License.
# 
# 5. Any projects deriving work from this project MUST include a copy of this license and all other license and/or copyright agreements posed within other source material,
# all of which must be followed to its entirety. Failure to follow these licenses prohibit all modification and redistribution of the material until all licensing has been reinstated.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS “AS IS” AND ANY EXPRESS OR IMPLIED WARRANTIES,
# INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
# IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY,
# OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
# OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
# EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
# [/license]

const _000 = {
	"system":"SYSTEM_SALVAGE_ARM_LIGHT",
	"price":87500,
	"manual":"SYSTEM_SALVAGE_ARM_MANUAL",
	"test_protocol":"arm",
	"warn_if_electric_below":100,
	"equipment_type":"EQUIPMENT_MANIPULATOR_LIGHT",
	"slot_type":"HARDPOINT",
	"alignment":"ALIGNMENT_CENTER",
}

const _001 = {
	"system":"SYSTEM_SALVAGE_ARM_LIGHT-L",
	"price":87500,
	"name_override":"SYSTEM_SALVAGE_ARM_LIGHT",
	"manual":"SYSTEM_SALVAGE_ARM_MANUAL",
	"test_protocol":"arm",
	"warn_if_electric_below":100,
	"equipment_type":"EQUIPMENT_MANIPULATOR_LIGHT",
	"slot_type":"HARDPOINT",
	"alignment":"ALIGNMENT_LEFT",
}

const _002 = {
	"system":"SYSTEM_SALVAGE_ARM_LIGHT-R",
	"price":87500,
	"name_override":"SYSTEM_SALVAGE_ARM_LIGHT",
	"manual":"SYSTEM_SALVAGE_ARM_MANUAL",
	"test_protocol":"arm",
	"warn_if_electric_below":100,
	"equipment_type":"EQUIPMENT_MANIPULATOR_LIGHT",
	"slot_type":"HARDPOINT",
	"alignment":"ALIGNMENT_RIGHT",
}

const _003 = {
	"system":"SYSTEM_SALVAGE_ARM_HEAVY",
	"manual":"SYSTEM_SALVAGE_ARM_MANUAL",
	"price":125000,
	"test_protocol":"arm",
	"warn_if_electric_below":100,
	"slot_type":"HARDPOINT",
	"alignment":"ALIGNMENT_CENTER",
	"equipment_type":"EQUIPMENT_MANIPULATION_ARMS",
}

const _004 = {
	"system":"SYSTEM_SALVAGE_ARM_HEAVY-L",
	"price":125000,
	"name_override":"SYSTEM_SALVAGE_ARM_HEAVY",
	"manual":"SYSTEM_SALVAGE_ARM_MANUAL",
	"test_protocol":"arm",
	"warn_if_electric_below":100,
	"equipment_type":"EQUIPMENT_MANIPULATION_ARMS",
	"slot_type":"HARDPOINT",
	"alignment":"ALIGNMENT_LEFT",
}

const _005 = {
	"system":"SYSTEM_SALVAGE_ARM_HEAVY-R",
	"price":125000,
	"name_override":"SYSTEM_SALVAGE_ARM_HEAVY",
	"manual":"SYSTEM_SALVAGE_ARM_MANUAL",
	"test_protocol":"arm",
	"warn_if_electric_below":100,
	"equipment_type":"EQUIPMENT_MANIPULATION_ARMS",
	"slot_type":"HARDPOINT",
	"alignment":"ALIGNMENT_RIGHT",
}

const _006 = {
	"system":"SYSTEM_MWTIGHTBEAM",
	"price":165000,
	"manual":"SYSTEM_MWG_MANUAL",
	"equipment_type":"EQUIPMENT_MICROWAVES",
	"slot_type":"HARDPOINT",
}

const _007 = {
	"system":"SYSTEM_MWTIGHTBEAM_PDT",
	"price":265000,
	"manual":"SYSTEM_PDMWG_MANUAL",
	"test_protocol":"pdt",
	"equipment_type":"EQUIPMENT_TURRETS",
	"slot_type":"HARDPOINT",
	"alignment":"ALIGNMENT_CENTER",
}

const _008 = {
	"system":"SYSTEM_MWTIGHTBEAM_PDT-L",
	"price":265000,
	"name_override":"SYSTEM_MWTIGHTBEAM_PDT",
	"manual":"SYSTEM_PDMWG_MANUAL",
	"test_protocol":"pdt",
	"equipment_type":"EQUIPMENT_TURRETS",
	"slot_type":"HARDPOINT",
	"alignment":"ALIGNMENT_LEFT",
}

const _009 = {
	"system":"SYSTEM_MWTIGHTBEAM_PDT-R",
	"name_override":"SYSTEM_MWTIGHTBEAM_PDT",
	"manual":"SYSTEM_PDMWG_MANUAL",
	"price":265000,
	"test_protocol":"pdt",
	"slot_type":"HARDPOINT",
	"alignment":"ALIGNMENT_RIGHT",
	"equipment_type":"EQUIPMENT_TURRETS",
}

const _010 = {
	"system":"SYSTEM_PDTL",
	"price":300000,
	"manual":"SYSTEM_PDTL_MANUAL",
	"test_protocol":"pdt",
	"story_flag":"hardware.nakamura",
	"story_flag_min":5,
	"warn_if_electric_below":100,
	"equipment_type":"EQUIPMENT_TURRETS",
	"slot_type":"HARDPOINT",
	"alignment":"ALIGNMENT_CENTER",
}

const _011 = {
	"system":"SYSTEM_PDTL-L",
	"name_override":"SYSTEM_PDTL",
	"manual":"SYSTEM_PDTL_MANUAL",
	"price":300000,
	"test_protocol":"pdt",
	"slot_type":"HARDPOINT",
	"alignment":"ALIGNMENT_LEFT",
	"warn_if_electric_below":100,
	"story_flag":"hardware.nakamura",
	"story_flag_min":5,
	"equipment_type":"EQUIPMENT_TURRETS",
}

const _012 = {
	"system":"SYSTEM_PDTL-R",
	"price":300000,
	"name_override":"SYSTEM_PDTL",
	"manual":"SYSTEM_PDTL_MANUAL",
	"test_protocol":"pdt",
	"story_flag":"hardware.nakamura",
	"story_flag_min":5,
	"warn_if_electric_below":100,
	"equipment_type":"EQUIPMENT_TURRETS",
	"slot_type":"HARDPOINT",
	"alignment":"ALIGNMENT_RIGHT",
}

const _013 = {
	"system":"SYSTEM_DND_HARVTUG",
	"price":385000,
	"manual":"SYSTEM_DND_TS_MANUAL",
	"test_protocol":"drone",
	"warn_if_electric_below":50,
	"equipment_type":"EQUIPMENT_NANODRONES",
	"slot_type":"HARDPOINT",
}

const _014 = {
	"system":"SYSTEM_DND_HARVHAUL",
	"manual":"SYSTEM_DND_HAUL_MANUAL",
	"price":525000,
	"test_protocol":"drone",
	"warn_if_electric_below":50,
	"slot_type":"HARDPOINT",
	"equipment_type":"EQUIPMENT_NANODRONES",
}

const _015 = {
	"system":"SYSTEM_EXODYN-L",
	"name_override":"SYSTEM_EXODYN",
	"manual":"SYSTEM_EXSTORAGE_MANUAL",
	"price":132500,
	"test_protocol":"detach",
	"slot_type":"HARDPOINT",
	"alignment":"ALIGNMENT_LEFT",
	"equipment_type":"EQUIPMENT_CARGO_CONTAINER",
}

const _016 = {
	"system":"SYSTEM_EXODYN-R",
	"name_override":"SYSTEM_EXODYN",
	"manual":"SYSTEM_EXSTORAGE_MANUAL",
	"price":132500,
	"test_protocol":"detach",
	"slot_type":"HARDPOINT",
	"alignment":"ALIGNMENT_RIGHT",
	"equipment_type":"EQUIPMENT_CARGO_CONTAINER",
}

const _017 = {
	"num_val":200,
	"system":"SYSTEM_AMMO_200",
	"manual":"SYSTEM_AMMO_MANUAL",
	"price":500,
	"test_protocol":"takeoff",
	"slot_type":"MASS_DRIVER_AMMUNITION",
	"equipment_type":"CONSUMABLE_MASS_DRIVER_AMMUNITION",
	"REGISTER_AMMO":{
		"delivery_speed":100
	},
}

const _018 = {
	"num_val":100000,
	"system":"SYSTEM_AMMO_100000",
	"manual":"SYSTEM_AMMO_MANUAL",
	"price":750000,
	"test_protocol":"takeoff",
	"slot_type":"MASS_DRIVER_AMMUNITION",
	"equipment_type":"CONSUMABLE_MASS_DRIVER_AMMUNITION",
}

const _019 = {
	"num_val":100000,
	"system":"SYSTEM_DND_100000",
	"manual":"SYSTEM_DND_MANUAL",
	"price":2000000,
	"test_protocol":"drone",
	"slot_type":"NANODRONE_STORAGE",
	"equipment_type":"CONSUMABLE_NANODRONES",
}

const _020 = {
	"num_val":1000000,
	"system":"SYSTEM_FUEL_1000000",
	"manual":"SYSTEM_FUEL_MANUAL",
	"price":750000,
	"test_protocol":"takeoff",
	"slot_type":"PROPELLANT_TANK",
	"equipment_type":"CONSUMABLE_PROPELLANT",
}

const _021 = {
	"num_val":2000000,
	"system":"SYSTEM_FUEL_2000000",
	"manual":"SYSTEM_FUEL_MANUAL",
	"price":1950000,
	"test_protocol":"takeoff",
	"slot_type":"PROPELLANT_TANK",
	"equipment_type":"CONSUMABLE_PROPELLANT",
}

const _022 = {
	"system":"SYSTEM_THRUSTER_PNTRM",
	"manual":"SYSTEM_THRUSTER_MANUAL",
	"price":22750,
	"test_protocol":"autopilot",
	"warn_if_thermal_below":0.9,
	"warn_if_electric_below":40,
	"slot_type":"STANDARD_REACTION_CONTROL_THRUSTERS",
	"equipment_type":"THRUSTER_STANDARD_REACTION_CONTROL_THRUSTERS",
}

const _023 = {
	"system":"SYSTEM_THRUSTER_BLAST",
	"manual":"SYSTEM_THRUSTER_MANUAL",
	"price":15500,
	"test_protocol":"autopilot",
	"warn_if_thermal_below":3,
	"warn_if_electric_below":72,
	"slot_type":"STANDARD_REACTION_CONTROL_THRUSTERS",
	"equipment_type":"THRUSTER_STANDARD_REACTION_CONTROL_THRUSTERS",
}

const _024 = {
	"system":"SYSTEM_THRUSTER_PIN150",
	"manual":"SYSTEM_THRUSTER_MANUAL",
	"price":31500,
	"test_protocol":"autopilot",
	"warn_if_electric_below":90,
	"slot_type":"STANDARD_REACTION_CONTROL_THRUSTERS",
	"equipment_type":"THRUSTER_STANDARD_REACTION_CONTROL_THRUSTERS",
}

const _025 = {
	"system":"SYSTEM_MAIN_ENGINE_SOYUZ",
	"manual":"SYSTEM_MAIN_ENGINE_MANUAL",
	"price":35000,
	"test_protocol":"autopilot",
	"warn_if_electric_below":60,
	"slot_type":"STANDARD_MAIN_ENGINE",
	"equipment_type":"THRUSTER_STANDARD_MAIN_ENGINE",
}

const _026 = {
	"system":"SYSTEM_MAIN_ENGINE_THUNDER",
	"manual":"SYSTEM_MAIN_ENGINE_MANUAL",
	"price":102000,
	"test_protocol":"autopilot",
	"story_flag":"ringrace",
	"story_flag_min":1,
	"warn_if_electric_below":100,
	"slot_type":"STANDARD_MAIN_ENGINE",
	"equipment_type":"THRUSTER_STANDARD_MAIN_ENGINE",
}

const _027 = {
	"system":"SYSTEM_MAIN_ENGINE_GEMINI",
	"manual":"SYSTEM_MAIN_ENGINE_MANUAL",
	"price":345000,
	"test_protocol":"autopilot",
	"warn_if_thermal_below":5.6,
	"warn_if_electric_below":250,
	"slot_type":"STANDARD_MAIN_ENGINE",
	"equipment_type":"THRUSTER_STANDARD_MAIN_ENGINE",
}

const _028 = {
	"system":"SYSTEM_MAIN_ENGINE_PMS",
	"manual":"SYSTEM_MAIN_ENGINE_MANUAL",
	"price":4000,
	"test_protocol":"autopilot",
	"warn_if_thermal_below":4.5,
	"warn_if_electric_below":20,
	"slot_type":"STANDARD_MAIN_ENGINE",
	"equipment_type":"THRUSTER_STANDARD_MAIN_ENGINE",
}

const _029 = {
	"system":"SYSTEM_MAIN_ENGINE_NANI",
	"manual":"SYSTEM_MAIN_ENGINE_MANUAL",
	"price":425000,
	"test_protocol":"autopilot",
	"warn_if_electric_below":200,
	"slot_type":"STANDARD_MAIN_ENGINE",
	"equipment_type":"THRUSTER_STANDARD_MAIN_ENGINE",
}

const _030 = {
	"system":"SYSTEM_MAIN_ENGINE_PIN1200",
	"manual":"SYSTEM_MAIN_ENGINE_MANUAL",
	"price":1180000,
	"test_protocol":"autopilot",
	"warn_if_electric_below":550,
	"slot_type":"STANDARD_MAIN_ENGINE",
	"equipment_type":"THRUSTER_STANDARD_MAIN_ENGINE",
}

const _031 = {
	"system":"SYSTEM_MAIN_ENGINE_CRACK",
	"manual":"SYSTEM_MAIN_ENGINE_MANUAL",
	"price":1575000,
	"test_protocol":"autopilot",
	"warn_if_electric_below":445,
	"slot_type":"STANDARD_MAIN_ENGINE",
	"equipment_type":"THRUSTER_STANDARD_MAIN_ENGINE",
}

const _032 = {
	"num_val":1,
	"system":"SYSTEM_RODS_1",
	"manual":"SYSTEM_RODS_MANUAL",
	"price":20000,
	"test_protocol":"takeoff",
	"slot_type":"FISSION_RODS",
	"equipment_type":"POWER_FISSION_RODS",
}

const _033 = {
	"num_val":100,
	"system":"SYSTEM_CAPACITOR_100",
	"manual":"SYSTEM_CAPACITOR_MANUAL",
	"price":4000,
	"test_protocol":"bootup",
	"slot_type":"ULTRACAPACITOR",
	"equipment_type":"POWER_ULTRACAPACITOR",
}

const _034 = {
	"num_val":700,
	"system":"SYSTEM_CAPACITOR_700",
	"manual":"SYSTEM_CAPACITOR_MANUAL",
	"price":135000,
	"test_protocol":"bootup",
	"slot_type":"ULTRACAPACITOR",
	"equipment_type":"POWER_ULTRACAPACITOR",
}

const _035 = {
	"num_val":1400,
	"system":"SYSTEM_CAPACITOR_1400",
	"manual":"SYSTEM_CAPACITOR_MANUAL",
	"price":292000,
	"test_protocol":"bootup",
	"slot_type":"ULTRACAPACITOR",
	"equipment_type":"POWER_ULTRACAPACITOR",
}

const _036 = {
	"num_val":20,
	"system":"SYSTEM_TURBINE_20",
	"manual":"SYSTEM_TURBINE_MANUAL",
	"price":5000,
	"test_protocol":"bootup",
	"slot_type":"FISSION_TURBINE",
	"equipment_type":"POWER_FISSION_TURBINE",
}

const _037 = {
	"num_val":160,
	"system":"SYSTEM_TURBINE_160",
	"manual":"SYSTEM_TURBINE_MANUAL",
	"price":95000,
	"test_protocol":"bootup",
	"slot_type":"FISSION_TURBINE",
	"equipment_type":"POWER_FISSION_TURBINE",
}

const _038 = {
	"num_val":320,
	"system":"SYSTEM_TURBINE_320",
	"manual":"SYSTEM_TURBINE_MANUAL",
	"price":200000,
	"test_protocol":"bootup",
	"slot_type":"FISSION_TURBINE",
	"equipment_type":"POWER_FISSION_TURBINE",
}

const _039 = {
	"system":"SYSTEM_AUX_MPD_1400",
	"manual":"SYSTEM_AUX_MPD_MANUAL",
	"price":1150000,
	"test_protocol":"bootup",
	"slot_type":"AUX_POWER_SLOT",
	"equipment_type":"POWER_AUX_POWER_SLOT",
	"auxiliary_power_unit":{
		"slots":[
			"aux.power"
		],
		"type":"MPDG",
		"repair_time":1,
		"fix_price":5000,
		"fix_time":4,
		"command":"",
		"power_draw":50000,
		"thermal":250000,
		"power_supply":1400000,
		"windup_time":3,
		"mass":12250
	},
}

const _040 = {
	"system":"SYSTEM_IOE_AUX_HYBRID",
	"manual":"SYSTEM_IOE_AUX_HYBRID_MANUAL",
	"price":915000,
	"test_protocol":"bootup",
	"slot_type":"AUX_POWER_SLOT",
	"equipment_type":"POWER_AUX_POWER_SLOT",
	"auxiliary_power_unit":{
		"slots":[
			"aux.power"
		],
		"type":"AUX_HYBRID",
		"system":"SYSTEM_IOE_AUX_HYBRID",
		"price":915000,
		"smes_power_draw":100000,
		"smes_power_supply":2000000,
		"smes_capacity":13500000,
		"mpdg_power_draw":35000,
		"mpdg_thermal":750000,
		"mpdg_power_supply":475000,
		"mass":7500
	},
}

const _041 = {
	"system":"SYSTEM_AUX_MPD_2000",
	"manual":"SYSTEM_AUX_MPD_MANUAL",
	"price":1425000,
	"test_protocol":"bootup",
	"slot_type":"AUX_POWER_SLOT",
	"equipment_type":"POWER_AUX_POWER_SLOT",
}

const _042 = {
	"system":"SYSTEM_AUX_SMES_10K",
	"manual":"SYSTEM_AUX_SMES_MANUAL",
	"price":140000,
	"test_protocol":"bootup",
	"slot_type":"AUX_POWER_SLOT",
	"equipment_type":"POWER_AUX_POWER_SLOT",
}

const _043 = {
	"system":"SYSTEM_CARGO_MPU_FURN",
	"manual":"SYSTEM_CARGO_MPU_MANUAL",
	"price":650000,
	"test_protocol":"cargo",
	"capability_lock":true,
	"slot_type":"CARGO_BAY",
	"equipment_type":"CARGO_BAY",
}

const _044 = {
	"system":"SYSTEM_CARGO_MPU_BULK",
	"manual":"SYSTEM_CARGO_MPU_MANUAL",
	"price":1150000,
	"test_protocol":"cargo",
	"capability_lock":true,
	"slot_type":"CARGO_BAY",
	"equipment_type":"CARGO_BAY",
}

const _045 = {
	"system":"SYSTEM_CARGO_MOD_BOLTS",
	"price":2500,
	"test_protocol":"takeoff",
	"slot_type":"HOLD_MODIFIERS",
	"restriction":"HOLDMODIFIER_AMORPHIC",
	"equipment_type":"EQUIPMENT_HOLD_MODIFIER",
}

const _046 = {
	"system":"SYSTEM_CARGO_MOD_2K",
	"manual":"SYSTEM_CARGO_MOD_BOTH_MANUAL",
	"price":45000,
	"test_protocol":"takeoff",
	"slot_type":"HOLD_MODIFIERS",
	"equipment_type":"EQUIPMENT_HOLD_MODIFIER",
}

const _047 = {
	"system":"SYSTEM_CARGO_MOD_AMORPH4",
	"manual":"SYSTEM_CARGO_MOD_AMORPH_MANUAL",
	"price":30000,
	"test_protocol":"takeoff",
	"slot_type":"HOLD_MODIFIERS",
	"restriction":"HOLDMODIFIER_DIVIDED",
	"equipment_type":"EQUIPMENT_HOLD_MODIFIER",
}

const _048 = {
	"system":"SYSTEM_CARGO_MOD_4K",
	"manual":"SYSTEM_CARGO_MOD_BOTH_MANUAL",
	"price":150000,
	"test_protocol":"takeoff",
	"slot_type":"HOLD_MODIFIERS",
	"equipment_type":"EQUIPMENT_HOLD_MODIFIER",
}

const _049 = {
	"system":"SYSTEM_CARGO_MOD_AMORPH5",
	"manual":"SYSTEM_CARGO_MOD_AMORPH_MANUAL",
	"price":275000,
	"test_protocol":"takeoff",
	"slot_type":"HOLD_MODIFIERS",
	"restriction":"HOLDMODIFIER_DIVIDED",
	"equipment_type":"EQUIPMENT_HOLD_MODIFIER",
}

const _050 = {
	"system":"SYSTEM_CARGO_MOD_6K",
	"manual":"SYSTEM_CARGO_MOD_BOTH_MANUAL",
	"price":350000,
	"test_protocol":"takeoff",
	"slot_type":"HOLD_MODIFIERS",
	"equipment_type":"EQUIPMENT_HOLD_MODIFIER",
}

const _051 = {
	"system":"SYSTEM_CARGO_MOD_AMORPH6",
	"manual":"SYSTEM_CARGO_MOD_AMORPH_MANUAL",
	"price":445000,
	"test_protocol":"takeoff",
	"slot_type":"HOLD_MODIFIERS",
	"restriction":"HOLDMODIFIER_DIVIDED",
	"equipment_type":"EQUIPMENT_HOLD_MODIFIER",
}

const _052 = {
	"system":"SYSTEM_CARGO_BAFFLES",
	"manual":"SYSTEM_CARGO_BAFFLES_MANUAL",
	"price":10000,
	"test_protocol":"cargo",
	"capability_lock":true,
	"slot_type":"HOLD_MODIFIERS",
	"equipment_type":"EQUIPMENT_HOLD_MODIFIER",
}

const _053 = {
	"system":"SYSTEM_CARGO_BAFFLES",
	"manual":"SYSTEM_CARGO_BAFFLES_MANUAL",
	"price":15000,
	"test_protocol":"cargo",
	"capability_lock":true,
	"slot_type":"CARGO_ACCESSORIES",
	"equipment_type":"CARGO_ACCESSORIES",
}

const _054 = {
	"system":"SYSTEM_CARGO_PREPROC_P15",
	"price":55000,
	"manual":"SYSTEM_CARGO_AUX_PREPROC_SPEED_ADD_MANUAL",
	"test_protocol":"cargo",
	"equipment_type":"EQUIPMENT_MASS_DRIVERS",
	"slot_type":"CARGO_ACCESSORIES",
}

const _055 = {
	"system":"SYSTEM_CARGO_PREPROC_M35",
	"price":815000,
	"manual":"SYSTEM_CARGO_AUX_PREPROC_SPEED_ADD_AND_MULTI_MANUAL",
	"test_protocol":"cargo",
	"equipment_type":"CARGO_ACCESSORIES",
	"slot_type":"CARGO_ACCESSORIES",
}

const _056 = {
	"system":"SYSTEM_CARGO_PREPROC_M85",
	"manual":"SYSTEM_CARGO_AUX_PREPROC_SPEED_MULTI_MANUAL",
	"price":2750000,
	"test_protocol":"cargo",
	"slot_type":"CARGO_ACCESSORIES",
	"equipment_type":"CARGO_ACCESSORIES",
}

const _057 = {
	"system":"SYSTEM_CARGO_AUX_PREPROC_0x30",
	"manual":"SYSTEM_CARGO_AUX_PREPROC_NOMINERAL_MANUAL",
	"price":32000,
	"test_protocol":"cargo",
	"slot_type":"CARGO_ACCESSORIES",
	"equipment_type":"CARGO_ACCESSORIES",
}

const _058 = {
	"system":"SYSTEM_CARGO_AUX_STORAGE_4K",
	"manual":"SYSTEM_CARGO_AUX_STORAGE_MANUAL",
	"price":175000,
	"test_protocol":"cargo",
	"slot_type":"CARGO_ACCESSORIES",
	"equipment_type":"CARGO_ACCESSORIES",
}

const _059 = {
	"system":"SYSTEM_CARGO_AUX_PREPROC_20x10",
	"manual":"SYSTEM_CARGO_AUX_PREPROC_MANUAL",
	"price":225000,
	"test_protocol":"cargo",
	"slot_type":"CARGO_ACCESSORIES",
	"equipment_type":"CARGO_ACCESSORIES",
}

const _060 = {
	"system":"SYSTEM_CARGO_AUX_STORPROC_8K",
	"manual":"SYSTEM_CARGO_AUX_STORPROC_MANUAL",
	"price":435000,
	"test_protocol":"cargo",
	"slot_type":"CARGO_ACCESSORIES",
	"equipment_type":"CARGO_ACCESSORIES",
}

const _061 = {
	"system":"SYSTEM_CARGO_AUX_PREPROC_40x20",
	"manual":"SYSTEM_CARGO_AUX_PREPROC_MANUAL",
	"price":770000,
	"test_protocol":"cargo",
	"slot_type":"CARGO_ACCESSORIES",
	"equipment_type":"CARGO_ACCESSORIES",
}

const _062 = {
	"system":"SYSTEM_CARGO_AUX_FAB",
	"manual":"SYSTEM_CARGO_AUX_FAB_MANUAL",
	"price":2500000,
	"test_protocol":"cargo",
	"slot_type":"CARGO_ACCESSORIES",
	"equipment_type":"CARGO_ACCESSORIES",
}

const _063 = {
	"system":"SYSTEM_CARGO_AUX_BIGFAB",
	"manual":"SYSTEM_CARGO_AUX_BIGFAB_MANUAL",
	"price":3650000,
	"test_protocol":"cargo",
	"slot_type":"CARGO_ACCESSORIES",
	"equipment_type":"CARGO_ACCESSORIES",
}

const _064 = {
	"system":"SYSTEM_CREW_ADD_BUNK",
	"manual":"SYSTEM_CREW_ADD_MANUAL",
	"price":4000,
	"test_protocol":"takeoff",
	"slot_type":"CREW_MODIFIERS",
	"equipment_type":"CREW_MODIFIER",
}

const _065 = {
	"system":"SYSTEM_CREW_ADD_BUNK2",
	"manual":"SYSTEM_CREW_ADD_MANUAL",
	"price":7500,
	"test_protocol":"takeoff",
	"slot_type":"CREW_MODIFIERS",
	"equipment_type":"CREW_MODIFIER",
}

const _066 = {
	"system":"SYSTEM_CREW_MOD_HOME",
	"manual":"SYSTEM_CREW_ADD_MANUAL",
	"price":35000,
	"test_protocol":"takeoff",
	"slot_type":"CREW_MODIFIERS",
	"equipment_type":"CREW_MODIFIER",
}

const _067 = {
	"system":"SYSTEM_CREW_ADD_CAPSULE",
	"manual":"SYSTEM_CREW_ADD_MANUAL",
	"price":67500,
	"test_protocol":"takeoff",
	"slot_type":"CREW_MODIFIERS",
	"equipment_type":"CREW_MODIFIER",
}

const _068 = {
	"system":"SYSTEM_CREW_MOD_KMX",
	"manual":"SYSTEM_CREW_ADD_MANUAL",
	"price":120000,
	"test_protocol":"takeoff",
	"slot_type":"CREW_MODIFIERS",
	"equipment_type":"CREW_MODIFIER",
}

const _069 = {
	"system":"SYSTEM_CREW_MOD_OCM",
	"manual":"SYSTEM_CREW_ADD_MANUAL",
	"price":485000,
	"test_protocol":"takeoff",
	"slot_type":"CREW_MODIFIERS",
	"equipment_type":"CREW_MODIFIER",
}

const _070 = {
	"system":"SYSTEM_MAIN_ENGINE_ZURBIN",
	"manual":"SYSTEM_MAIN_ENGINE_MANUAL",
	"price":1100000,
	"test_protocol":"autopilot",
	"warn_if_electric_below":50,
	"slot_type":"LARGE_TORCH",
	"equipment_type":"THRUSTER_LARGE_MAIN_ENGINE",
}

const _071 = {
	"system":"SYSTEM_HULLVAT_AMMO_1",
	"manual":"SYSTEM_HULLVAT_AMMO_MANUAL",
	"price":105000,
	"test_protocol":"takeoff",
	"slot_type":"HULL_VAT",
	"equipment_type":"CONSUMABLE_VAT",
}

const _072 = {
	"system":"SYSTEM_HULLVAT_AMMO_2",
	"manual":"SYSTEM_HULLVAT_AMMO_MANUAL",
	"price":400000,
	"test_protocol":"takeoff",
	"slot_type":"HULL_VAT",
	"equipment_type":"CONSUMABLE_VAT",
}

const _073 = {
	"system":"SYSTEM_HULLVAT_AMMO_EXTEND_1",
	"manual":"SYSTEM_HULLVAT_AMMO_MANUAL",
	"price":675000,
	"test_protocol":"takeoff",
	"slot_type":"HULL_VAT",
	"equipment_type":"CONSUMABLE_VAT",
}

const _074 = {
	"system":"SYSTEM_HULLVAT_AMMO_EXTEND_2",
	"manual":"SYSTEM_HULLVAT_AMMO_MANUAL",
	"price":900000,
	"test_protocol":"takeoff",
	"slot_type":"HULL_VAT",
	"equipment_type":"CONSUMABLE_VAT",
}

const _075 = {
	"system":"SYSTEM_HULLVAT_AMMO_EXTEND_3",
	"manual":"SYSTEM_HULLVAT_AMMO_MANUAL",
	"price":1400000,
	"test_protocol":"takeoff",
	"slot_type":"HULL_VAT",
	"equipment_type":"CONSUMABLE_VAT",
}

const _076 = {
	"system":"SYSTEM_HULLVAT_NANO_1",
	"manual":"SYSTEM_HULLVAT_NANO_MANUAL",
	"price":250000,
	"test_protocol":"takeoff",
	"slot_type":"HULL_VAT",
	"equipment_type":"CONSUMABLE_VAT",
}

const _077 = {
	"system":"SYSTEM_HULLVAT_NANO_2",
	"manual":"SYSTEM_HULLVAT_NANO_MANUAL",
	"price":750000,
	"test_protocol":"takeoff",
	"slot_type":"HULL_VAT",
	"equipment_type":"CONSUMABLE_VAT",
}

const _078 = {
	"system":"SYSTEM_HULLVAT_NANO_EXTEND_1",
	"manual":"SYSTEM_HULLVAT_NANO_MANUAL",
	"price":1000000,
	"test_protocol":"takeoff",
	"slot_type":"HULL_VAT",
	"equipment_type":"CONSUMABLE_VAT",
}

const _079 = {
	"system":"SYSTEM_HULLVAT_NANO_EXTEND_2",
	"manual":"SYSTEM_HULLVAT_NANO_MANUAL",
	"price":1500000,
	"test_protocol":"takeoff",
	"slot_type":"HULL_VAT",
	"equipment_type":"CONSUMABLE_VAT",
}

const _080 = {
	"system":"SYSTEM_HULLVAT_NANO_EXTEND_3",
	"manual":"SYSTEM_HULLVAT_NANO_MANUAL",
	"price":2250000,
	"test_protocol":"takeoff",
	"slot_type":"HULL_VAT",
	"equipment_type":"CONSUMABLE_VAT",
}

const _081 = {
	"system":"SYSTEM_HULLVAT_PROP_1",
	"manual":"SYSTEM_HULLVAT_PROP_MANUAL",
	"price":45000,
	"test_protocol":"takeoff",
	"slot_type":"HULL_VAT",
	"equipment_type":"CONSUMABLE_VAT",
}

const _082 = {
	"system":"SYSTEM_HULLVAT_PROP_2",
	"manual":"SYSTEM_HULLVAT_PROP_MANUAL",
	"price":120000,
	"test_protocol":"takeoff",
	"slot_type":"HULL_VAT",
	"equipment_type":"CONSUMABLE_VAT",
}

const _083 = {
	"system":"SYSTEM_HULLVAT_PROP_EXTEND_1",
	"manual":"SYSTEM_HULLVAT_PROP_MANUAL",
	"price":300000,
	"test_protocol":"takeoff",
	"slot_type":"HULL_VAT",
	"equipment_type":"CONSUMABLE_VAT",
}

const _084 = {
	"system":"SYSTEM_HULLVAT_PROP_EXTEND_2",
	"manual":"SYSTEM_HULLVAT_PROP_MANUAL",
	"price":450000,
	"test_protocol":"takeoff",
	"slot_type":"HULL_VAT",
	"equipment_type":"CONSUMABLE_VAT",
}

const _085 = {
	"system":"SYSTEM_HULLVAT_PROP_EXTEND_3",
	"manual":"SYSTEM_HULLVAT_PROP_MANUAL",
	"price":550000,
	"test_protocol":"takeoff",
	"slot_type":"HULL_VAT",
	"equipment_type":"CONSUMABLE_VAT",
}

const _086 = {
	"system":"SYSTEM_HULLVAT_CONSUMABLESPEED_1",
	"manual":"SYSTEM_HULLVAT_CONSUMABLESPEED_MANUAL",
	"price":130000,
	"test_protocol":"takeoff",
	"slot_type":"HULL_VAT",
	"equipment_type":"CONSUMABLE_VAT",
}

const _087 = {
	"system":"SYSTEM_HULLVAT_CONSUMABLESPEED_2",
	"manual":"SYSTEM_HULLVAT_CONSUMABLESPEED_MANUAL",
	"price":210000,
	"test_protocol":"takeoff",
	"slot_type":"HULL_VAT",
	"equipment_type":"CONSUMABLE_VAT",
}

const _088 = {
	"system":"SYSTEM_SALVAGE_ARM_LONG",
	"price":195000,
	"manual":"SYSTEM_SALVAGE_ARM_MANUAL",
	"test_protocol":"arm",
	"warn_if_electric_below":100,
	"equipment_type":"EQUIPMENT_MANIPULATOR_LONG",
	"slot_type":"HARDPOINT",
	"alignment":"ALIGNMENT_CENTER",
}

const _089 = {
	"system":"SYSTEM_SALVAGE_ARM_LONG-L",
	"price":195000,
	"name_override":"SYSTEM_SALVAGE_ARM_LONG",
	"manual":"SYSTEM_SALVAGE_ARM_MANUAL",
	"test_protocol":"arm",
	"warn_if_electric_below":100,
	"equipment_type":"EQUIPMENT_MANIPULATOR_LONG",
	"slot_type":"HARDPOINT",
	"alignment":"ALIGNMENT_LEFT",
}

const _090 = {
	"system":"SYSTEM_SALVAGE_ARM_LONG-R",
	"price":195000,
	"name_override":"SYSTEM_SALVAGE_ARM_LONG",
	"manual":"SYSTEM_SALVAGE_ARM_MANUAL",
	"test_protocol":"arm",
	"warn_if_electric_below":100,
	"equipment_type":"EQUIPMENT_MANIPULATOR_LONG",
	"slot_type":"HARDPOINT",
	"alignment":"ALIGNMENT_RIGHT",
}

