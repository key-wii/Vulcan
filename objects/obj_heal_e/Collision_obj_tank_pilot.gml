if (other.bull_hit_count > 65 || hit) exit;

hit = true;
particleMachine.x = other.x;
particleMachine.y = other.y;
particleMachine.owner = other.id;
with(other) {
	sound_machine(snd_heal, x, y);
		
	damage -= other.pow;
	if (damage < 0) damage = 0;
	if (spikesUnlocked) {
		var hp = 100 - damage;
		var hearts = floor(hp / 10);
		lastSpikes = hearts;
	}
		
	//obj_camera.flameShake = clamp(((damage / 5) + 5), 0, 15);
		
	x_adjust = lengthdir_x(6, point_direction(other.x, other.y, x, y));
	y_adjust = lengthdir_y(6, point_direction(other.x, other.y, x, y));
}
speed = 0;
x = other.x;
y = other.y;
image_xscale *= 5;
image_yscale *= 5;
image_angle = 270;
alarm_set(0, 10);