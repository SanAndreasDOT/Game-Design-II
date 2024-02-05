extends Control

func _on_btn_clac_pressed():
	$ItemList.add_item("Hours     Pay")
	# range(stop)
	# range(startm stop)
	# range(starting, stop, step
	for num in range(1,41):
		var hours = str(num)
		var pay = num * 4
		var line = str(num) + "     " + str(pay)
		$ItemList.add_item(line)

func _on_btn_clear_pressed():
	$ItemList.clear()

func _on_btn_exit_pressed():
	get_tree().quit()
