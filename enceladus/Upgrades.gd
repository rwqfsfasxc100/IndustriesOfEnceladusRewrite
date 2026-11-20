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

extends "res://enceladus/Upgrades.gd"

onready var params_box = get_node_or_null(NodePath("VB/WindowMargin/TabHintContainer/Window/UPGRADE_SIMULATION/MarginContainer/ShipParams"))

var ioer_addnewsensors_uinit : bool = false
func _ready():
	if ioer_addnewsensors_uinit:
		ModLoader._savedObjects[0].log_double_load_error(get_script().resource_path)
	ioer_addnewsensors_uinit = true
	var startIndex = 24
	var holdLabel = Label.new()
	var holdReadout = Label.new()
	var holdUnit = Label.new()
	var crewQualityLabel = Label.new()
	var crewQualityReadout = Label.new()
	var crewQualityUnit = Label.new()
	
	holdLabel.text = "HUD_HOLD_CAP"
	holdLabel.uppercase = true
	holdLabel.modulate = Color(0.5,3,0.5)
	holdReadout.text = "   0.00"
	holdReadout.align = Label.ALIGN_RIGHT
	holdUnit.text = "t"
	holdUnit.modulate = Color(0.5,3,0.5)
	crewQualityLabel.text = "HUD_CREW_QUALITY"
	crewQualityLabel.uppercase = true
	crewQualityLabel.modulate = Color(0.5,3,0.5)
	crewQualityReadout.text = "   0.00"
	crewQualityReadout.align = Label.ALIGN_RIGHT
	crewQualityUnit.text = "%"
	crewQualityUnit.modulate = Color(0.5,3,0.5)
	
	holdReadout.set_script(load("res://hud/SensorDisplay.gd"))
	holdReadout.sensor = "hold"
	holdReadout.format = "%7.1f"
	holdReadout.control = true
	holdReadout.controlFormat = "%+7.1f"
	holdReadout.minWarn = 0
	holdReadout.minErr = 0
	holdReadout.maxWarn = 10000000
	holdReadout.maxErr = 10000000
	holdReadout.conversion = 0.001
	holdReadout.flashTime = 1
	
	crewQualityReadout.set_script(load("res://hud/SensorDisplay.gd"))
	crewQualityReadout.sensor = "crew.quality"
	crewQualityReadout.format = "%7.0f"
	crewQualityReadout.control = true
	crewQualityReadout.controlFormat = "%+7.0f"
	crewQualityReadout.minWarn = 0.81
	crewQualityReadout.minErr = 0.61
	crewQualityReadout.maxWarn = 10
	crewQualityReadout.maxErr = 10
	crewQualityReadout.conversion = 100
	crewQualityReadout.flashTime = 1
	
	params_box.add_child(holdLabel)
	params_box.add_child(holdReadout)
	params_box.add_child(holdUnit)
	params_box.add_child(crewQualityLabel)
	params_box.add_child(crewQualityReadout)
	params_box.add_child(crewQualityUnit)
	
	params_box.move_child(holdLabel,24)
	params_box.move_child(holdReadout,25)
	params_box.move_child(holdUnit,26)
	params_box.move_child(crewQualityLabel,27)
	params_box.move_child(crewQualityReadout,28)
	params_box.move_child(crewQualityUnit,29)

