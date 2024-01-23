extends Control

func _on_btn_show_pressed():
	$Label.text = "GTA, Fallout, FarmingSimulator, American Truck Simulator And Euro..."


func _on_btn_clear_pressed():
	$Label.text = ""


func _on_btn_exit_pressed():
	get_tree().quit()
