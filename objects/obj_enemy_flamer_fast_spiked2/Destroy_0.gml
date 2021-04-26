//Subtracted by 9 * image_xscale because of empty pixels to the left of sprite
var xx = lengthdir_x((sprite_width) - (4 * image_xscale), direction + 180);
var yy = lengthdir_y((sprite_width) - (4 * image_xscale), direction + 180);
var bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_rocket_e);
bull.direction = direction + 180;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_b_;
with (bull) alarm_set(0, 500);

instance_destroy(flame);
instance_destroy(wheels);
expl = instance_create_layer(x, y, "Enemy", obj_explosion_large);
event_inherited();