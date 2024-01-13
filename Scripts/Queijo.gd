extends Area2D

var queijo_click = 1 

func _on_queijo_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed == false and event.button_index == 1:
		queijaria.quant_queijo += queijo_click * queijaria.multp_click
		$Spr_queijo/Queijo_jump.play("Clicked")
