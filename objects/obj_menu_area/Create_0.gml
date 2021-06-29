ini_open("saveData.ini");
var area_complete1 = ini_read_real("Bosses Beat", "boss 1 beat", false);
ini_close();
if (!area_complete1) instance_destroy();

event_inherited();
image_speed = 0;
var xx = room_width / 2;
var yy = room_height / 2;
//Dragon-themed
	 if (x < xx && y < yy)
	area = 1;
//Dizzy-themed
else if (x < xx && y > yy)
	area = 2;
//Shield-themed
else if (x > xx && y > yy)
	area = 3;
//Spiked-themed
else if (x > xx && y < yy)
	area = 4;
ch = 2;

if (x < xx + 100 && y < yy + 100 && x > xx - 100 && y > yy - 100) {
	ini_open("saveData.ini");
	if (ini_read_real("Bosses Beat", "boss 2 beat", false) && ini_read_real("Bosses Beat", "boss 3 beat", false) &&
		ini_read_real("Bosses Beat", "boss 4 beat", false) && ini_read_real("Bosses Beat", "boss 5 beat", false))
			var areasBeaten = true
	else var areasBeaten = false;
	ini_close();
	if (!areasBeaten) { instance_destroy(); exit; }
	area = 9;
	particleMachine = instance_create_layer(x, y, "Floor", obj_particles_area_final);
	x_adjust = 0;
	y_adjust = 0;
	ch = 3;
}

sprite_index = spr_levels_hit;
ini_open("saveData.ini");
	   if (area == 1) {
	image_index = 4;
	if (ini_read_real("Bosses Beat", "boss 2 beat", false))
		default_sprite = spr_levels_beat;
} else if (area == 2) {
	image_index = 5;
	if (ini_read_real("Bosses Beat", "boss 3 beat", false))
		default_sprite = spr_levels_beat;
} else if (area == 3) {
	image_index = 6;
	if (ini_read_real("Bosses Beat", "boss 4 beat", false))
		default_sprite = spr_levels_beat;
} else if (area == 4) {
	image_index = 7;
	if (ini_read_real("Bosses Beat", "boss 5 beat", false))
		default_sprite = spr_levels_beat;
} else if (area == 9) {
	image_index = 8;
	if (ini_read_real("Bosses Beat", "boss final beat", false))
		default_sprite = spr_levels_beat;
	hit = -1;
	spin = 0;
	slowdown = false;
	screen_surface = surface_create(display_get_width(), display_get_height());
	size = 0;
	wait = 0;
}
ini_close();

if (area != 9) waves = 33;
hovering = false;
up = true;
yyy = 0;
maxWiggle = 40;
pause = 0;
alarm_set(9, 1);