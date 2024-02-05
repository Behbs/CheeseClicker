extends Node2D

@export var quantity = 0
@export var base_price = 10
var price : float


func _ready():
	price = base_price

func increase_price():
	price = base_price * quantity ** 2
	
	

