extends Control

func _on_btn_calculate_pressed():
	var rad = float($txtRad.text)

	var Cir = 2 * 3.14159 * rad
	var area = 3.14159 * rad**2
	$lblArea.text = "Area: " + str(area)
	$lblRad.text = "Radius: " + str(rad)
	$lblCir.text = "Cir: " + str(Cir)
	# + - * /  (** = pow (Exponet))
	#str: string (text)
	#int: Inter (whole number)
	#float: floating-point (same a a double or a num/w double)


func _on_btn_clear_pressed():
	$lblArea.text = ""
	$lblRad.text = ""
	$lblCir.text = ""
	$txtRad.text = ""

func _on_btn_exit_pressed():
	get_tree().quit()
