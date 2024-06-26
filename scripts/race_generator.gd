extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	add_items_to_size()
	add_items_to_visions()
	add_items_to_skills()
	add_items_to_save_throws()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://scenes/options.tscn")

var array_sizes = ["Крохотный", "Маленький", "Средний", "Большой", "Огромный"]
func add_items_to_size():
	for item in array_sizes:
		$MainContainer/ContentContainer/MainContentContainer/SizeContainer/SizeOptionButton.add_item(item)

var array_save_throws = ["Нет", "Очарование", "Испуг", "Яд", "Магия"]	
func add_items_to_save_throws():
	for item in array_save_throws:
		$MainContainer/ContentContainer/MainContentContainer/SaveThrowsContainer/SaveThrowsOptionButton.add_item(item)
var array_skills = ["Нет","Атлетика","Акробатика","Ловкость рук","Скрытность",
"История","Магия","Природа","Расследование","Религия","Влсприятие","Выживание",
"Медицина","Проницательность","Уход за животными","Выступление","Запгивание",
"Обман","Убеждение"]
func add_items_to_skills():
	for item in array_skills:
		$MainContainer/ContentContainer/MainContentContainer/SkillProficiencyContainer/SkillProficiencyOptionButton.add_item(item)

func _on_size_option_button_item_selected(index):
	pass # Replace with function body.

var array_visions = ["Обычное (как у человека)", "Тёмное зрение"]
func add_items_to_visions():
	for item in array_visions:
		$MainContainer/ContentContainer/MainContentContainer/VisionContainer/VisionOptionButton.add_item(item)


func _on_generate_button_pressed():
	var filename: String
	var json = JSON.new()
	var path = "res://data/races/%s.json" % filename
	#var path = format_path % filename
