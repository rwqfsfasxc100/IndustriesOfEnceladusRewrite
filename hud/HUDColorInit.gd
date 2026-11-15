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

extends "res://hud/SensorDisplay.gd"


var ioer_synchudcolours_uinit : bool = false
func _ready():
	if ioer_synchudcolours_uinit:
		ModLoader._savedObjects[0].main_modmain.log_double_load_error(get_script().resource_path)
	ioer_synchudcolours_uinit = true
	call_deferred("_synchronize_styles")

func _synchronize_styles() -> void:
	var parent := get_parent()
	if not parent:
		return

	var siblings := parent.get_children()
	var my_index := get_index()
	
	var sibling_label: Label = null
	var sibling_unit: Label = null

	if my_index > 0:
		var prev_node = siblings[my_index - 1]
		if prev_node is Label:
			sibling_label = prev_node

	if my_index < siblings.size() - 1:
		var next_node = siblings[my_index + 1]
		if next_node is Label:
			sibling_unit = next_node

	var found_ok_color = null
	var found_warn_color = null
	var found_err_color = null
	var found_label_color: Color
	var has_label_color := false

	for child in siblings:
		if child == self or child == sibling_label or child == sibling_unit:
			continue
			
		if found_ok_color == null and "okColor" in child:
			found_ok_color = child.okColor
			if "warnColor" in child:
				found_warn_color = child.warnColor
			if "errColor" in child:
				found_err_color = child.errColor
		
		if not has_label_color and child is Label:
			found_label_color = child.modulate
			has_label_color = true
		
		if found_ok_color != null and has_label_color:
			break

	if found_ok_color != null:
		if "okColor" in self:
			self.okColor = found_ok_color
		if found_warn_color != null and "warnColor" in self:
			self.warnColor = found_warn_color
		if found_err_color != null and "errColor" in self:
			self.errColor = found_err_color
		
	if has_label_color:
		if sibling_label:
			sibling_label.modulate = found_label_color
		if sibling_unit:
			sibling_unit.modulate = found_label_color

