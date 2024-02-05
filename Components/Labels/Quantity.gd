extends Control

@export var price_component : Node2D
@export var quantity_label : Label

func _process(delta):
	quantity_label.text = str(price_component.quantity)
