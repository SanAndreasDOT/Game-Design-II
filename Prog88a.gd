extends Control

func _on_btn_calc_pressed():
	var num1 = int($txtNum1.text)
	var num2 = int($txtNum2.text)
	var Sum = num1 + num2
	var Diff = num1 - num2
	var Product = num1 * num2
	var average = Sum / 2
	var Abs = abs(Diff)
	var Max = 0
	var Min = 0
	if num1 > num2:
		Max = num1
		# Min = num2
	else: #otherwise
		Max  = num2
		
	if Max == num1: # == checks if same value
		Min = num2
	else:
		Min = num1
		
	$lblOutput.text = "Sum: " + str(Sum) + \
					  "\nDifference: " + str(Diff) + \
					  "\nProduct: " + str(Product) + \
					  "\nAverage: " + str(average) + \
					  "\nAbs. Sistance: " + str(Abs) + \
					  "\nMax: " + str(Max) + \
					  "\nMin: " + str(Min)


func _on_btn_clear_pressed():
	$txtNum1.text = ""
	$txtNum2.text = ""
	$lblOutput.text = ""


func _on_btn_exit_pressed():
	get_tree().quit()
