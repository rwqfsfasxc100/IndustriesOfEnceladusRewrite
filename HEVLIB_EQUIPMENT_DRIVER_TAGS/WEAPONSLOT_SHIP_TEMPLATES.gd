extends Node

const WEAPONSLOT_SHIP_TEMPLATES = {
	"SHIP_OCP209":{
		"leftBay1":{
			"MINING_COMPANIONS":[
				{
				"property":"position",
				"value":"Vector2( 0, 210 )"
				}
			],
			"CLAIM_BEACONS":[
				{
					"property":"position",
					"value":"Vector2( -25, 196 )"
				}
			]
		},
		"leftBay3":{
			"MINING_COMPANIONS":[
				{
				"property":"position",
				"value":"Vector2( 0, 210 )"
				}
			]
		},
		"rightBay1":{
			"MINING_COMPANIONS":[
				{
				"property":"position",
				"value":"Vector2( 0, 210 )"
				}
			],
			"CLAIM_BEACONS":[
				{
					"property":"position",
					"value":"Vector2( 25, 196 )"
				}
			]
		},
		"rightBay3":{
			"MINING_COMPANIONS":[
				{
					"property":"position",
					"value":"Vector2( 0, 210 )"
				}
			]
		},
	},
	"SHIP_OBERON":{
		"mainLeft":{
			"MANIPULATION_ARMS":[
				{
					"property":"feedVelocity",
					"value":"Vector2( -60, -280 )"
				},
				{
					"property":"flip",
					"value":"true"
				}
			]
		},
		"mainRight":{
			"MANIPULATION_ARMS":[
				{
					"property":"feedVelocity",
					"value":"Vector2( 60, -280 )"
				}
			]
		},
	},
	"SHIP_PROSPECTOR":{
		"left":{
			"MANIPULATION_ARMS":[
				{
					"property":"position",
					"value":"Vector2( 30, -80 )"
				}
			]
		},
		"right":{
			"MANIPULATION_ARMS":[
				{
					"property":"position",
					"value":"Vector2( -30, -80 )"
				}
			]
		}
	},
	"SHIP_PROSPECTOR_BALD":{
		"left":{
			"MANIPULATION_ARMS":[
				{
					"property":"position",
					"value":"Vector2( 30, 130 )"
				}
			]
		},
		"right":{
			"MANIPULATION_ARMS":[
				{
					"property":"position",
					"value":"Vector2( -30, 130 )"
				}
			]
		}
	},
	"SHIP_ATLAS_WASP":{
		"left":{
			"MANIPULATION_ARMS":[
				{
					"property":"position",
					"value":"Vector2( 25, 130 )"
				}
			]
		},
		"right":{
			"MANIPULATION_ARMS":[
				{
					"property":"position",
					"value":"Vector2( -25, 130 )"
				}
			]
		}
	},
	"SHIP_AT225":{
		"middleLeft":{
			"MANIPULATION_ARMS":[
				{
					"property":"position",
					"value":"Vector2( 40, 100 )"
				}
			]
		},
		"middleRight":{
			"MANIPULATION_ARMS":[
				{
					"property":"position",
					"value":"Vector2( -40, 100 )"
				}
			]
		}
	},
	"SHIP_TSUKUYOMI_IOT":{
		"left":{
			"MANIPULATION_ARMS":[
				{
					"property":"position",
					"value":"Vector2( 50, 100 )"
				}
			]
		},
		"right":{
			"MANIPULATION_ARMS":[
				{
					"property":"position",
					"value":"Vector2( -50, 100 )"
				}
			]
		}
	},
	"SHIP_TRTL_PEEPER":{
		"left":{
			"MANIPULATION_ARMS":[
				{
					"property":"position",
					"value":"Vector2( 105, 90 )"
				}
			]
		},
		"right":{
			"MANIPULATION_ARMS":[
				{
					"property":"position",
					"value":"Vector2( -105, 90 )"
				}
			]
		}
	}
}
