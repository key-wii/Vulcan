/*if (hit_shield != noone && instance_exists(hit_shield) && instance_exists(obj_tank_pilot)) {
	var player_half_width = obj_tank_pilot.sprite_width / 2;
	var sprLen = point_distance(obj_tank_pilot.x, obj_tank_pilot.y, hit_shield.x, hit_shield.y) - player_half_width;
	draw_sprite_part_ext(spr_flame_, 0, 0, 0, sprLen, sprite_get_width(spr_flame_), x, y, image_xscale, image_yscale, c_white, 1);
	sprite_index = noone;
} else {*/
	sprite_index = spr_flame_;
	draw_self();
//}