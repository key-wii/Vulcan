if (area == 9) {
	if (spin > 0) {
		image_angle += clamp(1.5 * spin, 0, 18);
		if (slowdown) spin -= .04;
	} else if (spin < 0) spin = 0;
	if (spin < 1 && default_sprite != spr_levels_beat) {
		var ranx = irandom_range(-1, 1);
		var rany = irandom_range(-1, 1);
		if (x_adjust + ranx < 5 && x_adjust + ranx > -5) {
			x += ranx;
			x_adjust += ranx;
		}
		if (y_adjust + rany < 5 && y_adjust + rany > -5) {
			y += rany;
			y_adjust += rany;
		}
	}
	
	if (sprite_index == spr_levels_hit) particleMachine.hit = true;
	else particleMachine.hit = false;
	if (sprite_index == spr_levels_beat) particleMachine.beat = true;
	else particleMachine.beat = false;
}