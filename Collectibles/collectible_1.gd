extends Area2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var game_manager: Node = %GameManager



func _on_body_entered(body: Node2D) -> void:
	if (body.name == "CharacterBody2D"):
		animated_sprite_2d.animation = "collected"
		game_manager.add_points()
		animated_sprite_2d.connect("animation_finished", Callable(self, "_on_animation_finished"))

func _on_animation_finished() -> void:
	queue_free()
