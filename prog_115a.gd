extends Control

func _on_btn_clac_pressed():
	$ItemList.add_item("Number")
	# range(stop)
	# range(startm stop)
	# range(starting, stop, step
	for num in range(2,36+1, 2):
		var line = str(num)
		$ItemList.add_item(line)

func _on_btn_clear_pressed():
	$ItemList.clear()

func _on_btn_exit_pressed():
	get_tree().quit()
