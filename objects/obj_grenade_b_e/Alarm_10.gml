if (lethal == false) {
	speed = 3;
	alarm_set(8, 30);
	exit;
}

with (particleMachine) {
	particleCount = 0;
	alarm_set(1, 1);
}

var target_exists = false;
target_exists = instance_exists(aimAt);
if(target_exists) {
	audio_play_sound(snd_rocket_target, false, false);
	if (aimAt == obj_tank_pilot) target = instance_nearest(x, y, aimAt);
	else target = enemy_closest(x, y, aimAt);
	move_towards_point(target.x, target.y, finalSpeed);
	image_angle = direction;
} else {
	instance_change(obj_explosion_grenade_e, true);
	image_xscale = 1;
	image_yscale = 1;
	speed = 2;
}

alarm_set(2, 80);