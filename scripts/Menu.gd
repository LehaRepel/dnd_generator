extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_StartButton_pressed():
	get_tree().change_scene_to_file("res://scenes/CharacterGenerator.tscn")
	

func _on_ExitButton_pressed():
	get_tree().quit()


func _on_options_button_pressed():
	get_tree().change_scene_to_file("res://scenes/options.tscn")


func _on_credits_button_pressed():
	get_tree().change_scene_to_file("res://scenes/credits.tscn")
