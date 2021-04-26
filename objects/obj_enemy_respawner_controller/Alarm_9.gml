expl = instance_create_layer(killx[1], killy[1], "Enemy", obj_explosion_emitter_miniboss3);
expl.direction = direction + 180;
expl.splitMore = 0;
alarm_set(10, 9);