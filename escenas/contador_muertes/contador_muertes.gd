extends Control

@export var label: Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	ControladorGlobal.muertes_actualizado.connect(_actualizar_texto)
	_actualizar_texto()


func _actualizar_texto():
	label.text = str(ControladorGlobal.muertes)
