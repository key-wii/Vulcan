if (instance_exists(obj_tank_pilot)) with (obj_tank_pilot) {
	if (damage < 90) damage += .15;
	if (spikesUnlocked) {
		var hp = 100 - damage;
		var hearts = floor(hp / 10);
		lastSpikes = hearts;
	}
}
with (obj_enemy_parent) damage += .15;
with (obj_shell_parent) { explode = true; if !(alarm_get(0) >= 0 && alarm_get(0) <= 6) alarm_set(0, 6); }
with (obj_shell_parent_e) { explode = true; if !(alarm_get(0) >= 0 && alarm_get(0) <= 6) alarm_set(0, 6); }