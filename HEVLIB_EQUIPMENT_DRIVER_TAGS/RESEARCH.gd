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

const STORY_ONLY = {
	"name":"SYSTEM_PDT",
	"description":"SYSTEM_PDT_TOOLTIP",
	"story_flag":"hardware.nakamura",
	"story_min":0,
	"story_max":5,
	"mode":"story_only",
	"progress_zero":0,
	"progress_complete":5,
	"display_mode":"scene",
	"display_path":"res://ships/modules/PDT-minigun.tscn",
	"display_positioning":{
		"position":[140,0],
		"rotation":90,
		"scale":[3,3],
	},
}

const STORY_PROGRESS = {
	"name":"RESEARCH_NAME_TEMPLATE",
	"description":"RESEARCH_TOOLTIP_TEMPLATE",
	"story_flag":"example.story",
	"story_min":0,
	"story_max":3,
	"tooltip_text":"STORY_EXAMPLE_TEXT",
	"mode":"story_progress",
	"progress_zero":0,
	"progress_complete":5,
	"unlock_story":"example.story.complete",
	"unlock_set":5,
}

const ISOLATED = {
	"name":"RESEARCH_NAME_TEMPLATE2",
	"description":"RESEARCH_TOOLTIP_TEMPLATE",
	"mode":"isolated",
	"initiation_price":100000,
	"tasks":[
		{
			"mode":"story",
			"story_flag":"example.story",
			"story_min":0,
			"story_max":10,
			"tooltip_text":"STORY_EXAMPLE_TEXT",
			"reset_on_halt":false,
		},
		{
			"mode":"payment",
			"story_flag":"example.payment",
			"amount":1000000,
			"tooltip_text":"STORY_EXAMPLE_TEXT",
			"reset_on_halt":false,
		},
		{
			"mode":"time",
			"story_flag":"example.time",
			"minutes":5,
			"hours":5,
			"days":3,
			"months":1,
			"years":0,
			"tooltip_text":"STORY_EXAMPLE_TEXT",
			"reset_on_halt":false,
		},
	],
	"unlock_story":"example.story.complete",
	"unlock_set":5,
	"show_when":{
		
	}
}



