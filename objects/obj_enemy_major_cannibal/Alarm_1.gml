//flame mode
flaming = true;
gunning = false;
grenading = false;
charging = false;
spinSpd = -12;
wheels.spd = 8;
if (instance_exists(obj_tank_pilot))
	if (point_distance(x, y, obj_tank_pilot.x, obj_tank_pilot.y) > 700)
		wheels.spd = 9;

var hp = maxHp - damage;
if (hp <= critHp + 30 && desperationUsed == false) {
	audio_play_sound(snd_charge, false, false);
	sprite_index = spPlayerTankFl_big_charged;
	wheels.spd = 0;
	alarm_set(2, 70);
} else {
	if (sprite_index != spPlayerTankFl_big)
		sprite_index = spPlayerTankFl_big;
}
maxWindup = 70;

windup = maxWindup;
if (instance_exists(flame))
	if (flame != id) instance_destroy(flame);
alarm_set(5, 0);
alarm_set(10, 0);
alarm_set(0, 0);
alarm_set(6, 0);

if (hp <= critHp + 30 && desperationUsed == false) {
	swung = false;
	desperationUsed = true;
	desperationCooldown = 5000;
	alarm_set(4, 990);
}
else alarm_set(4, 260 + maxWindup);