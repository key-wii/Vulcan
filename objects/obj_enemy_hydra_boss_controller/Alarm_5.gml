//Combo lasts a bit longer while controller is exploding
/*if (!global.flameKills > 0) exit;
if (instance_exists(controller))
	with (controller) {
		alarm_set(2, alarm_get(2) + 2);
		if (alarm_get(2) > 79) alarm_set(2, 79);
	}
if (instance_exists(obj_boss1_controller))
	with (obj_boss1_controller) {
		alarm_set(2, alarm_get(2) + 2);
		if (alarm_get(2) > 79) alarm_set(2, 79);
	}
alarm_set(5, 1);*/