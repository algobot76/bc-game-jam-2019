extends KinematicBody2D

const SPEED = 300
const R_MINUS = 1

onready var util = preload("res://Utils.gd")
onready var paths = preload("res://Paths.gd")
var motion = Vector2()
var speed = 100
var size = 10
var invisibility = 100

func _ready():
	$Energy.connect('energy_changed', self, '_on_Energy_energy_changed')


func move():
	if Input.is_key_pressed(KEY_D):
		motion.x = 1
	elif Input.is_key_pressed(KEY_A):
		motion.x = -1
	else:
		motion.x = 0
	if Input.is_key_pressed(KEY_W):
		motion.y = -1
	elif Input.is_key_pressed(KEY_S):
		motion.y = 1
	else:
		motion.y = 0


	motion = motion.normalized() * SPEED

	if is_on_wall():
		motion.y = 0
		motion.x = 0

func _physics_process(delta):
	move()
	var collision = move_and_collide(util.cartesian_to_isometric(motion) * delta)
	if collision:
		if collision.collider.is_in_group('Guards'):
			$Energy.take_damage(1)


func _on_Energy_energy_changed(energy):
	if energy == 0:
		get_tree().paused = true
		get_node(paths.GAME_OVER_PATH).show()
