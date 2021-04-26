with (particleMachine) {
	particleCount = 0;
	alarm_set(1, 1);
}

var spd = 24;
if (silent) spd = 13;
var enemy_exists = false;
enemy_exists = instance_exists(obj_enemy_parent);
if(enemy_exists) {
	if (!silent) sound_machine(snd_rocket_target, x, y);
	target = instance_nearest(x, y, obj_enemy_parent);
	var speedBoost = 0;
	var xx = 0;
	var yy = 0;
	if (target.object_index == obj_enemy_bomber) speedBoost = 6;
	if (target.object_index == obj_enemy_SH_boss) {
		speedBoost = 6;
		xx = target.x + lengthdir_x(target.sprite_width / 1.25, target.direction);
		yy = target.y + lengthdir_y(target.sprite_width / 1.25, target.direction);
	} else if (instance_exists(target.wheels) && target.wheels.object_index == obj_SH_move) {
		if (target.object_index == obj_enemy_SH1_fast) speedBoost = 6;
		xx = target.x + lengthdir_x(target.sprite_width / 2, target.direction);
		yy = target.y + lengthdir_y(target.sprite_width / 2, target.direction);
	} else if (target.object_index == obj_enemy_turtle) {
		xx = target.x - lengthdir_x(target.sprite_width / 2, target.direction);
		yy = target.y - lengthdir_y(target.sprite_width / 2, target.direction);
	} else if (instance_exists(target.wheels) && target.wheels.go) {
		xx = target.x + lengthdir_x(target.sprite_width / 4, target.direction);
		yy = target.y + lengthdir_y(target.sprite_width / 4, target.direction);
	} else {
		xx = target.x;
		yy = target.y;
	}
	move_towards_point(xx, yy, spd + speedBoost);
	image_angle = direction;
} else if (instance_exists(obj_menu_target_parent)) {
	audio_play_sound(snd_rocket_target, false, false);
	target = instance_nearest(x, y, obj_menu_target_parent);
	move_towards_point(target.x, target.y, spd);
	image_angle = direction;
} else {
	alarm_set(10, 20);
	with (particleMachine) instance_destroy();
	particleMachine = instance_create_layer(x, y, "Player", obj_particles_rocket);
	particleMachine.owner = id;
}