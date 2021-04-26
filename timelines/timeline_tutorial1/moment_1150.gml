var spawn1 = instance_create_layer(xx, yy - 320, "Enemy", obj_enemy_spawn);
spawn1.enemy = obj_enemy_s;
var spawn2 = instance_create_layer(xx + 320, yy + 320, "Enemy", obj_enemy_spawn);
spawn2.enemy = obj_enemy_s;
var spawn3 = instance_create_layer(xx - 320, yy + 320, "Enemy", obj_enemy_spawn);
spawn3.enemy = obj_enemy_s;
var spawn4 = instance_create_layer(xx, yy, "Enemy", obj_enemy_spawn);
spawn4.enemy = obj_enemy_s_viper;