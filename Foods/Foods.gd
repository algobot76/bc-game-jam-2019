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

onready var paths = preload("res://Paths.gd")

onready var tiles = get_node('/root/Game/Level_1/Grid')

func _ready():
	var tiles_array = tiles.get_used_cells()
	var num = 10
	while num > 0:
		num -= 1
		var script_elem = script_paths[randi() % script_paths.size()]
		var food_resource = preload("res://Foods/Foods.tscn")
		var food = food_resource.instance()
		food.set_script(load(script_elem['path']))
		food.get_node('Sprite').texture = load(script_elem['img'])
		food.get_node('Sprite').set_scale(Vector2(0.5,0.5))
		var tile = tiles.map_to_world(tiles_array[randi() % tiles_array.size()])
		food.position.x = tile.x
		food.position.y = tile.y
		self.add_child(food)

