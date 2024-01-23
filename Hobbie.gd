extends Control

func _on_btn_show_pressed():
	$Label.text = "https://1drv.ms/p/s!AkIGKPc0gMmajMlu-ejlf1-K5qqKlw"


func _on_btn_clear_pressed():
	$Label.text = ""


func _on_btn_exit_pressed():
	get_tree().quit()
