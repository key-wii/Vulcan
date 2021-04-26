var spawn1 = instance_create_layer(xx1, yy1, "Enemy", obj_enemy_spawn);
spawn1.enemy = obj_enemy_tutorial_killer_s;
spawn1.set_dir = 270;
var spawn2 = instance_create_layer(xx2, yy2, "Enemy", obj_enemy_spawn);
spawn2.enemy = obj_enemy_tutorial_killer_s;
spawn2.set_dir = 90;
xx1 += 64;
xx2 -= 64;