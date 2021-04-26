if instance_exists(obj_fade_screen) {
	if (obj_fade_screen.visible) exit;
}

if (exitTextBox == noone) {
	exitTextBox = instance_create_layer(-1000, -1000, "UI_Behind", obj_exit_text);
	if (room == room_menu)
		exitTextBox.menu = true;
	else if (room == room_tutorial)
		exitTextBox.tutorial = true;
} else {
	instance_destroy(exitTextBox);
	exitTextBox = noone;
}