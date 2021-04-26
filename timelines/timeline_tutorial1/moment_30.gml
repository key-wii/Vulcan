var spawn = instance_create_layer(x + 640, y + 640, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_s;
timeline_running = false;
phase = 4;