var spawn1 = instance_create_layer(xx + 192, yy, "Enemy", obj_enemy_spawn);
spawn1.enemy = obj_enemy_s_viper;
var spawn2 = instance_create_layer(xx - 192, yy, "Enemy", obj_enemy_spawn);
spawn2.enemy = obj_enemy_s_viper;
var spawn3 = instance_create_layer(xx, yy + 192, "Enemy", obj_enemy_spawn);
spawn3.enemy = obj_enemy_s_viper;
var spawn4 = instance_create_layer(xx, yy - 192, "Enemy", obj_enemy_spawn);
spawn4.enemy = obj_enemy_s_viper;