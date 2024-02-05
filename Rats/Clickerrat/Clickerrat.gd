extends Node2D

@export var price_component : Node2D

func _on_hitbox_component_on_quantity_change():
	if price_component.quantity == 1:
		Queijaria.multp_queijo += 1
	else:
		Queijaria.multp_queijo *= price_component.quantity
