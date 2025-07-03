extends Area2D

var halfGame_Audio: AudioStreamPlayer

func _ready():
	halfGame_Audio = get_parent().get_node("HalfGame_Audio") 

func _on_area_entered(area: Area2D) -> void:
	halfGame_Audio.play()
