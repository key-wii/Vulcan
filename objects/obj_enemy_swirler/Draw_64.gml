var display = obj_camera.displayScale;

var hPercent = 100 / maxHp;
__dnd_health = real(maxHp * hPercent - wheels.damage * hPercent);

xx = display_get_gui_width();
yy = display_get_gui_height();

if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_set_alpha(.5);
draw_healthbar(5, yy - 30 * display, xx - 5, yy - 5, __dnd_health,
	$FF000000, $41933C & $FFFFFF, $41933C & $FFFFFF, 0,
	(($FFFF2340>>24) != 0), (($FFFF2340>>24) != 0));

/*var hp = maxHp - damage;
healsDrawn = 0;
if ((hp + flameHeals >= 0) && combo) {
	var healHearts = flameHeals;
	var hheals = flameHeals; 
	var heartSize = 40;
	while ((hheals <= healsDrawn || healing) && healsDrawn < hheals + healHearts && healsDrawn < maxHp / 10) {
		draw_sprite_stretched(spr_health, 1, 5 + __dnd_health + hp_x, yy - 30,
			heartSize * display, heartSize * display);
		hp_x += 50;
		healsDrawn += 1;
		//if (healsDrawn = 5) hp_x += 1 * display;
	}
}