count++;
xx = (room_width / 2) - 874;
xx = (room_width / 2) - 874 - 44;
for (yy = (room_height / 2) - 878 - 44; yy <= (room_height / 2) + 884 - 38; yy += 64) {
	var spawn = instance_create_layer(xx, yy, "Enemy", obj_enemy_spawn);
	spawn.enemy = obj_enemy_tutorial_killer_slow;
	spawn.set_dir = 0;
	spawn.image_alpha = .04;
}
if (count > 45) {
	yy = (room_height / 2) + 848 - 44;
	for (xx = (room_width / 2) + 854 - 48; xx >= (room_height / 2) - 662 - 48; xx -= 64) {
		var spawn = instance_create_layer(xx, yy, "Enemy", obj_enemy_spawn);
		spawn.enemy = obj_enemy_tutorial_killer_slow_b;
		spawn.set_dir = 90;
	spawn.image_alpha = .04;
	}
}
if (count > 100) {
	var spawn = instance_create_layer(xx2, yy2, "Enemy", obj_enemy_spawn);
	spawn.enemy = obj_enemy_tutorial_killer_slow_r;
	spawn.set_dir = 180;
	
	if (phase == 1 && yy2 <= (room_height / 2) + 570) { 
		yy2 += 128;
	} else if (phase == 1) phase = 2;
	
	if (phase == 2 && yy2 >= (room_height / 2) - 870) { 
		yy2 -= 128;
	} else if (phase == 2) phase = 1;
}//sound_machine(snd_shoot_e, x, y);