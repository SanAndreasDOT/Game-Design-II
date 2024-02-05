extends Control

func _on_btn_calc_pressed():
	var pWeihgt = int($txtWeight.text)
	var pLength = int($txtLength.text)
	var pWidth = int($txtWidth.text)
	var pHeight = int($txtHeight.text)
	var Size = pLength * pWidth * pHeight
	
	if pWeihgt > 27 and Size > 100000:
		$lblOutput.text = "Too Heavy and too big"
	elif pWeihgt > 27:
		$lblOutput.text = "Too Heavy"
	elif Size > 100000:
		$lblOutput.text = "Too Big"
	else:
		$lblOutput.text = "Package Sent"
	

func _on_btn_clear_pressed():
	$lblOutput.text = ""
	$txtWeight.text = ""
	$txtLength.text = ""
	$txtWidth.text = ""
	$txtHeight.text = ""

func _on_btn_exit_pressed():
	get_tree().quit()

