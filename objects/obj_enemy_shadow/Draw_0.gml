if (sprite == noone) exit;
draw_sprite_ext(sprite, 0, owner.x, owner.y + owner.image_yscale * 20,
	owner.image_xscale * 1.5, owner.image_yscale * 1.5, owner.direction, c_white, 1);