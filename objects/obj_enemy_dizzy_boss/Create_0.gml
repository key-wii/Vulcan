event_inherited();
maxHp = 1200;
//maxHp = 1;
miniboss = true;
screenShake = 2;
alarm_set(1, 15);
alarm_set(2, 600);
diradjust = 0;
dirCheck = false;
//shoot_wait = false;

wheels = instance_create_layer(x, y, "Enemy", obj_miniboss_move2);
wheels.screenShake = screenShake;
wheels.owner = id;
wheels.hp = maxHp;
wheels.sprite_index = sprite_index;
wheels.spd = 0;
backSkip = false;
alarm_set(0, 1);
dead_sprite = spr_enemy_miniboss_dead;

//keep camera on player and boss
obj_camera.target = instance_create_layer(x, y, "UI", obj_camera_miniboss_target3);
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