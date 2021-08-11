instance_destroy(obj_wall1);
with (obj_spawner_tutorial) timeline_running = true;
xadjust = 48;
yadjust = 48;
moved += xadjust;
with (border_v) {
	if (x < (room_width / 2)) x -= other.xadjust;
	else x += other.xadjust;
}
with (border_h) {
	if (y < (room_height / 2)) y -= other.yadjust;
	else y += other.yadjust;
}
if (moved <= 256) alarm_set(7, 1);
else {
	phase = 6;
	xadjust = 0; yadjust = 0;
	count = 100;
	//play the full song
	/*with (obj_music_controller_tutorial) {
		if (currentSong == msc_tutorial) {
			intro_length = 15.03;
			loop_length = 82.5;
			full_length = intro_length + loop_length;
		}
	}*/
	instance_destroy(obj_how_to_flame);
}
if (moved == 288) {
	with (border_v) {
		if (x < (room_width / 2)) x += 32;
		else x -= 32;
	}
	with (border_h) {
		if (y < (room_height / 2)) y += 32;
		else y -= 32;
	}
}