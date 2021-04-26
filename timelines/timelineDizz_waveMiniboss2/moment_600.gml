if (instance_number(obj_enemy_parent) > 65) exit;
var spawn1 = instance_create_layer(xx + 124, yy - 124, "Enemy", obj_enemy_spawn);
spawn1.enemy = obj_enemy_bomber;
var spawn2 = instance_create_layer(xx - 124, yy + 124, "Enemy", obj_enemy_spawn);
spawn2.enemy = obj_enemy_bomber;
var spawn3 = instance_create_layer(xx + 124, yy + 124, "Enemy", obj_enemy_spawn);
spawn3.enemy = obj_enemy_bomber;
var spawn4 = instance_create_layer(xx - 124, yy - 124, "Enemy", obj_enemy_spawn);
spawn4.enemy = obj_enemy_bomber;