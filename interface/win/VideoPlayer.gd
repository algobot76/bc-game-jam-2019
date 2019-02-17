extends VideoPlayer

signal video_finished

func _process(delta):
    if !self.is_playing() and get_tree().get_current_scene().get_name() == 'Win':
        print()
        emit_signal('video_finished')
