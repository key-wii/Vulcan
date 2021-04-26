var ddir = direction + 180;
var xx = lengthdir_x(sprite_width / 2, ddir);
var yy = lengthdir_y(sprite_width / 2, ddir);
var sBoost = 4;
if (burnt < 1) {
	var player_exists = false;
		player_exists = instance_exists(obj_tank_pilot);
	audio_play_sound(snd_shoot_bomber, 0, 0);
	
	var s_d = switch_dir;
	switch_dir *= -1;
		ddir = direction + 210;
		xx = lengthdir_x(sprite_width / 2, ddir);
		yy = lengthdir_y(sprite_width / 2, ddir);
		bull = instance_create_layer(x + xx, y + yy, "Bombers", obj_enemy_bomber);
	bull.owner = id;
	bull.direction = ddir;
	bull.image_angle = bull.direction;
	with (bull) with (wheels) {
		direction = ddir
		speed = 12 + sBoost;
		speedBoost = clamp(sBoost, 0, 4);
		just_spawned = true;
		initial_dir = s_d;
		alarm_set(0, 1);
	}
	
		s_d = switch_dir;
	switch_dir *= -1;
		ddir = direction - 210;
		xx = lengthdir_x(sprite_width / 2, ddir);
		yy = lengthdir_y(sprite_width / 2, ddir);
		bull = instance_create_layer(x + xx, y + yy, "Bombers", obj_enemy_bomber);
	bull.owner = id;
	bull.direction = ddir;
	bull.image_angle = bull.direction;
	with (bull) with (wheels) {
		direction = ddir
		speed = 12 + sBoost;
		speedBoost = clamp(sBoost, 0, 4);
		just_spawned = true;
		initial_dir = s_d;
		alarm_set(0, 1);
	}
}
shots++;
if (shots >= 10) {
	alarm_set(2, 150);
	alarm_set(3, 994);
	shots = 0;
	//wheels.tempBlock = false;
} else {
	alarm_set(2, 0);
	alarm_set(3, 25);
}
//if (instance_exists(wheels)) wheels.tempBlock = true;

if (burnt >= 1) exit;
x_adjust = lengthdir_x(7, direction);
y_adjust = lengthdir_y(7, direction);
alarm_set(9, 7);