var otherPiercing = false;

with(other) {
	audio_stop_sound(snd_hit);
	audio_play_sound(snd_hit, 0, 0);
	//audio_stop_sound(snd_flameblue_e);
	//audio_play_sound(snd_flameblue_e, 0, 0);
	if (!black) {
		if (!piercing) {
			var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small_e);
			explosion.direction = direction;
			explosion.speed = 4;
			if (!grenade) instance_destroy();
		} else otherPiercing = true;
		if (!grenade) {
			var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small_e);
			explosion.direction = direction;
			explosion.speed = 4;
			instance_destroy();
		}
	} else otherPiercing = true;
	/*if (grenade) {
		instance_change(obj_explosion_grenade_e, true);
		image_xscale = 1;
		image_yscale = 1;
		speed = 0;
	}*/
}

if (!otherPiercing) exit;

if (global.flameKills > 0) {
	var controller_exists = instance_exists(controller);
	if (controller_exists)
		with (controller) {
			alarm_set(2, alarm_get(2) + 5);
			if (alarm_get(2) > 79) alarm_set(2, 79);
		}
	var boss_controller_exists = instance_exists(obj_boss1_controller);
	if (boss_controller_exists)
		with (obj_boss1_controller) {
			alarm_set(2, alarm_get(2) + 5);
			if (alarm_get(2) > 79) alarm_set(2, 79);
		}
}

with (particleMachine) {
	particleCount = 0;
	alarm_set(1, 1);
}
hit = true;
if (hit_target == true) {
	var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small);
	explosion.direction = direction;
	explosion.speed = 1;
	instance_destroy();
	exit;
}
if (extended == true) {
	alarm_set(0, alarm_get(0) - 20);
	if (alarm_get(0) < 1) {
		var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small);
		explosion.direction = direction;
		explosion.speed = 1;
		instance_destroy();
		exit;
	}
}

if((speed > maxSpeed) && (alarm_get(0) != 140)) {
	var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small);
	explosion.direction = direction;
	explosion.speed = 1;
	instance_destroy();
	exit;
}
if((speed < -maxSpeed) && (alarm_get(0) != 140)) {
	var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small);
	explosion.direction = direction;
	explosion.speed = 1;
	instance_destroy();
	exit;
}
audio_play_sound(snd_bounce, 0, 0);
move_bounce_solid(true);
if (direction > 0 && direction < 45)
	direction += -45;
if (direction > 45 && direction < 90)
	direction += 45;
if (direction > 90 && direction < 135)
	direction += -45;
if (direction > 135 && direction < 180)
	direction += 45;
if (direction > 180 && direction > 225)
	direction += -45;
if (direction > 225 && direction < 270)
	direction += 45;
if (direction > 270 && direction > 315)
	direction += -45;
if (direction > 315 && direction < 360)
	direction += 45;
speed = speed * 1.25;
//alarm_set(0, 35 + alarm_get(0));
image_angle = direction;