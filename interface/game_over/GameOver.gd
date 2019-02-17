extends Control

onready var paths = preload("res://Paths.gd")

func _ready():
    visible = false
    get_node(paths.PLAYER).connect('died', self, '_on_Player_died')


func _on_Player_died():
    visible = true
    get_tree().paused = true
