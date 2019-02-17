extends VBoxContainer

func _ready():
	$TextureButton.connect('pressed', self, '_on_Button_pressed')


func _on_Button_pressed():
	get_tree().change_scene('res://Game.tscn')
