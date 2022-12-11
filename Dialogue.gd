extends Control

var dialogue = []
var dialogue_pos = 0

signal finished_dialogue

func ready():
	hide()

#func _physics_process(_delta):
#	if dialogue.size() and dialogue_pos < dialogue.size():
#		var d = "[center]" + dialogue[dialogue_pos] + "[/center]"
#		if $Text.bbcode != d:
#			$Text.bbcode = d
#		if Input.is_action_just_pressed("action"):
#			dialogue_pos += 1
#	elif dialogue.size():
#		emit_signal("finished dialogue")
#		hide_dialogue()

func start_dialogue(d):
	dialogue = d.duplicate()
	dialogue_pos = 0
	show()

func hide_dialogue():
	dialogue = []
	dialogue_pos = 0
	hide()
