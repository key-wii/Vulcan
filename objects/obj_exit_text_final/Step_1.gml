if (device_mouse_check_button_pressed(0, mb_left)) {
	if (device_mouse_x_to_gui(0) > x_yes - 95 && device_mouse_x_to_gui(0) < x_yes + 0
		&& device_mouse_y_to_gui(0) > y_yes + 10 && device_mouse_y_to_gui(0) < y_yes + 60) {
			if (menu || tutorial) game_end();
			else {
				game_end();
			}
		}
	else if (device_mouse_x_to_gui(0) > x_no + 0 && device_mouse_x_to_gui(0) < x_no + 82
		&& device_mouse_y_to_gui(0) > y_no + 10 && device_mouse_y_to_gui(0) < y_no + 60) {
			with (controller) exitTextBox = noone;
			instance_destroy();
		}
}