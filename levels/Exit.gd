extends Area2D

func _physics_process(delta):
    var bodies = get_overlapping_bodies()
    for body in bodies:
        if body.get_name() == 'Player':
            get_tree().change_scene('res://interface/win/Win.tscn')
