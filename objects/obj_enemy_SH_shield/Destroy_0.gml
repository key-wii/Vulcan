if (instance_exists(owner)) {
	with (owner) {
		shield = id;
		flashCount = -1;
		flash1 = false;
		flash2 = false;
		alarm_set(3, 0);
		alarm_set(4, 0);
	}
	if (instance_exists(owner.wheels)) {
		owner.wheels.broken_shield = true;
		owner.wheels.speed = clamp(owner.wheels.speed * 1.5, 0, 10);
	}
}

if (instabreak) sound_machine(snd_shield_break2, x, y);

/*if (broke) {
	var corpse = instance_create_layer(x, y, "Floor", sprite_index);
	corpse.sprite_index = dead_sprite;
	corpse.direction = direction;
	corpse.image_angle = corpse.direction;
}*/