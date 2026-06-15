extends Node

@export var sword_ability: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#get_node("Timer")
	$Timer.timeout.connect(on_timer_timeout) #this is a shortcut for the get_node


func on_timer_timeout():
	var player = get_tree().get_first_node_in_group("player") as Node2D
	if player == null:
		return
		
	var swrod_instance = sword_ability.instantiate() as Node2D
	player.get_parent().add_child(swrod_instance)
	swrod_instance.global_position = player.global_position 
