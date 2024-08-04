extends Node2D

signal Clickerrat

var lmt_crat = 0

func _physics_process(delta):
	if Queijaria.total_queijo > 9 and lmt_crat < 1:
		emit_signal("Clickerrat")
		lmt_crat += 1
	
		
		
		
		
	

