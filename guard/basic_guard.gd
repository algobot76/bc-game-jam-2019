extends KinematicBody2D

onready var player = get_node('/root/Node/Player')
const RUN_SPEED = 100
const WALK_SPEED = 60
const R_MINUS = 1
const RADIUS = 100
const CATCH = 80
const PATROL_RANGE = 100

var motion = Vector2()
var buffer = 15
var cur_pos = null


func chase(detect_range, distance):
	var p_pos_x = player.position.x
	var self_pos_x = self.position.x
	var p_pos_y = player.position.y
	var self_pos_y = self.position.y

	if p_pos_x - buffer > self_pos_x:
		motion.x = 1
	elif p_pos_x + buffer < self_pos_x:
		motion.x = -1
	if p_pos_y - buffer > self_pos_y:
		motion.y = 1
	elif p_pos_y + buffer < self_pos_y:
		motion.y = -1		
	
	motion = motion.normalized() * RUN_SPEED
	
	if is_on_wall():
		motion.y = 0
		motion.x = 0
		
	if abs(distance) <= CATCH:
		get_tree().paused = true
		get_node('/root/Node/GameOver').show()
		
func patrol():
	if cur_pos == null or cur_pos.distance_to(self.position) > PATROL_RANGE:
		motion.y = rand_range(-1,1)
		motion.x = rand_range(-1,1)
		motion = motion.normalized() * WALK_SPEED
		cur_pos = self.position
		

func _physics_process(delta):
	var detect_range = player.get('invisibility') + RADIUS
	var distance = player.position.distance_to(self.position)
	if distance <= detect_range:
		chase(detect_range, distance)
	else:
		patrol()
	motion = move_and_slide(motion)
		
		