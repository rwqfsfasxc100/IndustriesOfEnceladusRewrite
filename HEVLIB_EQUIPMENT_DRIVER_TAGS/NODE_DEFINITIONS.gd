# [license]
# SPDX-License-Identifier: LicenseRef-Proprietary
# Copyright © 2026 __hev (Benjamin Buckhurst). All Rights Reserved.
# 
# Redistribution and use in source and binary forms, with or without modification,
# are permitted provided that all following conditions are met:
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

const IOE_PREPROC_0x30 = {
	"path":"res://IndustriesOfEnceladusRewrite/ships/modules/CargoAuxPreProc0x30.tscn",
	"position":[-32,-92],
	"scale":[1],
	"rotation":0,
	"properties":{
		"polygon":{
			"value":[0, 14, 0, -14, 6, -6, 12, -4, 12, 4, 6, 6],
			"method":"arr2vec2arr"
		},
		"ProcessingArea/ZoneTop/polygon":{
			"value":[26, 0, 0, -8, -26, 0],
			"method":"arr2vec2arr"
		},
		"ProcessingArea/ZoneBottom/polygon":{
			"value":[26, 0, 0, 8, -26, 0],
			"method":"arr2vec2arr"
		}
	},
	"ships_to_ignore":[
		"SHIP_PROSPECTOR_BALD",
		"SHIP_KITSUNE",
		"SHIP_TRTL_T",
		"SHIP_TRTL_R",
		"SHIP_EIME",
		"SHIP_YME",
		"SHIP_OCP209",
		"SHIP_OCP209_SNAP",
		"SHIP_OCP213_TWIN",
		"SHIP_OCP-SALVAGE",
		"SHIP_OBERON",
		"SHIP_ATLAS_WASP",
		"SHIP_CK65",
		"SHIP_CK69",
	]
}
const IOE_PREPROC_20x10 = {
	"path":"res://IndustriesOfEnceladusRewrite/ships/modules/CargoAuxPreProc20x10.tscn",
	"position":[-32,-92],
	"scale":[1],
	"rotation":0,
	"properties":{
		"polygon":{
			"value":[0, 20, 0, -20, 10, -16, 16, -6, 16, 6, 10, 16],
			"method":"arr2vec2arr"
		},
		"ProcessingArea/ZoneTop/polygon":{
			"value":[26, 0, 0, -8, -26, 0],
			"method":"arr2vec2arr"
		},
		"ProcessingArea/ZoneBottom/polygon":{
			"value":[26, 0, 0, 8, -26, 0],
			"method":"arr2vec2arr"
		}
	},
	"ships_to_ignore":[
		"SHIP_PROSPECTOR_BALD",
		"SHIP_KITSUNE",
		"SHIP_TRTL_T",
		"SHIP_TRTL_R",
		"SHIP_EIME",
		"SHIP_YME",
		"SHIP_OCP209",
		"SHIP_OCP209_SNAP",
		"SHIP_OCP213_TWIN",
		"SHIP_OCP-SALVAGE",
		"SHIP_OBERON",
		"SHIP_ATLAS_WASP",
		"SHIP_CK65",
		"SHIP_CK69",
	]
}
const IOE_PREPROC_40x20 = {
	"path":"res://IndustriesOfEnceladusRewrite/ships/modules/CargoAuxPreProc40x20.tscn",
	"position":[-28,-92],
	"scale":[1],
	"rotation":0,
	"properties":{
		"polygon":{
			"value":[0, -32, 10, -28, 8, -12, 2, -8, 8, -6, 10, 0, 8, 6, 2, 8, 8, 12, 10, 28, 0, 32, -4, 32, -4, 8, -4, -8, -4, -32],
			"method":"arr2vec2arr"
		},
		"ProcessingArea/ZoneTop/polygon":{
			"value":[26, 0, 12, -32, -12, -32, -26, 0],
			"method":"arr2vec2arr"
		},
		"ProcessingArea/ZoneBottom/polygon":{
			"value":[26, 0, 26, 32, -26, 32, -26, 0],
			"method":"arr2vec2arr"
		}
	},
	"ships_to_ignore":[
		"SHIP_PROSPECTOR_BALD",
		"SHIP_KITSUNE",
		"SHIP_TRTL_T",
		"SHIP_TRTL_R",
		"SHIP_EIME",
		"SHIP_YME",
		"SHIP_OCP209",
		"SHIP_OCP209_SNAP",
		"SHIP_OCP213_TWIN",
		"SHIP_OCP-SALVAGE",
		"SHIP_OBERON",
		"SHIP_ATLAS_WASP",
		"SHIP_CK65",
		"SHIP_CK69",
	]
}
const IOE_STORAGE_4K = {
	"path":"res://IndustriesOfEnceladusRewrite/ships/modules/CargoAuxStorage4K.tscn",
	"position":[-32,-92],
	"scale":[1],
	"rotation":0,
	"properties":{
		"polygon":{
			"value":[0, 24, 0, -20, 10, -16, 10, 4],
			"method":"arr2vec2arr"
		}
	},
	"ships_to_ignore":[
		"SHIP_PROSPECTOR_BALD",
		"SHIP_KITSUNE",
		"SHIP_TRTL_T",
		"SHIP_TRTL_R",
		"SHIP_EIME",
		"SHIP_YME",
		"SHIP_OCP209",
		"SHIP_OCP209_SNAP",
		"SHIP_OCP213_TWIN",
		"SHIP_OCP-SALVAGE",
		"SHIP_OBERON",
		"SHIP_ATLAS_WASP",
		"SHIP_CK65",
		"SHIP_CK69",
	]
}
const IOE_STORAGE_8K = {
	"path":"res://IndustriesOfEnceladusRewrite/ships/modules/CargoAuxStorProc8K.tscn",
	"position":[-32,-92],
	"scale":[1],
	"rotation":0,
	"properties":{
		"polygon":{
			"value":[0, 32, 0, 8, 0, -32, 10, -32, 20, -28, 20, 4, 10, 8, 10, 20],
			"method":"arr2vec2arr"
		},
		"ProcessingArea/ZoneTop/polygon":{
			"node_path":"CargoHoldArea/CollisionPolygon2D",
#			"property":"polygon",
			"method":"copy"
		},
		"ProcessingArea/ZoneBottom/polygon":{
			"node_path":"CargoHoldArea/CollisionPolygon2D",
#			"property":"polygon",
			"method":"copy"
		},
		"ProcessingArea/ZoneTop/position":{
			"value":[32,92],
			"method":"arr2vec2"
		},
		"ProcessingArea/ZoneBottom/position":{
			"value":[32,92],
			"method":"arr2vec2"
		}
	},
	"ships_to_ignore":[
		"SHIP_PROSPECTOR_BALD",
		"SHIP_KITSUNE",
		"SHIP_TRTL_T",
		"SHIP_TRTL_R",
		"SHIP_EIME",
		"SHIP_YME",
		"SHIP_OCP209",
		"SHIP_OCP209_SNAP",
		"SHIP_OCP213_TWIN",
		"SHIP_OCP-SALVAGE",
		"SHIP_OBERON",
		"SHIP_ATLAS_WASP",
		"SHIP_CK65",
		"SHIP_CK69",
	]
}
const IOE_FABAUX_FAB = {
	"path":"res://IndustriesOfEnceladusRewrite/ships/modules/CargoAuxFab.tscn",
	"position":[-32,-92],
	"scale":[1],
	"rotation":0,
	"properties":{
		"polygon":{
			"value":[0, -32, 28, -12, 32, -4, 32, 30, 18, 30, 10, 40, 10, 52, 0, 64, 0, 24],
			"method":"arr2vec2arr"
		}
	},
	"ships_to_ignore":[
		"SHIP_PROSPECTOR_BALD",
		"SHIP_KITSUNE",
		"SHIP_TRTL_T",
		"SHIP_TRTL_R",
		"SHIP_EIME",
		"SHIP_YME",
		"SHIP_OCP209",
		"SHIP_OCP209_SNAP",
		"SHIP_OCP213_TWIN",
		"SHIP_OCP-SALVAGE",
		"SHIP_OBERON",
		"SHIP_ATLAS_WASP",
		"SHIP_CK65",
		"SHIP_CK69",
	]
}
const IOE_FABAUX_BIGFAB = {
	"path":"res://IndustriesOfEnceladusRewrite/ships/modules/CargoAuxBigFab.tscn",
	"position":[-32,-92],
	"scale":[1],
	"rotation":0,
	"properties":{
		"polygon":{
			"value":[0, -32, 16, -32, 32, -28, 32, 38, 24, 40, 18, 40, 16, 46, 10, 48, 10, 60, 0, 72, 0, 32],
			"method":"arr2vec2arr"
		}
	},
	"ships_to_ignore":[
		"SHIP_PROSPECTOR_BALD",
		"SHIP_KITSUNE",
		"SHIP_TRTL_T",
		"SHIP_TRTL_R",
		"SHIP_EIME",
		"SHIP_YME",
		"SHIP_OCP209",
		"SHIP_OCP209_SNAP",
		"SHIP_OCP213_TWIN",
		"SHIP_OCP-SALVAGE",
		"SHIP_OBERON",
		"SHIP_ATLAS_WASP",
		"SHIP_CK65",
		"SHIP_CK69",
	]
}
const IOE_ICEBREAKER_M35 = {
	"path":"res://IndustriesOfEnceladusRewrite/ships/modules/CargoAuxPreProcM35.tscn",
	"position":[-32,-92],
	"scale":[1],
	"rotation":0,
	"properties":{
		"polygon":{
			"value":[0, 24, 0, -24, 27, -9, 27, 15],
			"method":"arr2vec2arr"
		}
	},
	"ships_to_ignore":[
		"SHIP_PROSPECTOR_BALD",
		"SHIP_KITSUNE",
		"SHIP_TRTL_T",
		"SHIP_TRTL_R",
		"SHIP_EIME",
		"SHIP_YME",
		"SHIP_OCP209",
		"SHIP_OCP209_SNAP",
		"SHIP_OCP213_TWIN",
		"SHIP_OCP-SALVAGE",
		"SHIP_OBERON",
		"SHIP_ATLAS_WASP",
		"SHIP_CK65",
		"SHIP_CK69",
	]
}
const IOE_ICEBREAKER_M85 = {
	"path":"res://IndustriesOfEnceladusRewrite/ships/modules/CargoAuxPreProcM85.tscn",
	"position":[-32,-92],
	"scale":[1],
	"rotation":0,
	"properties":{
		"polygon":{
			"value":[0, 57, 0, -24, 15, 3, 18, 39],
			"method":"arr2vec2arr"
		}
	},
	"ships_to_ignore":[
		"SHIP_PROSPECTOR_BALD",
		"SHIP_KITSUNE",
		"SHIP_TRTL_T",
		"SHIP_TRTL_R",
		"SHIP_EIME",
		"SHIP_YME",
		"SHIP_OCP209",
		"SHIP_OCP209_SNAP",
		"SHIP_OCP213_TWIN",
		"SHIP_OCP-SALVAGE",
		"SHIP_OBERON",
		"SHIP_ATLAS_WASP",
		"SHIP_CK65",
		"SHIP_CK69",
	]
}
const IOE_ICEBREAKER_P15 = {
	"path":"res://IndustriesOfEnceladusRewrite/ships/modules/CargoAuxPreProcP15.tscn",
	"position":[-32,-92],
	"scale":[1],
	"rotation":0,
	"properties":{
		"polygon":{
			"value":[0, 24, 0, -24, 12, -15, 3, 0, 12, 12],
			"method":"arr2vec2arr"
		}
	},
	"ships_to_ignore":[
		"SHIP_PROSPECTOR_BALD",
		"SHIP_KITSUNE",
		"SHIP_TRTL_T",
		"SHIP_TRTL_R",
		"SHIP_EIME",
		"SHIP_YME",
		"SHIP_OCP209",
		"SHIP_OCP209_SNAP",
		"SHIP_OCP213_TWIN",
		"SHIP_OCP-SALVAGE",
		"SHIP_OBERON",
		"SHIP_ATLAS_WASP",
		"SHIP_CK65",
		"SHIP_CK69",
	]
}
const IOE_OCP_DOCKING_BAY_UPPER = {
	"path":"res://weapons/WeaponSlot.tscn",
	"recurse_to_variants":false,
	"position":[-230,40],
	"rotation":225,
	"properties":{
		"z_index":{
			"value":32
		},
		"slot":{
			"value":"rightBay1"
		},
		"toggleCommand":{
			"value":"ship_slot_5"
		}
	}
}
const IOE_OCP_DOCKING_BAY_LOWER = {
	"path":"res://weapons/WeaponSlot.tscn",
	"recurse_to_variants":false,
	"position":[-230,-40],
	"rotation":-45,
	"properties":{
		"z_index":{
			"value":32
		},
		"slot":{
			"value":"leftBay3"
		},
		"toggleCommand":{
			"value":"ship_slot_6"
		}
	}
}
const IOE_OCP_DRONE_BAY_UPPER = {
	"path":"res://weapons/WeaponSlot.tscn",
	"recurse_to_variants":false,
	"position":[0,-375],
	"properties":{
		"z_index":{
			"value":32
		},
		"slot":{
			"value":"leftDrone"
		},
		"toggleCommand":{
			"value":"ship_slot_7"
		}
	}
}
const IOE_OCP_DRONE_BAY_LOWER = {
	"path":"res://weapons/WeaponSlot.tscn",
	"recurse_to_variants":false,
	"position":[25,150],
	"properties":{
		"z_index":{
			"value":32
		},
		"slot":{
			"value":"rightDrone"
		},
		"toggleCommand":{
			"value":"ship_slot_8"
		}
	}
}
const IOE_OCP_TURRET_BAY_UPPER = {
	"path":"res://weapons/WeaponSlot.tscn",
	"recurse_to_variants":false,
	"position":[210,-180],
	"rotation":90,
	"properties":{
		"z_index":{
			"value":32
		},
		"slot":{
			"value":"turretLeft"
		},
		"toggleCommand":{
			"value":"ship_slot_7"
		}
	}
}
const IOE_OCP_TURRET_BAY_LOWER = {
	"path":"res://weapons/WeaponSlot.tscn",
	"recurse_to_variants":false,
	"position":[210,180],
	"rotation":90,
	"properties":{
		"z_index":{
			"value":32
		},
		"slot":{
			"value":"turretRight"
		},
		"toggleCommand":{
			"value":"ship_slot_8"
		}
	}
}
const IOE_BAY_AUX_PERSIST = {
	"path":"res://IndustriesOfEnceladusRewrite/ships/modules/bay_aux_persist.tscn",
	"recurse_to_variants":false
}
const IOE_MPU_BULKER = {
	"path":"res://IndustriesOfEnceladusRewrite/ships/modules/MineralProcessingUnit_Bulker.tscn",
	"position":[0,-17],
}
const IOE_MPU_FURNACE = {
	"path":"res://IndustriesOfEnceladusRewrite/ships/modules/MineralProcessingUnit_Furnace.tscn",
	"position":[0,-11],
}
