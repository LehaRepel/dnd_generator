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
	var result = 0
	var array_sixes: Array
	first = randi_range(1, 6)
	
	second = randi_range(1, 6)
	
	third = randi_range(1, 6)
	fourth = randi_range(1, 6)
	array_sixes.append(first)
	array_sixes.append(second)
	array_sixes.append(third)
	array_sixes.append(fourth)
	array_sixes.sort()
	array_sixes = array_sixes.slice(1, 4)
	print(array_sixes)
	for i in array_sixes:
		result += i
	return result
	
func set_value(number):
	match number:
		4:
			return "-3"
		5, 6:
			return "-2"
		7, 8:
			return "-1"
		9, 10, 11:
			return "0"
		12, 13:
			return "+1"
		14, 15:
			return "+2"
		16, 17:
			return "+3"
		18:
			return "+4"
		


func _on_BackToMenuButton_pressed():
	get_tree().change_scene_to_file("res://scenes/Menu.tscn")


func _on_GenerateStatsButton_pressed():
	var Str = random_sixes()
	var Dex = random_sixes()
	var Con = random_sixes()
	var Int = random_sixes()
	var Wis = random_sixes()
	var Cha = random_sixes()
	$GenerateStatsContainer/StrContainer/StrNumberLabel.text = str(Str)
	$GenerateStatsContainer/DexContainer/DexNumberLabel.text = str(Dex)
	$GenerateStatsContainer/ConContainer/ConNumberLabel.text = str(Con)
	$GenerateStatsContainer/IntContainer/IntNumberLabel.text = str(Int)
	$GenerateStatsContainer/WisContainer/WisNumberLabel.text = str(Wis)
	$GenerateStatsContainer/ChaContainer/ChaNumberLabel.text = str(Cha)
	$GenerateStatsContainer/StrContainer/StrValueLabel.text = set_value(Str)
	$GenerateStatsContainer/DexContainer/DexValueLabel.text = set_value(Dex)
	$GenerateStatsContainer/ConContainer/ConValueLabel.text = set_value(Con)
	$GenerateStatsContainer/IntContainer/IntValueLabel.text = set_value(Int)
	$GenerateStatsContainer/WisContainer/WisValueLabel.text = set_value(Wis)
	$GenerateStatsContainer/ChaContainer/ChaValueLabel.text = set_value(Cha)
