var spawn1 = instance_create_layer(xx + 256, yy - 256, "Enemy", obj_enemy_spawn);
spawn1.enemy = obj_enemy_tutorial_dummy;
var spawn2 = instance_create_layer(xx - 256, yy + 256, "Enemy", obj_enemy_spawn);
spawn2.enemy = obj_enemy_tutorial_dummy;
var spawn3 = instance_create_layer(xx + 256, yy + 256, "Enemy", obj_enemy_spawn);
spawn3.enemy = obj_enemy_tutorial_dummy;
var spawn4 = instance_create_layer(xx - 256, yy - 256, "Enemy", obj_enemy_spawn);
spawn4.enemy = obj_enemy_tutorial_dummy;
var spawn5 = instance_create_layer(xx, yy, "Enemy", obj_enemy_spawn);
spawn5.enemy = obj_enemy_s_armor_big;
spawn5.set_hp = 110;