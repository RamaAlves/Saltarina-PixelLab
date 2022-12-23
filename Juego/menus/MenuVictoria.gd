extends Control

export var menu_principal= ""

onready var nubes_lejanas= $ParallaxBackgroundMenuPrincipal/ParallaxNubesLejanas
onready var nubes_medias= $ParallaxBackgroundMenuPrincipal/ParallaxNubesMedias
onready var nubes_cercanas= $ParallaxBackgroundMenuPrincipal/ParallaxNubesCercanas
onready var puntaje = $PanelPuntaje/Puntaje

func _ready():
	GlobalMusic.victory()
	puntaje.text= "puntaje: {points}".format({"points": DatosPlayer.generar_puntaje()})

func _process(_delta):
	nubes_cercanas.motion_offset.x -= 2
	nubes_medias.motion_offset.x -= 1.5
	nubes_lejanas.motion_offset.x -= 1

func _on_MenuPrincipal_pressed():
	DatosPlayer.reset()
# warning-ignore:return_value_discarded
	get_tree().change_scene(menu_principal)
