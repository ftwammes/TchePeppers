extends TextureButton

# Caminho da cena para a qual você quer ir
var next_scene := "res://Scenes/main.tscn"

func _ready() -> void:
	connect("pressed", Callable(self, "_on_Button_pressed"))

func _on_Button_pressed():
	get_tree().change_scene_to_file(next_scene)
