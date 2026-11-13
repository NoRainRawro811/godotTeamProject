extends CanvasLayer

@onready var label: Label = $Label
@onready var timer: Timer = $Timer

var timeElapsed: int = 180
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer.timeout.connect(onTimerTimeout)
	update_label()
	# Add kill code for player later 

func onTimerTimeout() -> void:
	timeElapsed -= 1
	update_label()

func update_label() -> void:
	var minutes = timeElapsed / 60
	var seconds = timeElapsed % 60
	label.text = "%02d:%02d" % [minutes, seconds]
