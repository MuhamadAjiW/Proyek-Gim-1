extends Control

onready var scene_tree: = get_tree()
onready var pause_overlay: = get_node("ColorRect")

var paused: = false setget set_paused

func _unhandled_input(event) -> void:
	if event.is_action_pressed("pause"):
		self.paused = not paused
		scene_tree.set_input_as_handled()

func set_paused(value: bool) -> void:
	paused = value
	scene_tree.paused = value
	pause_overlay.visible = value
