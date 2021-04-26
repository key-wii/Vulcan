if (collision_point(x+16, y+16, obj_enemy_parent, false, true)) {
	enemyTick += 1;
	if (enemyTick > 120) instance_destroy(other);
	alarm_set(1, 2);
}