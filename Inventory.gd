extends Node

var inventory: Array = []

func add_to_inventory(item_name):
	inventory.append(item_name)

func has_item(item_name) -> bool:
	return item_name in inventory
