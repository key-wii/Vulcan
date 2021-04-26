if (owner.flameKills > 0)
	with (owner) {
		alarm_set(7, alarm_get(7) + 30);
		if (alarm_get(7) > 79) alarm_set(7, 79);
	}

with (particleMachine) {
	particleCount = 0;
	alarm_set(1, 1);
}

alarm_set(0, 50);

with(other) {
	x_adjust = lengthdir_x(8, point_direction(other.x, other.y, x, y));
	y_adjust = lengthdir_y(8, point_direction(other.x, other.y, x, y));
}

speed = speed / 6;
if (speed < 10 && speed >= 0) speed = 4;
if (speed > -10 && speed < 0) speed = -4;
instance_change(obj_explosion_grenade_boss_e, true);
/*speed = 2;
image_xscale = 3;
image_yscale = 3;
particleMachine.owner = id;*/

/*if(speed > 45 || speed < -45) {
	instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small);
	with (other) {
		var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small);
		explosion.direction = direction;
		explosion.speed = 5;
	}
	instance_destroy();
}*/

//alarm_set(0, 35 + alarm_get(0));