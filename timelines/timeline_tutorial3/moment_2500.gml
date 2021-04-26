var spawn1 = instance_create_layer(xx + 64, yy, "Enemy", obj_enemy_spawn);
spawn1.enemy = obj_enemy_s_viper;
var spawn2 = instance_create_layer(xx - 64, yy, "Enemy", obj_enemy_spawn);
spawn2.enemy = obj_enemy_s_viper;
var spawn3 = instance_create_layer(xx, yy + 64, "Enemy", obj_enemy_spawn);
spawn3.enemy = obj_enemy_s;
var spawn4 = instance_create_layer(xx, yy - 64, "Enemy", obj_enemy_spawn);
spawn4.enemy = obj_enemy_s;