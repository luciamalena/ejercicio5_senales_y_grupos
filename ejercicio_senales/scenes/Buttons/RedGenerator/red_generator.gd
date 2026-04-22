extends TextureButton
@onready var scene = preload("res://scenes/Blocks/Red/BlockRed.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_down() -> void:
	generate_block()


func generate_block():
	var instance = scene.instantiate()
	add_child(instance)
	
