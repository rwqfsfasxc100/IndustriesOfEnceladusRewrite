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

extends CollisionPolygon2D

export  var repairReplacementPrice = 1000
export  var repairReplacementTime = 1
export  var repairFixPrice = 1000
export  var repairFixTime = 1
onready var slotName = "CargoAux_" + systemName

export var mass = 1000
export  var systemName = "SYSTEM_CARGO_AUX"
export  var slot = "cargo.aux"

export  var registerExternal = false

export var mirrorCollider = false
export var mirrorVertical = false
export (Vector2) var mirrorCentreOffset = Vector2(0,0)
var set_rot = 0.0

var pointers

var ship

func _ready():
	pointers = ModLoader._savedObjects[0]
	ship = getShip()
	self.name = systemName
	ship.registerCapability(slot, systemName)
	if ship.getConfig(slot) != systemName:
		Tool.remove(self)
	else:
		visible = true
		if registerExternal:
			ship.externalSystems.append(self)
	if not ship.setup:
		yield(ship,"setup")
	make_mirror()

func make_mirror():
	if ship.getConfig(slot) == systemName and mirrorCollider:
		if set_rot != 0.0:
			self.rotation = -deg2rad(set_rot)
			var current_pos = self.position
			var new_position = pointers.DataFormat.__rotate_point(current_pos,set_rot)
			self.position = new_position
		
		var colliderName = systemName + "_COLLIDER_MIRROR"
		var node = ship.get_node_or_null(colliderName)
		var selfScale = self.scale
		if node:
			node.set_polygon(make_poly())
			node.set_position(modify_position())
			node.rotation = deg2rad(set_rot)
			node.scale = selfScale
		else:
			var copy = CollisionPolygon2D.new()
			copy.name = colliderName
			copy.visible = true
			copy.z_index = self.z_index
			copy.set_polygon(make_poly())
			copy.set_build_mode(self.build_mode)
			copy.set_disabled(false)
			copy.set_one_way_collision(self.one_way_collision)
			copy.set_one_way_collision_margin(self.one_way_collision_margin)
			copy.scale = selfScale
			copy.set_position(modify_position())
			copy.rotation = deg2rad(set_rot)
			copy.set_script(null)
			ship.call_deferred("add_child",copy)
			$Mirror.visible = false
			$Mirror.disabled = true

func modify_position() -> Vector2:
	var selfPos = self.get_position()
	var rv = (float(1)/float(2))*float(set_rot)
	var nselfPos = pointers.DataFormat.__rotate_point(selfPos,rv)
	var modifyP = Vector2(nselfPos[0], nselfPos[1])
	if mirrorVertical:
		modifyP[1] = -modifyP[1]
	else:
		modifyP[0] = -modifyP[0]
	var newpos = modifyP + mirrorCentreOffset
	return newpos

func make_poly() -> PoolVector2Array:
	var poly = self.polygon
	var newPoly = PoolVector2Array()
	for vec in poly:
		if mirrorVertical:
			var newVec = Vector2(vec[0],-vec[1])
			newPoly.append(newVec)
		else:
			var newVec = Vector2(-vec[0],vec[1])
			newPoly.append(newVec)
	return newPoly

func getShip():
	var c = self
	while not c.has_method("getConfig") and c != null:
		c = c.get_parent()
	return c
