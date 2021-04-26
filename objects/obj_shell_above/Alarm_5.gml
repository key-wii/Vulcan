image_xscale = 1;
image_yscale = 1;
layer = layer_get_id("Player_Bullets");
speed = 12;
instance_change(obj_shell, false);
alarm_set(0, 200);
count = 0;