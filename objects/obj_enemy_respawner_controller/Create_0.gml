rotDir = 1;
if (irandom_range(-1, 1) > 0) rotDir *= -1;
radius = 150; minRadius = 150; maxRadius = 300;
//image_xscale = 1; image_yscale = 1;
image_speed = radius / 360;
xx1 = lengthdir_x(radius, 210); yy1 = lengthdir_y(radius, 210);
xx2 = lengthdir_x(radius, 330); yy2 = lengthdir_y(radius, 330);
head[0] = instance_create_layer(x + xx1, y + yy1, "Enemy", obj_enemy_respawner);
head[1] = instance_create_layer(x + xx2, y + yy2, "Enemy", obj_enemy_respawner);
head[2] = instance_create_layer(x, y - radius, "Enemy", obj_enemy_respawner);
head[0].direction = direction + 90; head[1].direction = direction + 210; head[2].direction = direction + 330;
head[0].owner = id; head[1].owner = id; head[2].owner = id;
head[0].index = 0; head[1].index = 1; head[2].index = 2;
flameKill[0] = false; flameKill[1] = false; flameKill[2] = false;
headsLeft = 3;
head[0].start = true; head[1].start = true; head[2].start = true;

rotCount = 0;
spd = 10 * rotDir;
rad[0] = point_distance(x, y, x + xx1, y + yy1); phs[0] = point_direction(x, y, x + xx1, y + yy1);
rad[1] = point_distance(x, y, x + xx2, y + yy2); phs[1] = point_direction(x, y, x + xx2, y + yy2);
rad[2] = point_distance(x, y, x, y - radius); phs[2] = point_direction(x, y, x, y - radius);
headx[0] = x; headx[1] = x; headx[2] = x;
heady[0] = y; heady[1] = y; heady[2] = y;
radiusMultiplier = radius / 90;

dead = false;
alarm_set(0, 1);
event_inherited();
radDown = false;

//keep camera on player and boss
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