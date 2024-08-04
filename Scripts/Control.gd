extends Control

@onready var quant_label = $quant

func _process(delta):
	quant_label.text = str(floor(Queijaria.quant_queijo))
	
