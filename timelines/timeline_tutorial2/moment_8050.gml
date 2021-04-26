var spawn = instance_create_layer(xx + 2, yy, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_b_boss;
spawn.image_xscale = 2;
spawn.image_yscale = 2;

instance_create_layer(xx + 832, yy - 832, "Enemy", obj_enemy_hive);
instance_create_layer(xx - 832, yy + 832, "Enemy", obj_enemy_hive);
instance_create_layer(xx + 832, yy + 832, "Enemy", obj_enemy_hive);
instance_create_layer(xx - 832, yy - 832, "Enemy", obj_enemy_hive);