extends Node2D

const INSTANCES_TEXT = "Cantidad de instancias: "
# Variable para contar cantidad de instancias
var instancesCount = 0
@onready var redinstancia = $RedGenerator
@onready var violetinstancia = $VioletGenerator

func _ready():
	# Inicializa el texto de "CountLabel" usando el texto
	# Constante "INSTANCES_TEXT" más el valor de "instancesCount" como Texto
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)
	if redinstancia:
		redinstancia.button_down.connect(count_new_instance)
	if violetinstancia:
		violetinstancia.button_down.connect(count_new_instance)

func count_new_instance():
	instancesCount += 1
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)
	
