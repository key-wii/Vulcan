var player_exists = instance_exists(obj_tank_pilot);
if (player_exists) {
	if (obj_tank_pilot.weapon == 1) {
		visible = false;
	} else
		visible = true;
}
if (image_alpha > .75 && loopUp == false) {
	image_alpha -= .05;
} else if (loopUp == false) {
	loopUp = true;
}
if (image_alpha < 1 && loopUp == true) {
	image_alpha += .05;
} else if (loopUp == true) {
	loopUp = false;
}
if (!instance_exists(obj_tank_pilot)) exit;
if (x > obj_tank_pilot.x - 10 &&
	x < obj_tank_pilot.x + 10 &&
	y < obj_tank_pilot.y + 145 &&
	y > obj_tank_pilot.y + 125)
	topSpeed = .5;
else if (x > obj_tank_pilot.x - 20 &&
	x < obj_tank_pilot.x + 20 &&
	y < obj_tank_pilot.y + 155 &&
	y > obj_tank_pilot.y + 115)
	topSpeed = 6;
else topSpeed = changeSpeed;
move_towards_point(obj_tank_pilot.x, obj_tank_pilot.y + 135, topSpeed);