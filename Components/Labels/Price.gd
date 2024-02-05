extends Control

@export var price_component : Node2D
@export var price_label : Label

func _process(delta):
	price_label.text = str(price_component.price)
