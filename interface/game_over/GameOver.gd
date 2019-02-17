extends Control

onready var paths = preload("res://Paths.gd")

func _ready():
    visible = false
    get_node(paths.PLAYER).connect('died', self, '_on_Player_died')
    get_node(paths.TIMER).connect('timeout', self, '_on_Timer_timeout')


func _on_Player_died():
    visible = true
    get_tree().paused = true


func _on_Timer_timeout():
    visible = true
    get_tree().paused = true
