extends Node

onready var paths = preload("res://Paths.gd")

func _ready():
    var timer  = get_node(paths.TIMER)

