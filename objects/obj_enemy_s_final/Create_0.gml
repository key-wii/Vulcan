event_inherited();
wheels.too_fast = true;
alarm_set(10, 40);
maxHp = 20;
alarm_set(2, 30);

//keep camera on player and enemy
obj_camera.target = instance_create_layer(x, y, "UI", obj_camera_midpoint_target3);
obj_camera.target.owner = id;
with (obj_camera.target) {
	if (instance_exists(obj_tank_pilot))
		ddir = point_direction(obj_tank_pilot.x, obj_tank_pilot.y, owner.x, owner.y)
	midXlen = lengthdir_x(pointLength, ddir);
	midYlen = lengthdir_y(pointLength, ddir);
	if (instance_exists(obj_tank_pilot)) {
		x = obj_tank_pilot.x + midXlen;
		y = obj_tank_pilot.y + midYlen;
	}
}