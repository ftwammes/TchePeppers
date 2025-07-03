extends Node2D

var welcome_Audio: AudioStreamPlayer
var welcome_Audio2: AudioStreamPlayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	welcome_Audio = $Welcome_Audio
	welcome_Audio2 = $Welcome_Audio2
	
	# Conectando o sinal de término do primeiro áudio corretamente
	welcome_Audio.connect("finished", _on_audio1_finished, 0)
	
	# Iniciando áudio
	welcome_Audio.play()

# Este método é chamado quando o primeiro áudio termina
func _on_audio1_finished():
	# Reproduzindo o segundo áudio
	welcome_Audio2.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
