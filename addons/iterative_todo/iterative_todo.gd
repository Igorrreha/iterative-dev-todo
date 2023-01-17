@tool
extends EditorPlugin


const MAIN_CONTROL_TSCN = preload("res://addons/iterative_todo/main_control.tscn")
const ICON = preload("res://addons/iterative_todo/icon.svg")

var _main_control: Control


func _enter_tree() -> void:
	_main_control = MAIN_CONTROL_TSCN.instantiate()
	get_editor_interface().get_editor_main_screen().add_child(_main_control)
	_make_visible(false)


func _exit_tree() -> void:
	if _main_control:
		_main_control.queue_free()


func _make_visible(visible: bool) -> void:
	if _main_control:
		_main_control.visible = visible


func _has_main_screen() -> bool:
	return true


func _get_plugin_name() -> String:
	return "Iterations"


func _get_plugin_icon() -> Texture2D:
	return ICON
