global.boss_just_killed = true;
instance_destroy(obj_enemy_hive);
with (obj_spawner) {
	timeline_index = timeline_beatBoss1;
	timeline_loop = false;
	timeline_position = 0;
	timeline_running = true;
}

instance_destroy(flame);
instance_destroy(wheels);
expl = instance_create_layer(x, y, "Enemy", obj_explosion_emitter_miniboss2);
expl.direction = direction;
expl.splitMore = 3;
event_inherited();