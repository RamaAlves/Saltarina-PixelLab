extends Control

export var nivel_1= ""

onready var nubes_lejanas= $ParallaxBackgroundMenuPrincipal/ParallaxNubesLejanas
onready var nubes_medias= $ParallaxBackgroundMenuPrincipal/ParallaxNubesMedias
onready var nubes_cercanas= $ParallaxBackgroundMenuPrincipal/ParallaxNubesCercanas

func _ready():
	DatosPlayer.reset()
	GlobalMusic.intro()

func _process(_delta):
	nubes_cercanas.motion_offset.x -= 2
	nubes_medias.motion_offset.x -= 1.5
	nubes_lejanas.motion_offset.x -= 1

func _on_BotonMenu_pressed():
	GlobalMusic.game()
# warning-ignore:return_value_discarded
	get_tree().change_scene(nivel_1)
