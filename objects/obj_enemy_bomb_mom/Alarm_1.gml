var xx = lengthdir_x(50, direction);
var yy = lengthdir_y(50, direction);
var ddir = direction + 180;
var s_d = switch_dir;
switch_dir *= -1;
if (burnt < 1) {
	audio_play_sound(snd_shoot_bomber, 0, 0);
	var bull = instance_create_layer(x + xx, y + yy, "Bombers", obj_enemy_bomber);
	bull.owner = id;
	bull.direction = ddir;
	bull.image_angle = bull.direction;
	var sBoost = wheels.speedBoost;
	with (bull) with (wheels) {
		direction = ddir
		var player_exists = false;
		player_exists = instance_exists(obj_tank_pilot);
		speed = 12;
		speedBoost = clamp(sBoost, 0, 4);
		initial_dir = s_d;
	}
}
alarm_set(10, 289);

if (burnt >= 1) exit;
x_adjust = lengthdir_x(6, direction + 180);
y_adjust = lengthdir_y(6, direction + 180);
alarm_set(9, 3);