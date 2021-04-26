if (owner.flameKills > 0)
	with (owner) {
		alarm_set(7, alarm_get(7) + 30);
		if (alarm_get(7) > 79) alarm_set(7, 79);
	}

instance_change(obj_explosion_grenade_boss_e, true);
speed = 3;