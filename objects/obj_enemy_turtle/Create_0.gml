event_inherited();
maxHp = 2500;
if (global.level == 9 && !global.hard) {
	maxHp = 1300;
	with (obj_enemy_fly_move_parent) leave = true;
	global.halfCheckpoint = global.checkpoint + .5;
}
miniboss = true;
screenShake = 2;
alarm_set(10, 5);

shield = id;
alarm_set(1, 5);
wheels = instance_create_layer(x, y, "Enemy", obj_turtle_move);
wheels.sprite_index = sprite_index;
wheels.screenShake = screenShake;
wheels.owner = id;
wheels.hp = maxHp;
alarm_set(0, 1);
bull_color = $FFFF47;
dead_sprite = spr_enemy_boss_dead;

wheels.spd = 0;
alarm_set(5, 1);
alarm_set(3, 745);
switch_dir = 60;
shots = 0;
//wheels.tempBlock = false;

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