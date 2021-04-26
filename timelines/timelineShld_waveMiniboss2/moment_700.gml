if (instance_number(obj_enemy_parent) > 12) exit;
var spawn1 = instance_create_layer(xx + 620, yy, "Enemy", obj_enemy_spawn);
spawn1.enemy = obj_enemy_mage_big_circle;
var spawn2 = instance_create_layer(xx - 620, yy, "Enemy", obj_enemy_spawn);
spawn2.enemy = obj_enemy_mage_big_circle;
var spawn3 = instance_create_layer(xx, yy + 620, "Enemy", obj_enemy_spawn);
spawn3.enemy = obj_enemy_mage_big_circle;
var spawn4 = instance_create_layer(xx, yy - 620, "Enemy", obj_enemy_spawn);
spawn4.enemy = obj_enemy_mage_big_circle;