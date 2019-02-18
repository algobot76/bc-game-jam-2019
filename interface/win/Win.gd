extends Control

func _ready():
    if get_tree().get_current_scene().get_name() == 'Win':
        play()
    $VideoPlayer.connect('video_finished', self, '_on_VideoPlayer_video_finished')


func play():
    get_tree().paused = true
    visible = true
    $VideoPlayer.play()


func _on_VideoPlayer_video_finished():
    get_tree().change_scene('res://interface/win/EndMenu.tscn')
