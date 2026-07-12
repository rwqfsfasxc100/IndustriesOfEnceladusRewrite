extends "res://enceladus/Dealer.gd"

func _ready():
	viewport.add_child(load("res://IndustriesOfEnceladusRewrite/ships/dealer/Showroom-MADCERF.tscn").instance())
	viewport.add_child(load("res://IndustriesOfEnceladusRewrite/ships/dealer/Showroom-OBERON.tscn").instance())
	viewport.add_child(load("res://IndustriesOfEnceladusRewrite/ships/dealer/Showroom-Tsukuyomi.tscn").instance())
	viewport.add_child(load("res://IndustriesOfEnceladusRewrite/ships/dealer/Showroom-Wasp.tscn").instance())
