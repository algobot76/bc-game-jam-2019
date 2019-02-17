extends Node

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	var num = 10
	while num > 0:
		num -= 1
		var food_resource = preload("res://Foods/Foods.tscn")
		var script = preload("res://Foods/Burger.gd")
		var food = food_resource.instance()
		food.set_script(script)
		food.position.x = rand_range(100, 1400)
		food.position.y = rand_range(100, 1400)
		self.add_child(food)

