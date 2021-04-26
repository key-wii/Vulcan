var explosion = instance_create_layer(x, y, "Explosions", obj_explosion_grenade);
explosion.sprite_index = spr_explosion_devil;
explosion.image_alpha = .35;
explosion.chain = true;
explosion.last_object = object_index;