extends KinematicBody2D

const SPEED = 200
const R_MINUS = 1

var motion = Vector2()

func move():
	if Input.is_key_pressed(KEY_D):
		motion.x = 1
	elif Input.is_key_pressed(KEY_A):
		motion.x = -1
	elif Input.is_key_pressed(KEY_W):
		motion.y = -1
	elif Input.is_key_pressed(KEY_S):
		motion.y = 1
	else:
		motion.y = 0
		motion.x = 0
	
	motion = motion.normalized() * SPEED
	
	if is_on_wall():
		motion.y = 0
		motion.x = 0

func _physics_process(delta):
	move()
	motion = move_and_slide(motion)


func eat():
	pass
	
func run():
	pass
	