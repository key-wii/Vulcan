event_inherited();
image_angle = direction;

//Subtracted by 9 * image_xscale because of empty pixels to the left of sprite
var xx = lengthdir_x((sprite_width / 2) - (9 * image_xscale), direction + 210);
var yy = lengthdir_y((sprite_width / 2) - (9 * image_xscale), direction + 210);
draw_sprite_ext(spr_enemy_spike_b, 0, x + xx, y + yy, image_xscale, image_yscale, direction + 30, c_white, 1);
var xx = lengthdir_x((sprite_width / 2) - (9 * image_xscale), direction - 210);
var yy = lengthdir_y((sprite_width / 2) - (9 * image_xscale), direction - 210);
draw_sprite_ext(spr_enemy_spike_b, 0, x + xx, y + yy, image_xscale, image_yscale, direction - 30, c_white, 1);

var hp = maxHp - damage;
var hpBracket = (maxHp / 3);
	 if (hp <= hpBracket * .75) image_index = 2;
else if (hp < hpBracket * 2.5) image_index = 1;
else if (hp >= hpBracket * 2.5) image_index = 0;