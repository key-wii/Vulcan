if (instance_number(obj_enemy_parent) > 50) exit;
var spawn1 = instance_create_layer(xx + 832, yy - 832, "Enemy", obj_enemy_spawn);
spawn1.enemy = obj_enemy_s;
var spawn2 = instance_create_layer(xx - 832, yy + 832, "Enemy", obj_enemy_spawn);
spawn2.enemy = obj_enemy_s;
var spawn3 = instance_create_layer(xx + 832, yy + 832, "Enemy", obj_enemy_spawn);
spawn3.enemy = obj_enemy_s;
var spawn4 = instance_create_layer(xx - 832, yy - 832, "Enemy", obj_enemy_spawn);
spawn4.enemy = obj_enemy_s;