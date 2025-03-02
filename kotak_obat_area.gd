extends Area2D

@export var objeck_name: String = "Kotak Obat"
@export var objeck_deskripsi: String = "Kotak Obat ini terkunci, kamu membutuhkan kunci untuk membukanya"
@onready var ui_popup = $"../../UI_Popup"
@onready var inventory = $"../../Inventory"
@onready var objek = $".."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	connect("input_event", _on_input_event)
	
	
func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		if inventory.has_item("Kunci"):
			
			bukaKotak()
		else :
			show_interaction()

func bukaKotak():
	show_interaction("Kotak Terbuka")

func add_to_inventory():
	inventory.add_to_inventory(objeck_name)
	show_interaction()
	print(inventory.inventory)

func show_interaction(notif = null):
	var popup = ui_popup
	popup.show_popup(objeck_name, objeck_deskripsi, notif)
