extends Control

@export var price_component : Node2D
@onready var quantity_label = $Label_quantity

func _process(delta):
	quantity_label.text = str(price_component.quantity)
