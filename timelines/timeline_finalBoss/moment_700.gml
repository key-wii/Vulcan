if (instance_number(obj_enemy_parent) > 18) exit;
var spawn1 = instance_create_layer(xx + 1152, yy - 1152, "Enemy", obj_enemy_spawn);
spawn1.enemy = obj_enemy_s_spiked;
var spawn2 = instance_create_layer(xx - 1152, yy + 1152, "Enemy", obj_enemy_spawn);
spawn2.enemy = obj_enemy_s_spiked;
var spawn3 = instance_create_layer(xx + 1152, yy + 1152, "Enemy", obj_enemy_spawn);
spawn3.enemy = obj_enemy_s_spiked;
var spawn4 = instance_create_layer(xx - 1152, yy - 1152, "Enemy", obj_enemy_spawn);
spawn4.enemy = obj_enemy_s_spiked;