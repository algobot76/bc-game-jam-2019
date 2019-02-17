extends Node

onready var paths = preload("res://Paths.gd")
onready var timer  = get_node(paths.TIMER)

func _process(delta):
    timer.get_node('Label').text = str(int(timer.get_time_left())) + 's'
