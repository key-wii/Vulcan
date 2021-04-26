event_inherited();
image_angle = direction;

//Subtracted by 9 * image_xscale because of empty pixels to the left of sprite
var xx = lengthdir_x((sprite_width / 2) - (9 * image_xscale), direction + 180);
var yy = lengthdir_y((sprite_width / 2) - (9 * image_xscale), direction + 180);
draw_sprite_ext(spr_enemy_spike_g, 0, x + xx, y + yy, image_xscale, image_yscale, direction, c_white, 1);
/*
var hPercent = 100 / maxHp;
__dnd_health = real(maxHp * hPercent - wheels.damage * hPercent);

if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_healthbar(x + -15, y + -34, x + 15, y + -31, __dnd_health, $FFFF2340, $FF0000FF & $FFFFFF, $FF4C707F & $FFFFFF, 0, (($FFFF2340>>24) != 0), (($FFFF2340>>24) != 0));