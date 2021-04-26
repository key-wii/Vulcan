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

if (burnt < 1) {
	if (gun == yellow) {
		audio_play_sound(snd_shoot1, 0, 0);
		var bull = instance_create_layer(x, y, "Enemy_Bullets", obj_shell_boss_e);
		bull.direction = direction;
		bull.image_angle = bull.direction;
		bull.owner = id;
		bull.speed = 40;
		bull.piercing = true;
		if (colLine != noone) bull.orig_speed = 50;
		else bull.orig_speed = 42;
		bull.image_xscale = 3;
		bull.image_yscale = 3;
	}
	if (gun == green) {
		audio_play_sound(snd_shoot2, 0, 0);
		var bull = instance_create_layer(x, y, "Enemy_Bullets", obj_bouncer_boss_e);
		bull.direction = direction;
		bull.image_angle = bull.direction;
		bull.owner = id;
		bull.speed = 40;
		bull.piercing = true;
		if (colLine != noone) bull.orig_speed = 40;
		else {
			direction += irandom_range(-2, 2);
			bull.orig_speed = 34;
		}
		bull.image_xscale = 3;
		bull.image_yscale = 3;
	}
	if (gun == blue) {
		audio_play_sound(snd_shoot3, 0, 0);
		var bull = instance_create_layer(x, y, "Enemy_Bullets", obj_rocket_boss_e);
		bull.direction = direction;
		bull.image_angle = bull.direction;
		bull.owner = id;
		bull.speed = 40;
		bull.piercing = true;
		if (colLine != noone) {
			bull.startSpeed = 32;
			bull.finalSpeed = 46;
			bull.aimAt = obj_enemy_parent;
			with (bull) {
				alarm_set(9, 40);
				alarm_set(10, 60);
			}
		}
		else {
			var ddir = irandom_range(2, 6);
			if (irandom_range(0, 1) == 0) ddir *= -1;
			direction += ddir;
			bull.startSpeed = 26;
			bull.finalSpeed = 36;
			//bull.aimAt = obj_tank_pilot;
			with (bull) {
				alarm_set(9, 10);
				alarm_set(10, 60);
			}
		}
		bull.image_xscale = 2;
		bull.image_yscale = 2;
	}
	with(bull) alarm_set(1, 1);
	
	if (flameKills > 0) {
		alarm_set(7, alarm_get(7) + 10);
		if (alarm_get(7) > 75) alarm_set(7, 75);
	}
}
if (desperationUsed) alarm_set(10, 59);
else alarm_set(10, 27);
just_shot = 18;