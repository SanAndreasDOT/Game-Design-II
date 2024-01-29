extends Control

func _on_btn_calculate_pressed():
	var speedLimit = int($txtLimit.text)
	var carSpeed = int($txtSpeed.text)
	var milesOver = carSpeed - speedLimit
	var fine = 20.0 + (milesOver * 5.0)
	$lblOutput.text = "Fine: $ %.2f" % fine

func _on_btn_clear_pressed():
	$lblOutput.text = ""
	$txtSpeed.text = ""
	$txtLimit.text = ""

func _on_btn_exit_pressed():
	get_tree().quit()
