preDevilSwing = false;
devilSwinging = true;
devilSwingCharge = 0;
if (bull_hit_count < 45) {
	devil_trigger -= 200;
	charges -= 2;
}
if (flame_dir > 0) {
	direction += -30;
	if (bull_hit_count < 45) {
		flame_dir = -1.8;
		alarm_set (6, 25);
	} else {
		flame_dir = .4;
		alarm_set (6, 6);
		slowDevilSwing = true;
	}
	exit;
}
if (flame_dir < 0) {
	direction += 30;
	if (bull_hit_count < 45) {
		flame_dir = 1.8;
		alarm_set (6, 25);
	} else {
		flame_dir = -.4;
		alarm_set (6, 6);
		slowDevilSwing = true;
	}
	exit;
}