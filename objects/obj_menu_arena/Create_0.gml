/*ini_open("saveData.ini");
var area_complete1 = ini_read_real("Bosses Beat", "boss 1 beat", false);
ini_close();
if (!area_complete1) */instance_destroy();

event_inherited();
image_speed = 0;
level = 101;
ch = 0;
sprite_index = spr_levels_hit;
image_index = 12;