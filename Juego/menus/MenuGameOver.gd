extends Control

export var menu_principal= ""

var nivel_actual= ""

onready var nubes_lejanas= $ParallaxBackgroundMenuPrincipal/ParallaxNubesLejanas
onready var nubes_medias= $ParallaxBackgroundMenuPrincipal/ParallaxNubesMedias
onready var nubes_cercanas= $ParallaxBackgroundMenuPrincipal/ParallaxNubesCercanas

func _ready():
	GlobalMusic.game_over()
	nivel_actual=DatosPlayer.nivel_actual
	DatosPlayer.reset()

func _process(_delta):
	nubes_cercanas.motion_offset.x -= 2
	nubes_medias.motion_offset.x -= 1.5
	nubes_lejanas.motion_offset.x -= 1

func _on_Reintentar_pressed():
	GlobalMusic.game()
# warning-ignore:return_value_discarded
	get_tree().change_scene(nivel_actual)

func _on_MenuPrincipal_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene(menu_principal)
