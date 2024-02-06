extends Control

func _on_btn_clac_pressed():
	pass
func _on_btn_clear_pressed():
	$ItemList.clear()

func _on_btn_exit_pressed():
	get_tree().quit()
