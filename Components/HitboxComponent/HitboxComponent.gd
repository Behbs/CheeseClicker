extends Area2D

@export var price_component : Node2D

var queijo = Queijaria.quant_queijo

signal on_quantity_change

func _on_input_event(viewport, event, shape_idx):
	if price_component:
		if event is InputEventMouseButton and event.pressed == false and event.button_index == 1 and Queijaria.quant_queijo >= price_component.price:
			price_component.quantity += 1
			queijo -= price_component.price
			on_quantity_change.emit()
			if price_component.quantity == 1:
				price_component.price += 10
			else:
				price_component.increase_price()

