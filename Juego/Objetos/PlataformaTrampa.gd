extends StaticBody2D

func _on_body_entered(_body):
	$DetectorJugador/Colisionador.set_deferred("disabled", true)
	$AnimationPlayer.play("caerse")

func desabilitar_colisionador():
	$Colisionador.set_deferred("disabled", true)
