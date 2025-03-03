extends Control

@onready var btnInventory = $Panel/btnInventory
@onready var uiInventory = $"../uiInventory"

func _on_btn_inventory_pressed() -> void:
	uiInventory.show()
