if (instance_number(obj_enemy_parent) > 16) exit;
var spawn1 = instance_create_layer(xx + 892, yy - 892, "Enemy", obj_enemy_spawn);
spawn1.enemy = obj_enemy_b;
var spawn2 = instance_create_layer(xx - 892, yy + 892, "Enemy", obj_enemy_spawn);
spawn2.enemy = obj_enemy_b;
var spawn3 = instance_create_layer(xx + 892, yy + 892, "Enemy", obj_enemy_spawn);
spawn3.enemy = obj_enemy_b;
var spawn4 = instance_create_layer(xx - 892, yy - 892, "Enemy", obj_enemy_spawn);
spawn4.enemy = obj_enemy_b;