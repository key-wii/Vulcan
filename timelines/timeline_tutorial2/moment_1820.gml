var spawn1 = instance_create_layer(xx + 224, yy - 224, "Enemy", obj_enemy_spawn);
spawn1.enemy = obj_enemy_s_quickshot;
var spawn2 = instance_create_layer(xx - 224, yy + 224, "Enemy", obj_enemy_spawn);
spawn2.enemy = obj_enemy_s_quickshot;
var spawn3 = instance_create_layer(xx - 224, yy - 224, "Enemy", obj_enemy_spawn);
spawn3.enemy = obj_enemy_s_quickshot;
var spawn4 = instance_create_layer(xx + 224, yy + 224, "Enemy", obj_enemy_spawn);
spawn4.enemy = obj_enemy_s_quickshot;