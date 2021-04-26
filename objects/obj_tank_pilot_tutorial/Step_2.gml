if (!flaming && !flame_end && !shoot_rotate) {
	var ex, ey;
	ex = mouse_x;
	ey = mouse_y;
	direction = point_direction(x, y, ex, ey);
}
if (shoot_rotate > 0) {
	var rot = 18;
	if (flame_dir > 0) direction += rot;
	if (flame_dir < 0) direction -= rot;
	shoot_rotate -= 1;
}
image_angle = direction;
if (image_angle mod 2 == 1) image_angle += 1;

var shrink;
with (controller) shrink = alarm_get(2)
if (shrink > 0 && shrink < 3) shrink = -25;
image_xscale = 1 - shrink / 300;
image_yscale = 1 - shrink / 300;

clicked_ui = false;

//Radius before enemies stop and back away slowly changes as more enemies enter the radius
//Radius should not neccessarily be the same for every enemy
/*for (i = 0; i < instance_number(obj_enemy_move_parent); i++) {
	enemy = instance_find(obj_enemy_move_parent, i);
	enemy.playerDistance = point_distance(x, y, enemy.x, enemy.y);
	if (enemy.playerDistance < (200.1 + enemy.radiusIncrease)) {
		enemy.inPlayerRadius = true;
		controller.enemiesInPlayerRadius += 1;
	}
	if (controller.enemiesInPlayerRadius > 4 && enemy.playerDistance >= (200.1 + enemy.radiusIncrease)) {
		enemy.radiusIncrease += 700;
	}
	if (enemy.inPlayerRadius = true && enemy.playerDistance >= (200.1 + enemy.radiusIncrease)) {
		enemy.inPlayerRadius = false;
		controller.enemiesInPlayerRadius -= 1
	}
}
//CURRENTLY WORKING ON ABOVE