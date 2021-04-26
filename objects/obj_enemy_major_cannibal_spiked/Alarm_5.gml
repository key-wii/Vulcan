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
	var xx = lengthdir_x(sprite_width / 2, direction);
	var yy = lengthdir_y(sprite_width / 2, direction);
	if (gun == yellow) {
		audio_play_sound(snd_shoot1, 0, 0);
		var bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_shell_black_e2);
		bull.direction = direction;
		bull.image_angle = bull.direction;
		bull.owner = id;
		if (colLine != noone) bull.orig_speed = 30;
		else bull.orig_speed = 26;
		bull.image_xscale = 4;
		bull.image_yscale = 4;
	}
	if (gun == green) {
		audio_play_sound(snd_shoot2, 0, 0);
		var bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_bouncer_black_e2);
		bull.direction = direction;
		bull.image_angle = bull.direction;
		bull.owner = id;
		if (colLine != noone) bull.orig_speed = 20;
		else {
			direction += irandom_range(-2, 2);
			bull.orig_speed = 16;
		}
		bull.image_xscale = 3;
		bull.image_yscale = 3;
		x += lengthdir_x(bull.sprite_width + 1, direction);
		y += lengthdir_y(bull.sprite_width + 1, direction);
	}
	if (gun == blue) {
		audio_play_sound(snd_shoot3, 0, 0);
		var bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_rocket_black_e2);
		bull.direction = direction;
		bull.image_angle = bull.direction;
		bull.owner = id;
		if (colLine != noone) {
			bull.startSpeed = 16;
			bull.finalSpeed = 24;
			var ran = irandom(1);
			if (ran == 1) bull.rotation *= -1;
			//bull.aimAt = obj_enemy_parent;
			with (bull) {
				alarm_set(1, 1);
				alarm_set(0, 0);
				alarm_set(10, 40);
			}
		}
		else {
			var ddir = irandom_range(2, 6);
			if (irandom_range(0, 1) == 0) ddir *= -1;
			direction += ddir;
			bull.startSpeed = 14;
			bull.finalSpeed = 24;
			//bull.aimAt = obj_tank_pilot;
			with (bull) {
				alarm_set(9, 10);
				alarm_set(10, 60);
			}
		}
		bull.image_xscale = 1.5;
		bull.image_yscale = 1.5;
	}
	//bull.speed = 40;
	//bull.piercing = true;
	with(bull) alarm_set(1, 1);
	
	if (flameKills > 0) {
		alarm_set(7, alarm_get(7) + 15);
		if (alarm_get(7) > 75) alarm_set(7, 75);
	}
}
alarm_set(10, 27);
just_shot = 18;