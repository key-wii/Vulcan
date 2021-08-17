event_inherited();
maxHp = 9999;
miniboss = true;
finalBoss = true;
screenShake = 2;

shield = id;
wheels = instance_create_layer(x, y, "Enemy", obj_metatron_move);
wheels.sprite_index = sprite_index;
wheels.screenShake = screenShake;
wheels.owner = id;
wheels.hp = maxHp;
alarm_set(0, 1);
bull_color = $FFFF47;
dead_sprite = spr_metatron_white;
direction = 270;

wheels.spd = 0;
flame = id;
flaming = false;
spinSpd = -12;
maxWindup = 80;
windup = 0;
shot_rot = 0;
shootCount = 0;
phase = 0;
flameBullUR = false;
flameBullUL = false;
flameBullDL = false;
flameBullDR = false;
flameBulls = 0;
flameCount = 0;
shield = id;
rSpd = 1;
flash1 = false;
flash2 = false;
flashCount = 0;
laserCount = 0;
laserWait = 0;
dirAdj = 0;
dirUp = false;
if (global.checkpoint > 5) {
	alarm_set(3, 1);
	phase = 3;
		 if (global.checkpoint == 6) damage = 1000;
	else if (global.checkpoint == 7) damage = 3800;
} else {
	alarm_set(1, 150);
	alarm_set(2, 40);
}
//damage = 9998;
wheels.damage = damage;

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