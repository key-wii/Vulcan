instance_destroy(wheels);
expl = instance_create_layer(x, y, "Enemy", obj_explosion_emitter_miniboss3);
expl.direction = direction + 180;

if (instance_exists(obj_enemy_metatron) && obj_enemy_metatron.damage >= 8000) with (obj_enemy_metatron) phase = 9;

event_inherited();