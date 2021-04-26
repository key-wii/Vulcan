if (!instance_exists(obj_tank_pilot)) exit;
if (x > obj_tank_pilot.x - 400 &&
	x < obj_tank_pilot.x + 400 &&
	y > obj_tank_pilot.y - 300 &&
	y < obj_tank_pilot.y + 300 &&
	fullSpeed == true)
	topSpeed = 15;
else if (fullSpeed == true) topSpeed = 11;
if (x > obj_tank_pilot.x - 25 &&
	x < obj_tank_pilot.x - 5 &&
	y > obj_tank_pilot.y - 70 &&
	y < obj_tank_pilot.y - 50)
	topSpeed = .5;
else if (x > obj_tank_pilot.x - 35 &&
	x < obj_tank_pilot.x + 5 &&
	y > obj_tank_pilot.y - 80 &&
	y < obj_tank_pilot.y - 40)
	topSpeed = 1;
else topSpeed = changeSpeed;
move_towards_point(obj_tank_pilot.x - 15, obj_tank_pilot.y - 60, topSpeed);