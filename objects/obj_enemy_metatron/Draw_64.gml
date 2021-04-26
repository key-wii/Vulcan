var display = obj_camera.displayScale;

var hPercent = 100 / maxHp;
__dnd_health = maxHp * hPercent - damage * hPercent;

xx = display_get_gui_width();
yy = display_get_gui_height();

if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_set_alpha(.5);
draw_healthbar(5, yy - 40 * display, xx - 5, yy - 5, __dnd_health,
	$FF000000, $41933C & $FFFFFF, $41933C & $FFFFFF, 0,
	(($FFFF2340>>24) != 0), (($FFFF2340>>24) != 0));