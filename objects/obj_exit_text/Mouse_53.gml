/*if (device_mouse_x_to_gui(0) > x_yes - 95 && device_mouse_x_to_gui(0) < x_yes + 0
	&& device_mouse_y_to_gui(0) > y_yes + 10 && device_mouse_y_to_gui(0) < y_yes + 60) {
		if (menu || tutorial) game_end();
		else {
			part_particles_clear(global.P_System);
			room_goto(room_menu)
		}
	}
else if (device_mouse_x_to_gui(0) > x_no + 0 && device_mouse_x_to_gui(0) < x_no + 82
	&& device_mouse_y_to_gui(0) > y_no + 10 && device_mouse_y_to_gui(0) < y_no + 60) {
		with (controller) exitTextBox = noone;
		instance_destroy();
	}