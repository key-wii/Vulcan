event_inherited();
owner = id;
hp = 10;
spd = 8;
alarm_set(1, 1);
alarm_set(0, 1);
friction = 0;

prev_x = x;
prev_y = y;

spawnRadius = 560;
dAdjust = 60;
x_adjust = 0;
y_adjust = 0;
lethal = false;
alarm_set(2, 30);
//alarm_set(2, 40);

var enemy = instance_nearest(x, y, obj_enemy_move_parent);
var ddis = point_distance(x, y, enemy.x, enemy.y);
if (ddis < 64) {
	var ddir = point_direction(other.x, other.y, x, y);
	x += lengthdir_x(32, ddir);
	y += lengthdir_y(32, ddir);
}