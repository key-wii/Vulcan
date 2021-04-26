var xx1 = lengthdir_x(12, direction + 12);
var yy1 = lengthdir_y(12, direction + 12);
var xx2 = lengthdir_x(10, direction - 12);
var yy2 = lengthdir_y(10, direction - 12);
var xx3 = lengthdir_x(12, direction);
var yy3 = lengthdir_y(12, direction);
if (burnt < 1) {
	var bull = instance_create_layer(x + xx3, y + yy3, "Enemy_Bullets", obj_shell_miner_e);
	bull.direction = direction;
	bull.image_angle = direction;
	bull.speed = 18;
	bull.owner = id;
	bull.ddir = .9;
	with (bull) { alarm_set(0, alarm_get(0) - 8); alarm_set(6, alarm_get(6) - 1); }
	var bull = instance_create_layer(x + xx3, y + yy3, "Enemy_Bullets", obj_shell_miner_e);
	bull.direction = direction;
	bull.image_angle = direction;
	bull.speed = 18;
	bull.owner = id;
	bull.ddir = -.9;
	with (bull) { alarm_set(0, alarm_get(0) - 8); alarm_set(6, alarm_get(6) - 1); }
	var bull = instance_create_layer(x + xx2, y + yy2, "Enemy_Bullets", obj_shell_miner_e);
	bull.direction = direction;
	bull.image_angle = direction;
	bull.speed = 18;
	bull.owner = id;
	bull.ddir = 1;
	with (bull) alarm_set(0, alarm_get(0) - 3);
	var bull = instance_create_layer(x + xx2, y + yy2, "Enemy_Bullets", obj_shell_miner_e);
	bull.direction = direction;
	bull.image_angle = direction;
	bull.speed = 18;
	bull.owner = id;
	bull.ddir = -1;
	with (bull) alarm_set(0, alarm_get(0) - 3);
	var bull = instance_create_layer(x + xx1, y + yy1, "Enemy_Bullets", obj_shell_miner_e);
	bull.direction = direction;
	bull.image_angle = direction;
	bull.speed = 18;
	bull.owner = id;
	bull.ddir = 1.1;
	var bull = instance_create_layer(x + xx1, y + yy1, "Enemy_Bullets", obj_shell_miner_e);
	bull.direction = direction;
	bull.image_angle = direction;
	bull.speed = 18;
	bull.owner = id;
	bull.ddir = -1.1;
}
alarm_set(2, 1);