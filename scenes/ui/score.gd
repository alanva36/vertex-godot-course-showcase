extends Label

var score: int = 0

func _ready() -> void:
	text = "Gems: " + str(GameManager.score)
	GameManager.score_changed.connect(_on_score_changed)

func _on_score_changed(new_score: int) -> void:
	text = "Gems: " + str(new_score)
