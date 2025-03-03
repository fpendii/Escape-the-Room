extends Control

var kode = "1234"
var input_kode = ""

@onready var display_label = $Panel/VBoxContainer/DislayLabel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	display_label.text = "Masuk kan nomer di sini Babi"



func tambah_angka(angka):
	if input_kode.length() < 4:
		input_kode += angka
		display_label.text = input_kode


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_btn_clear_pressed() -> void:
	input_kode = ""
	display_label.text = ""


func _on_btn_enter_pressed() -> void:
	if input_kode == kode:
		display_label.text = "Kode Benar!!"
	else:
		display_label.text = "Kode Salah!!"
		input_kode = ""
		await get_tree().create_timer(1.5).timeout
		display_label.text = ""


func _on_button_pressed() -> void:
	tambah_angka("1")

func _on_button_2_pressed() -> void:
	tambah_angka("2")

func _on_button_3_pressed() -> void:
	tambah_angka("3")

func _on_button_4_pressed() -> void:
	tambah_angka("4")

func _on_button_5_pressed() -> void:
	tambah_angka("5")

func _on_button_6_pressed() -> void:
	tambah_angka("6")


func _on_button_7_pressed() -> void:
	tambah_angka("7")


func _on_button_8_pressed() -> void:
	tambah_angka("8")


func _on_button_9_pressed() -> void:
	tambah_angka("9")

func _on_button_10_pressed() -> void:
	tambah_angka("0")
