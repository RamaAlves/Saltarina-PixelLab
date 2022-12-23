extends Area2D

onready var animacion = $AnimationPlayer
onready var detector_jugador = $CollisionShape2D

func _on_body_entered(body):
	aplicar_power_up(body)
	detector_jugador.set_deferred("disabled", true)
	animacion.play("Consumir")

# warning-ignore:unused_argument
func aplicar_power_up(body):
	pass
