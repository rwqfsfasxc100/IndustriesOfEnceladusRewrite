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

const SYSTEM_DND_HARVTUG = {
	"name":"SYSTEM_DND_HARVTUG",
	"path":"res://IndustriesOfEnceladusRewrite/weapons/HarvTug.tscn"
}
const SYSTEM_DND_HARVHAUL = {
	"name":"SYSTEM_DND_HARVHAUL",
	"path":"res://IndustriesOfEnceladusRewrite/weapons/HarvHaul.tscn"
}
const SYSTEM_SALVAGE_ARM_LIGHT = {
	"name":"SYSTEM_SALVAGE_ARM_LIGHT",
	"path":"res://IndustriesOfEnceladusRewrite/ships/modules/SalvageArmLight.tscn"
}
const SYSTEM_SALVAGE_ARM_LIGHT_L = {
	"name":"SYSTEM_SALVAGE_ARM_LIGHT-L",
	"path":"res://IndustriesOfEnceladusRewrite/ships/modules/SalvageArmLight.tscn",
	"data":[
		{
			"property":"flip",
			"value":true,
			"use_stringified_value":false
		},
		{
			"property":"feedVelocity",
			"value":Vector2( -72, -320 ),
			"use_stringified_value":false
		}
	]
}
const SYSTEM_SALVAGE_ARM_LIGHT_R = {
	"name":"SYSTEM_SALVAGE_ARM_LIGHT-R",
	"path":"res://IndustriesOfEnceladusRewrite/ships/modules/SalvageArmLight.tscn",
	"data":[
		{
			"property":"feedVelocity",
			"value":Vector2( 72, -320 ),
			"use_stringified_value":false
		}
	]
}
const SYSTEM_SALVAGE_ARM_HEAVY = {
	"name":"SYSTEM_SALVAGE_ARM_HEAVY",
	"path":"res://IndustriesOfEnceladusRewrite/ships/modules/SalvageArmHeavy.tscn"
}
const SYSTEM_SALVAGE_ARM_HEAVY_L = {
	"name":"SYSTEM_SALVAGE_ARM_HEAVY-L",
	"path":"res://IndustriesOfEnceladusRewrite/ships/modules/SalvageArmHeavy.tscn",
	"data":[
		{
			"property":"flip",
			"value":true,
			"use_stringified_value":false
		},
		{
			"property":"feedVelocity",
			"value":Vector2( -60, -240 ),
			"use_stringified_value":false
		}
	]
}
const SYSTEM_SALVAGE_ARM_HEAVY_R = {
	"name":"SYSTEM_SALVAGE_ARM_HEAVY-R",
	"path":"res://IndustriesOfEnceladusRewrite/ships/modules/SalvageArmHeavy.tscn",
	"data":[
		{
			"property":"feedVelocity",
			"value":Vector2( 60, -240 ),
			"use_stringified_value":false
		}
	]
}
const SYSTEM_MWTIGHTBEAM = {
	"name":"SYSTEM_MWTIGHTBEAM",
	"path":"res://IndustriesOfEnceladusRewrite/weapons/MWTightBeam.tscn",
	"data":[
		{
			"property":"region_rect",
			"value":Rect2( 376, 31, 0, 0 ),
			"use_stringified_value":false
		}
	]
}
const SYSTEM_MWTIGHTBEAM_PDT = {
	"name":"SYSTEM_MWTIGHTBEAM_PDT",
	"path":"res://IndustriesOfEnceladusRewrite/weapons/PDT-MWTightBeam.tscn",
	"data":[
		{
			"property":"position",
			"value":Vector2( 0, -23 ),
			"use_stringified_value":false
		}
	]
}
const SYSTEM_MWTIGHTBEAM_PDT_L = {
	"name":"SYSTEM_MWTIGHTBEAM_PDT-L",
	"path":"res://IndustriesOfEnceladusRewrite/weapons/PDT-MWTightBeam.tscn",
	"data":[
		{
			"property":"position",
			"value":Vector2( -130, 66 ),
			"use_stringified_value":false
		},
		{
			"property":"rotation",
			"value":-1.0472,
			"use_stringified_value":false
		}
	]
}
const SYSTEM_MWTIGHTBEAM_PDT_R = {
	"name":"SYSTEM_MWTIGHTBEAM_PDT-R",
	"path":"res://IndustriesOfEnceladusRewrite/weapons/PDT-MWTightBeam.tscn",
	"data":[
		{
			"property":"position",
			"value":Vector2( 130, 66 ),
			"use_stringified_value":false
		},
		{
			"property":"rotation",
			"value":1.0472,
			"use_stringified_value":false
		}
	]
}
const SYSTEM_PDTL = {
	"name":"SYSTEM_PDTL",
	"data":[
		{
			"property":"repairReplacementPrice",
			"value":300000,
			"use_stringified_value":false
		},
		{
			"property":"repairFixPrice",
			"value":50000,
			"use_stringified_value":false
		},
		{
			"property":"Pivot/laser/damageWearCapacity",
			"value":2250,
			"use_stringified_value":false
		},
		{
			"property":"rotationPerSecond",
			"value":0.5236,
			"use_stringified_value":false
		}
	]
}
const SYSTEM_PDTL_L = {
	"name":"SYSTEM_PDTL-L",
	"data":[
		{
			"property":"repairReplacementPrice",
			"value":300000,
			"use_stringified_value":false
		},
		{
			"property":"repairFixPrice",
			"value":50000,
			"use_stringified_value":false
		},
		{
			"property":"Pivot/laser/damageWearCapacity",
			"value":2250,
			"use_stringified_value":false
		},
		{
			"property":"rotationPerSecond",
			"value":0.5236,
			"use_stringified_value":false
		}
	]
}
const SYSTEM_PDTL_R = {
	"name":"SYSTEM_PDTL-R",
	"data":[
		{
			"property":"repairReplacementPrice",
			"value":300000,
			"use_stringified_value":false
		},
		{
			"property":"repairFixPrice",
			"value":50000,
			"use_stringified_value":false
		},
		{
			"property":"Pivot/laser/damageWearCapacity",
			"value":2250,
			"use_stringified_value":false
		},
		{
			"property":"rotationPerSecond",
			"value":0.5236,
			"use_stringified_value":false
		}
	]
}
const SYSTEM_EXODYN_L = {
	"name":"SYSTEM_EXODYN-L",
	"path":"res://IndustriesOfEnceladusRewrite/ships/modules/StoragePodComboDock-L.tscn",
	"data":[
		{
			"property":"position",
			"value":Vector2( 0, 196 ),
			"use_stringified_value":false
		}
	]
}
const SYSTEM_EXODYN_R = {
	"name":"SYSTEM_EXODYN-R",
	"path":"res://IndustriesOfEnceladusRewrite/ships/modules/StoragePodComboDock.tscn",
	"data":[
		{
			"property":"position",
			"value":Vector2( 0, 196 ),
			"use_stringified_value":false
		}
	]
}

const SYSTEM_SALVAGE_ARM_LONG = {
	"name":"SYSTEM_SALVAGE_ARM_LONG",
	"path":"res://IndustriesOfEnceladusRewrite/ships/modules/SalvageArmLong.tscn"
}
const SYSTEM_SALVAGE_ARM_LONG_L = {
	"name":"SYSTEM_SALVAGE_ARM_LONG-L",
	"path":"res://IndustriesOfEnceladusRewrite/ships/modules/SalvageArmLong.tscn",
	"data":[
		{
			"property":"flip",
			"value":true,
			"use_stringified_value":false
		},
		{
			"property":"feedVelocity",
			"value":Vector2( -72, -320 ),
			"use_stringified_value":false
		}
	]
}
const SYSTEM_SALVAGE_ARM_LONG_R = {
	"name":"SYSTEM_SALVAGE_ARM_LONG-R",
	"path":"res://IndustriesOfEnceladusRewrite/ships/modules/SalvageArmLong.tscn",
	"data":[
		{
			"property":"feedVelocity",
			"value":Vector2( 72, -320 ),
			"use_stringified_value":false
		}
	]
}
