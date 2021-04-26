xx = room_width / 2; yy = room_height / 2;
var spawn = instance_create_layer(xx, yy + 800, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_tutorial_killer_r;
spawn.set_dir = 90;