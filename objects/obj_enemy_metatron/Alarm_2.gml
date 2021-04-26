if (!instance_exists(obj_tank_pilot)) exit;
if (phase < 3) {
	if (obj_tank_pilot.damage == 0 && phase == 1) { shootCount = 0; alarm_set(4, 60); phase = 2; }
	if (phase < 2 && (damage == 0 || flaming)) { alarm_set(2, 2); exit; }
}
if (phase == 8 && burnt <= 30) exit;
if (phase == 9 && burnt <= 40) exit;
//flame mode
flameCount = 0;
flaming = true;
windup = maxWindup;
if (instance_exists(flame))
	if (flame != id) instance_destroy(flame);
alarm_set(5, 0);