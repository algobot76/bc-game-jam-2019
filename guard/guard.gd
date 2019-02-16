extends KinematicBody2D

onready var player = get_node('/root/Node/Player')
const SPEED = 200
const R_MINUS = 1
const RADIUS = 100
const CATCH = 100

var motion = Vector2()
var speed = 100
var buffer = 15


func move(detect_range, distance):
	var p_pos_x = player.position.x
	var self_pos_x = self.position.x
	var p_pos_y = player.position.y
	var self_pos_y = self.position.y
	
	if distance <= detect_range : 
		if p_pos_x - buffer> self_pos_x:
			motion.x = 1
		elif p_pos_x + buffer < self_pos_x:
			motion.x = -1
		elif p_pos_y - buffer > self_pos_y:
			motion.y = 1
		elif p_pos_y + buffer < self_pos_y:
			motion.y = -1
		else:
			motion.y = 0
			motion.x = 0
	else:
			motion.y = 0
			motion.x = 0
			
	
	motion = motion.normalized() * SPEED
	
	if is_on_wall():
		motion.y = 0
		motion.x = 0
		
	if abs(distance) <= CATCH:
		get_node('/root/Node/GameOver').show()

func _physics_process(delta):
	var detect_range = player.get('invisibility') + RADIUS
	var distance = player.position.distance_to(self.position)
	move(detect_range, distance)
	
	motion = move_and_slide(motion)

		
		