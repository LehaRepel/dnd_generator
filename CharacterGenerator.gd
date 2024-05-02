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
func random_sixes():
	var first: int
	var second: int
	var third: int
	var fourth: int
	var result: int
	
	
	
	return result


func _on_BackToMenuButton_pressed():
	get_tree().change_scene_to_file("res://Menu.tscn")


func _on_GenerateStatsButton_pressed():
	var Str = 11
	var Dex = 11
	var Con = 11
	var Int = 11
	var Wis = 11
	var Cha = 11
	$GenerateStatsContainer/StrContainer/StrNumberLabel.text = str(Str)
	$GenerateStatsContainer/DexContainer/DexNumberLabel.text = str(Dex)
	$GenerateStatsContainer/ConContainer/ConNumberLabel.text = str(Con)
	$GenerateStatsContainer/IntContainer/IntNumberLabel.text = str(Int)
	$GenerateStatsContainer/WisContainer/WisNumberLabel.text = str(Wis)
	$GenerateStatsContainer/ChaContainer/ChaNumberLabel.text = str(Cha)
