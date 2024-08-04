extends Control

@export var price_component : Node2D
@onready var price_label = $Label_Price

func _process(delta):
	price_label.text = str(price_component.price)
