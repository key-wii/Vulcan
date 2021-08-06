event_inherited();
image_angle = direction;

//Subtracted by 9 * image_xscale because of empty pixels to the left of sprite
var ddir = direction + 180;
var xx = lengthdir_x((sprite_width / 2) - (20 * image_xscale), ddir);
var yy = lengthdir_y((sprite_width / 2) - (20 * image_xscale), ddir);
draw_sprite_ext(spr_enemy_spike_b, 0, x + xx, y + yy, image_xscale * 1.25, image_yscale * 1.25, direction, c_white, 1);
	ddir = direction + 210;
	xx = lengthdir_x((sprite_width / 2.22) - (16 * image_xscale), ddir);
	yy = lengthdir_y((sprite_width / 2.22) - (16 * image_xscale), ddir);
draw_sprite_ext(spr_enemy_spike_b, 0, x + xx, y + yy, image_xscale * 1.25, image_yscale * 1.25, direction + 30, c_white, 1);
	ddir = direction - 210;
	xx = lengthdir_x((sprite_width / 2.22) - (16 * image_xscale), ddir);
	yy = lengthdir_y((sprite_width / 2.22) - (16 * image_xscale), ddir);
draw_sprite_ext(spr_enemy_spike_b, 0, x + xx, y + yy, image_xscale * 1.25, image_yscale * 1.25, direction - 30, c_white, 1);
	ddir = direction + 240;
	xx = lengthdir_x((sprite_width / 2.26) - (16 * image_xscale), ddir);
	yy = lengthdir_y((sprite_width / 2.26) - (16 * image_xscale), ddir);
draw_sprite_ext(spr_enemy_spike_b, 0, x + xx, y + yy, image_xscale * 1.25, image_yscale * 1.25, direction + 60, c_white, 1);
	ddir = direction - 240;
	xx = lengthdir_x((sprite_width / 2.26) - (16 * image_xscale), ddir);
	yy = lengthdir_y((sprite_width / 2.26) - (16 * image_xscale), ddir);
draw_sprite_ext(spr_enemy_spike_b, 0, x + xx, y + yy, image_xscale * 1.25, image_yscale * 1.25, direction - 60, c_white, 1);
	ddir = direction;
	xx = lengthdir_x((sprite_width / 2) - (6 * image_xscale), ddir);
	yy = lengthdir_y((sprite_width / 2) - (6 * image_xscale), ddir);
draw_sprite_ext(spr_enemy_spike_g, 0, x + xx, y + yy, image_xscale * 2, image_yscale * 1.5, direction + 180, c_white, 1);

if (maxHp <= 10) exit;
var hp = maxHp - damage;
var hpBracket = (maxHp / 3);
	 if (hp <= hpBracket * .75) image_index = 2;
else if (hp < hpBracket * 2.5) image_index = 1;
else if (hp >= hpBracket * 2.5) image_index = 0;
/*
var hPercent = 100 / maxHp;
__dnd_health = real(maxHp * hPercent - wheels.damage * hPercent);

if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_healthbar(x + -15, y + -34, x + 15, y + -31, __dnd_health, $FFFF2340, $FF0000FF & $FFFFFF, $FF4C707F & $FFFFFF, 0, (($FFFF2340>>24) != 0), (($FFFF2340>>24) != 0));