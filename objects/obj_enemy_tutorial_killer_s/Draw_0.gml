draw_self();
image_angle = direction;

/*
var xdir = lengthdir_x(3000, direction);
var ydir = lengthdir_y(3000, direction);
var stopHere = collision_line(x, y, x + xdir, y + ydir, obj_wall3, false, true);
if (instance_exists(stopHere)) {
	draw_set_color(c_red);
	draw_set_alpha(.3);
	draw_line_width(x, y, stopHere.x + 18, stopHere.y + 18, 3);
	draw_line_width(x, y, stopHere.x + 18, stopHere.y + 18, 5);
}*/
/*
var hPercent = 100 / maxHp;
__dnd_health = real(maxHp * hPercent - wheels.damage * hPercent);

if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_healthbar(x + -15, y + -34, x + 15, y + -31, __dnd_health, $FFFF2340, $FF0000FF & $FFFFFF, $FF4C707F & $FFFFFF, 0, (($FFFF2340>>24) != 0), (($FFFF2340>>24) != 0));