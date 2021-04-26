event_inherited();
flame.rot_spd = rot_spd;
if (corner) {
	image_speed = 0;
	image_index = 1;
	with (flame) instance_change(obj_flame_bull_corner_e, false);
} else grenade = false;