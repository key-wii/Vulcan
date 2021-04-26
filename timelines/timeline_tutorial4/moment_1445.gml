var spawn = instance_create_layer(xx + 576, yy - 256, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_tutorial_killer_b;
spawn.set_dir = 90;
spawn = instance_create_layer(xx - 576, yy + 256, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_tutorial_killer_b;
spawn.set_dir = 270;