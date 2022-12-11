extends KinematicBody

onready var Dialogue = get_node ("/root/Game/Dialogue")

var dialogue = [
	"I am the SESHMAN (Press E to continue)"
	,"you must do something to complete the game."
	,"plese get rid of all the ugly targets in my forest."
	,"they are ugly!." 
]

func _ready():
	Dialogue.connect("finished_dialogue", self, "finished")

func _on_Area_body_entered(body):
	Dialogue.start_dialogue(dialogue)

func _on_Area_body_exited(body):
	Dialogue.hide_dialogue()

func _finished():
	get_node("/root/Game/target_container").show()
	Global.timer = 120
	Global.update_time()
	get_node("root/Game/Timer").start()
	
