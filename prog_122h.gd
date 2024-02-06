extends Control

func _on_btn_clac_pressed():
	$ItemList.add_item("Number       Square     Square Root     Cubed     4th Square")
	for num in range(1,21):
		var numsquared = num**2 # pow(num,2)
		var numsqrt = sqrt(num)
		var cubed = pow(num, 3)
		var foursquare = sqrt(pow(num,4))
		var line = str(num) + "     " + str(numsquared) + "     " + str(numsqrt) + "     " + str(cubed) + "     " + str(foursquare)
		$ItemList.add_item(line)
		#var line = "%d     %d     %.4f" % [num, numsqaured, numsqrt]

func _on_btn_clear_pressed():
	$ItemList.clear()

func _on_btn_exit_pressed():
	get_tree().quit()
