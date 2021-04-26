if (dead) exit;
var h1 = instance_exists(head[0]);
var h2 = instance_exists(head[1]);
var h3 = instance_exists(head[2]);
if (!h1 || head[0].object_index == obj_hydra_spawn)
	if (!h2 || head[1].object_index == obj_hydra_spawn)
		if (!h3 || head[2].object_index == obj_hydra_spawn) dead = true;
if (dead) {
	instance_destroy(head[0]);
	instance_destroy(head[1]);
	instance_destroy(head[2]);
	alarm_set(8, 1);
	alarm_set(0, 0);
	alarm_set(1, 0);
}