preDevilSwing = false;
devilSwinging = true;
devilSwingCharge = 0;
if (bull_hit_count < 45) {
	devil_trigger -= 200;
	charges -= 2;
}
if (flame_dir > 0) {
	direction += -20;
	if (bull_hit_count < 45) {
		flame_dir = -1.5;
		alarm_set (6, 25);
	} else {
		flame_dir = .35;
		alarm_set (6, 6);
		slowDevilSwing = true;
	}
	exit;
}
if (flame_dir < 0) {
	direction += 20;
	if (bull_hit_count < 45) {
		flame_dir = 1.5;
		alarm_set (6, 25);
	} else {
		flame_dir = -.35;
		alarm_set (6, 6);
		slowDevilSwing = true;
	}
	exit;
}

if (global.flameKills > 0) {
	var controller_exists = instance_exists(controller);
	if (controller_exists)
		with (controller) {
			alarm_set(2, alarm_get(2) + 5);
			if (alarm_get(2) > 85) alarm_set(2, 85);
		}
	var boss_controller_exists = instance_exists(obj_boss1_controller);
	if (boss_controller_exists)
		with (obj_boss1_controller) {
			alarm_set(2, alarm_get(2) + 5);
			if (alarm_get(2) > 85) alarm_set(2, 85);
		}
}