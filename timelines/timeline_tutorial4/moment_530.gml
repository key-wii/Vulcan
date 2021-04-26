var spawn = instance_create_layer(xx, yy, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_tutorial_killer_s;
spawn.set_dir = 180;
yy += 64;

global.checkpoint = 6;