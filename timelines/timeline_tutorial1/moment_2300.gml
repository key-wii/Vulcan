var spawn = instance_create_layer(xx, yy, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_s_boss;
spawn.image_xscale = 2;
spawn.image_yscale = 2;

instance_create_layer(xx + 832, yy - 832, "Enemy", obj_enemy_hive);
instance_create_layer(xx - 832, yy + 832, "Enemy", obj_enemy_hive);
instance_create_layer(xx + 832, yy + 832, "Enemy", obj_enemy_hive);
instance_create_layer(xx - 832, yy - 832, "Enemy", obj_enemy_hive);

obj_spawner_tutorial.phase = 7;