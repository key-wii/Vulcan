x1 = lengthdir_x(80, direction);
y1 = lengthdir_y(80, direction);
x2 = lengthdir_x(1200, direction - 10);
y2 = lengthdir_y(1200, direction - 10);
colLine = collision_line(x + x1, y + y1, x + x2, y + y2,
	obj_enemy_move_parent, true, true);
if (colLine != noone) enemyInSight = colLine;

x1 = lengthdir_x(80, direction);
y1 = lengthdir_y(80, direction);
x2 = lengthdir_x(1200, direction + 10);
y2 = lengthdir_y(1200, direction + 10);
colLine = collision_line(x + x1, y + y1, x + x2, y + y2,
	obj_enemy_move_parent, true, true);
if (colLine != noone) enemyInSight = colLine;
	
if (!instance_exists(enemyInSight)) enemySighted = false;
else {
	enemySighted = true;
	direction = point_direction(x, y, enemyInSight.x, enemyInSight.y);
}

audio_play_sound(snd_shoot_grenade_boss, 0, 0);
if (gun == yellow) {
	var bull = instance_create_layer(x, y, "Enemy_Bullets", obj_grenade_y_boss_e);
	bull.speed = 60;
	bull.orig_speed = 14;
	if (colLine != noone) bull.orig_speed = 26;
	bull.image_xscale = 3;
	bull.image_yscale = 3;
}
if (gun == green) {
	var bull = instance_create_layer(x, y, "Enemy_Bullets", obj_grenade_g_boss_e);
	bull.speed = 40;
	bull.orig_speed = 26;
	if (colLine != noone) bull.orig_speed = 38;
	else direction += irandom_range(-8, 8);
	bull.image_xscale = 3;
	bull.image_yscale = 3;
}
if (gun == blue) {
	var bull = instance_create_layer(x, y, "Enemy_Bullets", obj_grenade_b_boss_e);
	bull.speed = 40;
	if (colLine != noone) {
		bull.startSpeed = 14;
		bull.midSpeed = 30;
		bull.finalSpeed = 26;
		bull.aimAt = obj_enemy_parent;
	} else {
		bull.startSpeed = 12;
		bull.midSpeed = 28;
		bull.finalSpeed = 22;
		//bull.aimAt = obj_tank_pilot;
	}
	bull.image_xscale = 2;
	bull.image_yscale = 2;
}
if (instance_exists(obj_tank_pilot)) {
	if (gun == yellow) {
		if (point_distance(x, y, obj_tank_pilot.x, obj_tank_pilot. y) > 400)
			bull.orig_speed += 2;
		if (point_distance(x, y, obj_tank_pilot.x, obj_tank_pilot. y) > 700)
			bull.orig_speed += 2;
	} else if (gun == blue) {
		if (point_distance(x, y, obj_tank_pilot.x, obj_tank_pilot. y) > 400)
			bull.finalSpeed += 1;
		if (point_distance(x, y, obj_tank_pilot.x, obj_tank_pilot. y) > 700)
			bull.finalSpeed += 1;
	}
}
bull.direction = direction;
bull.image_angle = bull.direction;

bull.piercing = true;
bull.owner = id;
with(bull) alarm_set(1, 1);

if (flameKills > 0) {
	alarm_set(7, alarm_get(7) + 10);
	if (alarm_get(7) > 75) alarm_set(7, 75);
}
alarm_set(10, 27);
grenading = false;
just_shot_grenade = true;
if (gun == yellow)
	sprite_index = spPlayerTankY_big;
if (gun == green)
	sprite_index = spPlayerTankG_big;
if (gun == blue)
	sprite_index = spPlayerTankB_big;