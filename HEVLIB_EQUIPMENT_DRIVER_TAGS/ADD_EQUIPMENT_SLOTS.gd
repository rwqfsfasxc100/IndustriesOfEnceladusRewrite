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

const HOLD_MODIFIER_DIVIDED = {
	"system_slot":"cargo.modifierDivided",
	"slot_node_name":"HoldModifiersDivided",
	"slot_display_name":"SLOT_CARGOBAY_MOD",
	"always_display":true,
	"add_vanilla_equipment":false,
	"slot_type":"HOLD_MODIFIERS", 
	"restriction":"HOLDMODIFIER_DIVIDED",
	"restrict_hold_type":"divided"
}
const HULL_CONSUMABLE_VAT = {
	"system_slot":"cargo.consumableVat",
	"slot_node_name":"HullConsumableVat",
	"slot_display_name":"SLOT_HULL_CONSUMABLEVAT",
	"always_display":true,
	"add_vanilla_equipment":false,
	"slot_type":"HULL_VAT",
}
const HOLD_MODIFIER_AMORPHIC = {
	"system_slot":"cargo.modifierAmorphic",
	"slot_node_name":"HoldModifiersAmorphic",
	"slot_display_name":"SLOT_CARGOBAY_MOD",
	"always_display":true,
	"add_vanilla_equipment":false,
	"slot_type":"HOLD_MODIFIERS", 
	"restriction":"HOLDMODIFIER_AMORPHIC",
	"restrict_hold_type":"amorphic"
	
}
const CARGO_ACCESSORIES = {
	"system_slot":"cargo.aux",
	"slot_node_name":"CargoAccessories",
	"slot_display_name":"SLOT_CARGO_AUX",
	"always_display":false,
	"add_vanilla_equipment":false,
	"slot_type":"CARGO_ACCESSORIES",
	"prevent_ships":[
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
	],
}
const CREW_MODIFIERS = {
	"system_slot":"crew.modifier",
	"slot_node_name":"CrewModifiers",
	"slot_display_name":"SLOT_CREW_MOD",
	"always_display":true,
	"add_vanilla_equipment":false,
	"slot_type":"CREW_MODIFIERS"
}
const TURRET_LEFT = {
	"system_slot":"weaponSlot.turretLeft.type",
	"slot_node_name":"LeftTurretSlot",
	"slot_display_name":"SLOT_TURRET_LEFT",
	"always_display":false,
	"slot_type":"HARDPOINT",
	"hardpoint_type":"HARDPOINT_TURRET",
	"alignment":"ALIGNMENT_LEFT"
}
const TURRET_RIGHT = {
	"system_slot":"weaponSlot.turretRight.type",
	"slot_node_name":"RightTurretSlot",
	"slot_display_name":"SLOT_TURRET_RIGHT",
	"always_display":false,
	"slot_type":"HARDPOINT",
	"hardpoint_type":"HARDPOINT_TURRET",
	"alignment":"ALIGNMENT_RIGHT"
}
const RCS_LARGE = {
	"system_slot":"propulsion.rcsLarge",
	"slot_node_name":"RCSLarge",
	"slot_display_name":"SLOT_RCS_LARGE",
	"always_display":false,
	"slot_type":"STANDARD_MAIN_ENGINE",
	"has_none":false,
	"add_vanilla_equipment":true
}
const TORCH_LARGE = {
	"system_slot":"propulsion.mainLarge",
	"slot_node_name":"TorchLarge",
	"slot_display_name":"SLOT_MAIN_LARGE",
	"always_display":false,
	"slot_type":"LARGE_TORCH",
	"has_none":false
}
