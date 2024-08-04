extends Node2D

var crat = preload("res://Rats/Clickerrat/Clickerrat.tscn")

func Crat(pos):
	var inst = crat.instantiate()
	inst.position = pos
	add_child(inst)
	
func _on_progression_clickerrat():
	
	Crat(Vector2(960,-512))
	
	
