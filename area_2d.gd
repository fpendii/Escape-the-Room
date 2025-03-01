extends Area2D

@export var objeck_name: String = "Kucing"
@export var objeck_deskripsi: String = "ini kucing"
@onready var ui_popup = $"../../UI_Popup"
@onready var inventory = $"../../Inventory"
@onready var objek = $".."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	connect("input_event", _on_input_event)
	
	
func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		add_to_inventory()
		objek.queue_free()


func add_to_inventory():
	inventory.add_to_inventory(objeck_name)
	show_interaction()
	print(inventory.inventory)

func show_interaction():
	var popup = ui_popup
	popup.show_popup(objeck_name, objeck_deskripsi)
