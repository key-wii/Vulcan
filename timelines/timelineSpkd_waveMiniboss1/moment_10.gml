if (!instance_exists(obj_tank_pilot)) exit;
if (!global.midbossBeaten && !instance_exists(obj_enemy_jack_boss)) {
	var xxx = lengthdir_x(300, obj_tank_pilot.direction + 180);
	var yyy = lengthdir_y(300, obj_tank_pilot.direction + 180);
	var spawn = instance_create_layer(xx + xxx, yy + yyy, "Enemy", obj_enemy_spawn);
	spawn.enemy = obj_enemy_jack_boss;
	spawn.image_xscale = 2;
	spawn.image_yscale = 2;
}