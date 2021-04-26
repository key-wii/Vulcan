var expl = instance_create_layer(x, y, "Explosions", obj_explosion_grenade_e);
expl.image_xscale = 1;
expl.image_yscale = 1;
expl.speed = 5;
expl.direction = direction;
if (instance_exists(owner))
	with (owner) 
		instance_destroy();