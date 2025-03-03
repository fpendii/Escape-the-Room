extends Control

@onready var inventory = $"../Inventory"
@onready var labelDataInventory = $PanelInventory/labelDataInventory
@onready var buttonOpen = $Panel2/btnOpenInventory
@onready var panelInventory = $PanelInventory

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	buttonOpen.show()
	panelInventory.hide()

func updateInventory():
	var dataInventory = inventory.inventory
	var result = ""
	for item in dataInventory:
		result += str(item) + "\n"
	labelDataInventory.text = result

func _on_btn_tutup_pressed() -> void:
	panelInventory.hide()

func _on_btn_open_inventory_pressed() -> void:
	updateInventory()
	panelInventory.show()
	
