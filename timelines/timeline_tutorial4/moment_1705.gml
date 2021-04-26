var spawn = instance_create_layer(xx - 384, yy - 768, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_tutorial_killer_b;
spawn.set_dir = 270;
spawn = instance_create_layer(xx + 384, yy + 768, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_tutorial_killer_b;
spawn.set_dir = 90;