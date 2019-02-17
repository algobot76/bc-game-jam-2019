extends Control

onready var paths = preload("res://Paths.gd")

func _ready():
    var player = get_node(paths.PLAYER)
    var energy_node = player.get_node('Energy')
    energy_node.connect('energy_changed', self, '_on_Energy_energy_changed')
    $EnergyBar.initialize(energy_node.max_energy)


func _on_Energy_energy_changed(energy):
    $EnergyBar.display_energy(energy)
    pass
