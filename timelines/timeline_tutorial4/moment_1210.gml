var spawn = instance_create_layer(xx1, yy1, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_tutorial_killer_s;
spawn.set_dir = ddir;
spawn = instance_create_layer(xx2, yy2, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_tutorial_killer_s;
spawn.set_dir = ddir + 90;
spawn = instance_create_layer(xx3, yy3, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_tutorial_killer_s;
spawn.set_dir = ddir + 180;
spawn = instance_create_layer(xx4, yy4, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_tutorial_killer_s;
spawn.set_dir = ddir + 270;