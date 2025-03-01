extends Control

@onready var LabelNamaItem = $Panel/NamaItem
@onready var LabelDeskripsiItem = $Panel/DeskripsiItem
@onready var ButtonTutup = $Panel/ButtonTutup

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	ButtonTutup.pressed.connect(hide_popup)
	hide()

func hide_popup():
	hide()

func show_popup(nama_objek: String, deskripsi_objek: String):
	LabelNamaItem.text = nama_objek
	LabelDeskripsiItem.text = deskripsi_objek
	show()
