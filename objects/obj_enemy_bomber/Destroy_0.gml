instance_destroy(wheels);
expl = instance_create_layer(x, y, "Bombers", obj_explosion_large);
if (hitCount > 0) expl.silent = true;
expl.bomber = true;

event_inherited();