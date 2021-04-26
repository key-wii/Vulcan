//Subtracted by 9 * image_xscale because of empty pixels to the left of sprite
var xx = lengthdir_x((sprite_width) - (9 * image_xscale), direction + 210);
var yy = lengthdir_y((sprite_width) - (9 * image_xscale), direction + 210);
var bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_bouncer_e);
bull.direction = direction + 210;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_g_;
with (bull) alarm_set(0, 500);
var xx = lengthdir_x((sprite_width) - (9 * image_xscale), direction - 210);
var yy = lengthdir_y((sprite_width) - (9 * image_xscale), direction - 210);
var bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_bouncer_e);
bull.direction = direction - 210;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_g_;
with (bull) alarm_set(0, 500);

instance_destroy(wheels);
expl = instance_create_layer(x, y, "Enemy", obj_explosion_large);
event_inherited();