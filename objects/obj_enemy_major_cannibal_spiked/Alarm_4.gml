if (!instance_exists(obj_tank_pilot)) exit;
var ddir = point_direction(x, y, obj_tank_pilot.x, obj_tank_pilot.y);
if (direction > ddir + spinSpd && direction < ddir - spinSpd) {
	alarm_set(4, 1);
	exit;
}

//gun mode
flaming = false;
gunning = true;
charging = false;
if (flame != id)
	instance_destroy(flame);
wheels.spd = 10;
enemySighted = false;
alarm_set(10, 1);

alarm_set(1, 350);

alarm_set(2, 0);

alarm_set(0, 100);
if (gun == yellow)
	sprite_index = spPlayerTankY_big;
if (gun == green)
	sprite_index = spPlayerTankG_big;
if (gun == blue)
	sprite_index = spPlayerTankB_big;