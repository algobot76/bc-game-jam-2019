extends HBoxContainer


var maximum = 100

func initialize(max_value):
    maximum = max_value
    $Count/Number.text = str(maximum) + '/'+ str(maximum)
    $TextureProgress.value = max_value


func display_energy(energy):
    $Count/Number.text = str(energy) + '/'+ str(maximum)
    $TextureProgress.value = energy
    pass
