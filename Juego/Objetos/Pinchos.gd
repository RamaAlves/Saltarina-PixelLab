extends Area2D

export var es_trampa= false

var color_trampa = Color.purple

onready var detector_jugador = $RayCast2D
onready var animacion = $AnimationPlayer

func _ready():
	if es_trampa:
		$Sprite.modulate = color_trampa
		detector_jugador.enabled = true
		rotation_degrees=180

func _process(_delta):
	if detector_jugador.is_colliding():
		detector_jugador.set_deferred("enabled", false)
		animacion.play("Caer")

func _on_body_entered(body):
	body.respawn()
