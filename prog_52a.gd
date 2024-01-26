extends Control

func _on_btn_calculate_pressed():
	var length = int($txtLength.text)
	var width = int($txtWidth.text)
	var area = length * width
	var perim = 2 * length + 2 * width
	$lblArea.text = "Area: " + str(area)
	$lblPerim.text = "Perimmeter: " + str(perim)
	# + - * /  (** = pow)
	#str: string (text)
	#int: Inter (whole number)
	#float: floating-point (same a a double or a num/w double)


func _on_btn_clear_pressed():
	$lblArea.text = ""
	$lblPerim.text = ""
	$txtLength.text = ""
	$txtWidth.text = ""


func _on_btn_exit_pressed():
	get_tree().quit()
