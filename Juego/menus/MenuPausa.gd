extends Control

export var menu_principal = ""

func _ready():
	visible = false

func _input(event):
	if event.is_action_pressed("pausa"):
		pausar()

func _on_BotonContinuar_pressed():
	pausar()

func pausar():
	visible=!visible
	get_tree().paused = !get_tree().paused


func _on_BotonMenuPrincipal_pressed():
	DatosPlayer.reset()
	get_tree().paused = false
# warning-ignore:return_value_discarded
	get_tree().change_scene(menu_principal)
