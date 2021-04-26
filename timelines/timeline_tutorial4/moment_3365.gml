xx = 0; yy = 0;
for (i = 0; i <= 832; i += 64) {
	spawn = instance_create_layer(xx1 + xx, yy1 - yy, "Enemy", obj_enemy_spawn);
	spawn.enemy = obj_enemy_tutorial_killer_s;
	spawn.set_dir = 0;
	spawn = instance_create_layer(xx2 - xx, yy2 - yy, "Enemy", obj_enemy_spawn);
	spawn.enemy = obj_enemy_tutorial_killer_s;
	spawn.set_dir = 90;
	spawn = instance_create_layer(xx3 - xx, yy3 + yy, "Enemy", obj_enemy_spawn);
	spawn.enemy = obj_enemy_tutorial_killer_s;
	spawn.set_dir = 180;
	spawn = instance_create_layer(xx4 + xx, yy4 + yy, "Enemy", obj_enemy_spawn);
	spawn.enemy = obj_enemy_tutorial_killer_s;
	spawn.set_dir = 270;
	xx = i;
	yy = i;
}