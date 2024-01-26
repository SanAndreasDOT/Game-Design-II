extends Control

func _on_btn_calculate_pressed():
	var num1 = int($txtNum1.text)
	var num2 = int($txtNum2.text)
	var num3 = int($txtNum3.text)
	var num4 = int($txtNum4.text)
	var sum = num1 + num2 + num3 + num4
	var ave = sum / 4
	$lblSum.text = "Sum: " + str(sum)
	$lblAve.text = "Average: " + str(ave)
	# + - * /  (** = pow)
	#str: string (text)
	#int: Inter (whole number)
	#float: floating-point (same a a double or a num/w double)


func _on_btn_clear_pressed():
	$lblSum.text = ""
	$lblAve.text = ""
	$txtNum1.text = ""
	$txtNum2.text = ""
	$txtNum3.text = ""
	$txtNum4.text = ""


func _on_btn_exit_pressed():
	get_tree().quit()
