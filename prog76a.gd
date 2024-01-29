extends Control

func _on_btn_calculate_pressed():
	var disLike = int($txtDisNumber.text)
	var disNumbertot = disLike * 9
	var newNumber = disNumbertot * 12345679
	$lblOutput.text = "Check this out " + str(disLike) + " * 9 = " + str(disNumbertot) + " then * 12345679 = " + str(newNumber)

func _on_btn_clear_pressed():
	$lblOutput.text = ""
	$txtDisNumber.text = ""
	

func _on_btn_exit_pressed():
	get_tree().quit()
