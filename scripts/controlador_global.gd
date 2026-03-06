extends Node

signal muertes_actualizado

var nivel: int
var muertes: int


func sumar_muerte():
	muertes += 1
	muertes_actualizado.emit()
