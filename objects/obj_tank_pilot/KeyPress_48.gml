//DEBUG
if (!debug) exit;
if (room == room_menu) {
	part_particles_clear(global.P_System);
	room_goto(room0);
}
else if (room == room_tutorial) {
	ini_open("saveData.ini");
	ini_write_real("Levels Beat", "tutorial beat", true);
	ini_close();
	part_particles_clear(global.P_System);
	room_goto(room_menu);
}