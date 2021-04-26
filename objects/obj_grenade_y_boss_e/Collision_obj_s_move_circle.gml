if (owner.flameKills > 0)
	with (owner) {
		alarm_set(7, alarm_get(7) + 30);
		if (alarm_get(7) > 79) alarm_set(7, 79);
	}

with(other) {
	owner.burnt += 10;
	owner.x_adjust = lengthdir_x(8, point_direction(other.x, other.y, x, y));
	owner.y_adjust = lengthdir_y(8, point_direction(other.x, other.y, x, y));
}
instance_change(obj_explosion_grenade_boss_e, true);
speed = 3;