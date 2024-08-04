extends Node2D

var click_power = 1

func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed == true and event.button_index == 1:
		Queijaria.quant_queijo += click_power * Queijaria.multp_queijo
		Queijaria.total_queijo += click_power * Queijaria.multp_queijo



