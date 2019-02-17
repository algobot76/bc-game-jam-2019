extends Area2D

signal win

func _physics_process(delta):
    var bodies = get_overlapping_bodies()
    for body in bodies:
        if body.get_name() == 'Player':
            emit_signal('win')
