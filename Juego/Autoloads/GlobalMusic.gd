extends Node

onready var music_game = $game
onready var music_intro =$intro
onready var music_game_over =$game_over
onready var music_victory =$victory

var playing_game = false

func test():
	if !playing_game:
		playing_game = !playing_game
		game()

func game():
	music_victory.stop()
	music_game_over.stop()
	music_intro.stop()
	music_game.play()

func intro():
	music_game_over.stop()
	music_victory.stop()
	music_game.stop()
	music_intro.play()

func game_over():
	music_game.stop()
	music_intro.stop()
	music_victory.stop()
	music_game_over.play()

func victory():
	music_game.stop()
	music_intro.stop()
	music_game_over.stop()
	music_victory.play()
