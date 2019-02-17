extends Control

onready var paths = preload("res://Paths.gd")

func _ready():
    var exit_node = get_node(paths.EXIT)
    exit_node.connect('win', self, 'play')


func play():
    get_tree().paused = true
    visible = true
    $VideoPlayer.play()
