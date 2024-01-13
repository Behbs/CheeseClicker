extends Area2D

@onready var label_ratlvl = $Con_rat/Label_ratlvl
@onready var label_ratprc = $Con_rat/Label_ratprc
var rat_prc = 1
var rat_lvl = 0

func _on_ratatouille_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed == false and event.button_index == 1 and queijaria.quant_queijo >= rat_prc:
		queijaria.quant_queijo -= rat_prc
		rat_prc *= 2
		queijaria.multp_click += 1
		rat_lvl += 1
		$Spr_ratatouille/Rat_jump.play("Rats_click")
	
func _process(delta):
	label_ratlvl.text = str(rat_lvl)
	label_ratprc.text = str(rat_prc)
	
