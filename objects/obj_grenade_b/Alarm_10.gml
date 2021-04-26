if (lethal == false) {
	speed = 2;
	alarm_set(8, 30);
	exit;
}

with (particleMachine) {
	particleCount = 0;
	alarm_set(1, 1);
}

var enemy_exists = false;
enemy_exists = instance_exists(obj_enemy_parent);
if(enemy_exists) {
	audio_play_sound(snd_rocket_target, false, false);
	target = instance_nearest(x, y, obj_enemy_parent);
	move_towards_point(target.x, target.y, 12);
	image_angle = direction;
} else if (instance_exists(obj_menu_target_parent)) {
	audio_play_sound(snd_rocket_target, false, false);
	target = instance_nearest(x, y, obj_menu_target_parent);
	move_towards_point(target.x, target.y, 12);
	image_angle = direction;
} else {
	last_object = object_index;
	instance_change(obj_explosion_grenade, true);
	speed = 2;
}

alarm_set(1, 70);