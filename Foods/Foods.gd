extends Node

var script_paths = [
	{'path': "res://Foods/Redbull.gd", 'img':'res://Foods/imgs/drink/d1.png'},
	{'path': "res://Foods/Redbull.gd", 'img':'res://Foods/imgs/drink/d2.png'},
	{'path': "res://Foods/Redbull.gd", 'img':'res://Foods/imgs/drink/d3.png'},
	{'path': "res://Foods/Redbull.gd", 'img':'res://Foods/imgs/drink/d4.png'},
	{'path': "res://Foods/Redbull.gd", 'img':'res://Foods/imgs/drink/y1.png'},
	{'path': "res://Foods/Chips.gd", 'img':'res://Foods/imgs/food/1.png'},
	{'path': "res://Foods/Chips.gd", 'img':'res://Foods/imgs/food/2.png'},
	{'path': "res://Foods/Chips.gd", 'img':'res://Foods/imgs/food/3.png'},
	{'path': "res://Foods/Chips.gd", 'img':'res://Foods/imgs/food/4.png'},
	{'path': "res://Foods/Chips.gd", 'img':'res://Foods/imgs/food/5.png'},
	{'path': "res://Foods/Chips.gd", 'img':'res://Foods/imgs/food/6.png'},
 ]

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	var num = 10
	while num > 0:
		num -= 1
		var script_elem = script_paths[randi() % script_paths.size()]
		var food_resource = preload("res://Foods/Foods.tscn")
		var food = food_resource.instance()
		food.set_script(load(script_elem['path']))
		food.get_node('Sprite').texture = load(script_elem['img'])
		food.get_node('Sprite').set_scale(Vector2(0.5,0.5))
		food.position.x = rand_range(100, 1400)
		food.position.y = rand_range(100, 1400)
		self.add_child(food)

