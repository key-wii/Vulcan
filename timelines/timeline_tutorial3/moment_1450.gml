var spawn1 = instance_create_layer(xx, yy + 64, "Enemy", obj_enemy_spawn);
spawn1.enemy = obj_enemy_r;
var spawn2 = instance_create_layer(xx, yy - 64, "Enemy", obj_enemy_spawn);
spawn2.enemy = obj_enemy_r;