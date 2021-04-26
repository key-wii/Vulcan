var spawn = instance_create_layer(xx, yy, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_s_boss_spreader;
spawn.image_xscale = 2;
spawn.image_yscale = 2;

instance_create_layer(xx + 124, yy - 124, "Enemy", obj_enemy_hive);
instance_create_layer(xx - 124, yy + 124, "Enemy", obj_enemy_hive);
instance_create_layer(xx + 124, yy + 124, "Enemy", obj_enemy_hive);
instance_create_layer(xx - 124, yy - 124, "Enemy", obj_enemy_hive);

instance_create_layer(xx + 1152, yy - 1152, "Enemy", obj_enemy_hive);
instance_create_layer(xx - 1152, yy + 1152, "Enemy", obj_enemy_hive);
instance_create_layer(xx + 1152, yy + 1152, "Enemy", obj_enemy_hive);
instance_create_layer(xx - 1152, yy - 1152, "Enemy", obj_enemy_hive);