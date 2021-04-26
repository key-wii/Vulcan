event_inherited();
maxHp = 1100;
if (global.level == 9 && !global.hard) maxHp = 700;
miniboss = true;
screenShake = 2;

wheels = instance_create_layer(x, y, "Enemy", obj_slime_boss_move);
wheels.screenShake = screenShake;
wheels.owner = id;
wheels.hp = maxHp;
wheels.ddir = direction;
alarm_set(0, 1);
bull_color = $FFFF47;
dead_sprite = spr_enemy_slime_boss_dead;

slime = true;
childrenLeft = 2;
just_exploded = false;
image_xscale = 1.25;
image_yscale = 1.25;
image_maxscale = image_xscale;
alarm_set(1, 1);

particleMachine = instance_create_layer(x, y, "Enemy_UI", obj_particles_slime_trail);
particleMachine.owner = id;
particleMachine.direction = direction + 180;
particleMachine.first = true;

//keep camera on player and boss
obj_camera.target = instance_create_layer(x, y, "UI", obj_camera_miniboss_target2);
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