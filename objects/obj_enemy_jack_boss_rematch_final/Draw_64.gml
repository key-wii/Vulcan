var display = obj_camera.displayScale;

var hPercent = 100 / maxHp;
__dnd_health = real(maxHp * hPercent - wheels.damage * hPercent);

xx = display_get_gui_width();
yy = display_get_gui_height();

if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_set_alpha(.5);
draw_healthbar(80, yy - 26 * display, xx - 80, yy - 7, __dnd_health,
	$FF000000, $41933C & $FFFFFF, $41933C & $FFFFFF, 0,
	(($FFFF2340>>24) != 0), (($FFFF2340>>24) != 0));