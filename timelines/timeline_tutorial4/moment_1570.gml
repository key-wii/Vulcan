var spawn = instance_create_layer(xx + 640, yy - 320, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_tutorial_killer_b;
spawn.set_dir = 0;
spawn = instance_create_layer(xx - 640, yy + 320, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_tutorial_killer_b;
spawn.set_dir = 180;