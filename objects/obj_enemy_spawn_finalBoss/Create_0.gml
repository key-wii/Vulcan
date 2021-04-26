rotation = 12;
enemy = obj_enemy_s;
set_dir = 1000;
set_hp = 0;
layer = layer_get_id("Floor");
image_speed = .35;
ready = false;
alarm_set(0, 110);
alarm_set(4, 1);
alarm_set(11, 1);

alpha = .1;