extends Timer

signal timer_changed

onready var elapsed_seconds = 0
var max_seconds = 1

func _process(delta):
    elapsed_seconds += delta
    if elapsed_seconds > max_seconds:
        elapsed_seconds = 0
        emit_signal('timer_changed')
