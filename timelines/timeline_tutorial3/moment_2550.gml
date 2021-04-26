var spawn1 = instance_create_layer(xx + 832, yy + 832, "Enemy", obj_enemy_spawn);
spawn1.enemy = obj_enemy_r;
var spawn2 = instance_create_layer(xx - 832, yy - 832, "Enemy", obj_enemy_spawn);
spawn2.enemy = obj_enemy_r;
var spawn3 = instance_create_layer(xx - 832, yy + 832, "Enemy", obj_enemy_spawn);
spawn3.enemy = obj_enemy_r;
var spawn4 = instance_create_layer(xx + 832, yy - 832, "Enemy", obj_enemy_spawn);
spawn4.enemy = obj_enemy_r;