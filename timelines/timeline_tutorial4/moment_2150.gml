var spawn = instance_create_layer(xx1, yy1, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_tutorial_killer_b;
spawn.set_dir = 0;
spawn = instance_create_layer(xx2, yy2, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_tutorial_killer_b;
spawn.set_dir = 90;
spawn = instance_create_layer(xx3, yy3, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_tutorial_killer_b;
spawn.set_dir = 180;
spawn = instance_create_layer(xx4, yy4, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_tutorial_killer_b;
spawn.set_dir = 270;

spawn = instance_create_layer(xx1 + 64, yy1 - 64, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_tutorial_killer_b;
spawn.set_dir = 0;
spawn = instance_create_layer(xx2 - 64, yy2 - 64, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_tutorial_killer_b;
spawn.set_dir = 90;
spawn = instance_create_layer(xx3 - 64, yy3 + 64, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_tutorial_killer_b;
spawn.set_dir = 180;
spawn = instance_create_layer(xx4 + 64, yy4 + 64, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_tutorial_killer_b;
spawn.set_dir = 270;

spawn = instance_create_layer(xx1 + 128, yy1 - 128, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_tutorial_killer_b;
spawn.set_dir = 0;
spawn = instance_create_layer(xx2 - 128, yy2 - 128, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_tutorial_killer_b;
spawn.set_dir = 90;
spawn = instance_create_layer(xx3 - 128, yy3 + 128, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_tutorial_killer_b;
spawn.set_dir = 180;
spawn = instance_create_layer(xx4 + 128, yy4 + 128, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_tutorial_killer_b;
spawn.set_dir = 270;