extends Node2D

@onready var label = $VBoxContainer/Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_2_toggled(toggled_on: bool) -> void:
	var bridge = load("res://ios/plugins/MyStaticlib.gdip").new()
	bridge._save_value("Hello", "keyhello")


func _on_button_pressed() -> void:
	var bridge = load("res://ios/plugins/MyStaticlib.gdip").new()
	label.text = bridge._get_value_for_key("keyhello")
