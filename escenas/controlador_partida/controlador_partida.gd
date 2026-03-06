class_name ControladorPartida
extends Node

@export var partida: DatosPartida

var _ruta: String = "user://partida.tres"


func guardar_partida():
	partida.nivel = ControladorGlobal.nivel
	partida.muertes = ControladorGlobal.muertes
	ResourceSaver.save(partida, _ruta)

func cargar_partida():
	if ResourceLoader.exists(_ruta):
		partida = load(_ruta)
		
		ControladorGlobal.nivel = partida.nivel
		ControladorGlobal.muertes = partida.muertes
