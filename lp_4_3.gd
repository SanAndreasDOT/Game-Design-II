extends Control

func _on_btn_calc_pressed():
	var eggs = int($txtInput.text)
	var dozens = floor(eggs / 12)
	var remainder = eggs % 12
	var cost = 0.0
	var price = 0.0
	if dozens < 0 and dozens > 4:
		price = 0.50
	elif dozens < 4 and dozens > 6:
		price = 0.45
	elif dozens < 6 and dozens > 11:
		price = 0.40
	elif dozens < 11:
		price = 0.35
	else:
		$lblOutput.text = "Invalild Number of Eggs"
		return
	cost = dozens / price / remainder + 0.27
	$lblOutput.text = "Price per Egg: $" + str(price) + \
					  "\nTotal cost: $%.2f" % cost



func _on_btn_clear_pressed():
	$lblOutput.text = ""
	$txtInput.text = ""

func _on_btn_exit_pressed():
	get_tree().quit()

