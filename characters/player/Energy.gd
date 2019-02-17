extends Node

signal energy_changed(energy)

var energy = 0
export (int) var max_energy = 10

func _ready():
	energy = max_energy

func take_damage(amount):
	energy -= amount
	if energy < 0:
		energy = 0
	emit_signal('energy_changed', energy)
