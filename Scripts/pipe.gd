extends StaticBody2D

class_name Pipe

const TOP_PIPE_HEIGHT = 25.5

@export var height = 32
@export var is_traversable = false

@onready var collision_shape_2d = $CollisionShape2D
@onready var body_sprite = $SpriteBase
@onready var sprite = $Sprite

func _ready1():
	var region_rect = Rect2(body_sprite.region_rect)
	region_rect.size = Vector2(32, sprite.position.y)
	body_sprite.region_rect = region_rect
	body_sprite.position = Vector2(0, (sprite.position.y  - TOP_PIPE_HEIGHT) / -2)
	
	var shape = RectangleShape2D.new()
	shape.size = Vector2(7.5, 20)
	collision_shape_2d.shape = shape
	collision_shape_2d.position = Vector2(0, (height - TOP_PIPE_HEIGHT) / 2)
