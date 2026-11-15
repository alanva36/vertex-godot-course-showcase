extends Node

signal score_changed(new_score: int)

var score: int = 0:
	set(value):
		score = value
		score_changed.emit(score) # Automatically emits whenever score changes

func add_score(amount: int = 1) -> void:
	score += amount
