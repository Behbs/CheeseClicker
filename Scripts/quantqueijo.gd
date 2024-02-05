extends Control

@onready var label = $Label

func _process(delta):
	label.text = str(Queijaria.quant_queijo)
	
