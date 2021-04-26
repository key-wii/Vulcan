image_xscale = 1;
image_yscale = 1;
layer = layer_get_id("Enemy_Bullets_Front");
speed = 12;
sprite_index = spr_bull_y;
instance_change(obj_shell_e, false);
alarm_set(0, 200);