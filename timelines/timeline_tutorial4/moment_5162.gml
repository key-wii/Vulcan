xx = (room_width / 2) - 874 - 44;
for (yy = (room_height / 2) - 878 - 44; yy <= (room_height / 2) + 884 - 44; yy += 64) {
	var spawn = instance_create_layer(xx, yy, "Enemy", obj_enemy_spawn);
	spawn.enemy = obj_enemy_tutorial_killer_slow;
	spawn.set_dir = 0;
	spawn.image_alpha = .01;
}
alarm_set(9, 100);