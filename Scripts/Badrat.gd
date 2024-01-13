extends Area2D

@onready var label_badratlvl = $Con_badrat/Label_badratlvl
@onready var label_badratprc = $Con_badrat/Label_badratprc
var badrat_qps = 0
var badrat_prc = 10
var badrat_lvl = 0

func _on_badrat_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed == false and event.button_index == 1 and Queijaria.quant_queijo >= badrat_prc:
		if badrat_lvl == 0:
			Queijaria.quant_queijo -= badrat_prc
			badrat_qps += 1
			badrat_prc *= 2
			badrat_lvl += 1
		else:
			Queijaria.quant_queijo -= badrat_prc
			badrat_qps *= 2
			badrat_prc *= 2
			badrat_lvl += 1
		$Badrat/Spr_badrat/Badrat_jump.play("Rats_click")
		
func _process(delta):
	label_badratlvl.text = str(badrat_lvl)
	label_badratprc.text = str(badrat_prc)

