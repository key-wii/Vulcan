last_object = object_index;
instance_change(obj_explosion_grenade, true);
pow = ppow;
if (pow > 30) sprite_index = spr_explosion_bomber_hit_flamed;
else sprite_index = spr_explosion_bomber_hit;
counter = true;
image_xscale = 1;
image_yscale = 1;
speed = 2;