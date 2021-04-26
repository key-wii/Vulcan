count = 0;
xx2 = (room_width / 2) + 832 - 34;
yy2 = (room_height / 2) - 814 - 64;
phase = 1;

xx = (room_width / 2) + 832 - 23;
for (yy = (room_height / 2) - 878 - 44; yy <= (room_height / 2) + 884 - 44; yy += 64) {
	var spawn = instance_create_layer(xx, yy, "Enemy", obj_enemy_spawn);
	spawn.enemy = obj_enemy_tutorial_killer_s;
	spawn.set_dir = 180;
}
var player_exists = instance_exists(obj_tank_pilot);
if (player_exists) obj_tank_pilot.bull_hit_wait -= 9;