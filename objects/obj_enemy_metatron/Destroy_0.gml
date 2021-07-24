instance_destroy(shield);
instance_destroy(wheels);
expl = instance_create_layer(x, y, "Enemy", obj_explosion_emitter_final);
expl.direction = direction;
expl.splitMore = 3;

instance_destroy(obj_shell_parent_e);

instance_destroy(obj_enemy_parent);
global.boss_just_killed = true;
with (obj_spawner) {
	timeline_index = timeline_beatFinalBoss;
	timeline_loop = false;
	timeline_position = 0;
	timeline_running = true;
}
instance_create_layer(x, y, "Enemy", obj_heart_final);


event_inherited();