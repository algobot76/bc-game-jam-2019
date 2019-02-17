extends Control

onready var paths = preload("res://Paths.gd")

func _ready():
    var player = get_node(paths.PLAYER)
    player.get_node('Energy').connect('energy_changed', self, '_on_Energy_energy_changed')


func _on_Energy_energy_changed(energy):
    print('Energy: ', energy)
    pass
