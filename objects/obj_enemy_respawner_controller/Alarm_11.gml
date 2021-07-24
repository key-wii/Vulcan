expl = instance_create_layer(x, y, "Enemy", obj_explosion_emitter_miniboss2);
expl.direction = direction + 180;
expl.splitMore = 1;

if (global.level != 9) {
	var heart = instance_create_layer(x, y, "Enemy", obj_heart);
	heart.upgrade = 2;
}

instance_destroy();