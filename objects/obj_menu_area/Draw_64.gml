if (area == 9 && (spin > 0 || size > 0)) {
		 if (fps < 40) room_speed += 50;
	else if (fps < 45) room_speed += 25;
	else if (fps < 50) room_speed += 20;
	else if (fps < 55) room_speed += 10;
	else if (fps < 60) room_speed += 5;
	else if (fps > 74 && room_speed > 500) room_speed -= 10;
	else if (fps > 64 && room_speed > 300) room_speed -= 5;
	else if (fps > 60 && room_speed > 60) room_speed -= 1;
	var display = obj_camera.displayScale;
	var ideal = spin * 90 * display;
	if (ideal < size && size > 0) {
		size -= 4;
		if (size < 0) size = 0;
	}
	else if (ideal > size && size < (1200 * display) - 2) {
		var diff = (ideal - size);
		size += clamp(diff, 4, 8);
		if (size > ideal) size = ideal;
	}
	if (obj_fade_screen.i == 7) exit;
	if (!surface_exists(screen_surface)) screen_surface = surface_create(1350 * display * 1.25, 1350 * display * 1.25);
	surface_set_target(screen_surface);
	var width = surface_get_width(screen_surface), height = surface_get_height(screen_surface);
	var xx = -124 - size / 2, yy = -size / 2;
	if (wait mod 3 == 0) spr = sprite_create_from_surface(application_surface, xx, yy, width, height, false, false, 0, 0);
	draw_sprite(spr, 0, 0, 0);
	surface_reset_target();
	
	var shd = shd_thermal;
	shader_set(shd);
	var centerW = display_get_width() / 2;
	var centerH = display_get_height() / 2;
	draw_surface_part(screen_surface, centerW, centerH, size, size, centerW + xx, centerH + yy);
	shader_reset();
	if (wait mod 3 == 2) sprite_delete(spr);
	wait++;
	if (spin == 0 && size == 0 && room_speed > 60) room_speed = 60;
}