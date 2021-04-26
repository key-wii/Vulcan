var x1 = lengthdir_x(80, direction);
var y1 = lengthdir_y(80, direction);
var x2 = lengthdir_x(1200, direction - 45);
var y2 = lengthdir_y(1200, direction - 45);
enemyInSight = collision_line(x + x1, y + y1, x + x2, y + y2,
	obj_enemy_move_parent, true, true);
	
x1 = lengthdir_x(80, direction);
y1 = lengthdir_y(80, direction);
x2 = lengthdir_x(1200, direction + 45);
y2 = lengthdir_y(1200, direction + 45);
var colLine = collision_line(x + x1, y + y1, x + x2, y + y2,
	obj_enemy_move_parent, true, true);
if (colLine != noone) enemyInSight = colLine;

x1 = lengthdir_x(80, direction);
y1 = lengthdir_y(80, direction);
x2 = lengthdir_x(1200, direction - 23);
y2 = lengthdir_y(1200, direction - 23);
colLine = collision_line(x + x1, y + y1, x + x2, y + y2,
	obj_enemy_move_parent, true, true);
if (colLine != noone) enemyInSight = colLine;

x1 = lengthdir_x(80, direction);
y1 = lengthdir_y(80, direction);
x2 = lengthdir_x(1200, direction + 23);
y2 = lengthdir_y(1200, direction + 23);
colLine = collision_line(x + x1, y + y1, x + x2, y + y2,
	obj_enemy_move_parent, true, true);
if (colLine != noone) enemyInSight = colLine;
	
if (enemyInSight == noone) enemySighted = false;
else {
	enemySighted = true;
	direction = point_direction(x, y, enemyInSight.x, enemyInSight.y);
}

if (desperationUsed && !burnt) alarm_set(5, 5);
else if (!instance_exists(obj_grenade_y_boss_e) && !just_shot_grenade && gunLuck mod 3 == 0) {
	grenading = true;
	charging = false;
	//sprite_index = spPlayerTankFl_big_redeyes
	if (gun == yellow)
		sprite_index = spPlayerTankY_big;
	if (gun == green)
		sprite_index = spPlayerTankG_big;
	if (gun == blue)
		sprite_index = spPlayerTankB_big;
	alarm_set(6, 25);
} else if (!burnt) alarm_set(5, 1);

just_shot_grenade = false;