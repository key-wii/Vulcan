event_inherited();

if (shield != id) {
	with (shield) {
		var dis = ((sprite_width / 2) + 20) * image_xscale;
		x = owner.x + lengthdir_x(dis, direction);
		y = owner.y + lengthdir_y(dis, direction);
	}
	if (damage > maxHp / 2) rot_spd = 16;
	else if (damage > maxHp / 4) rot_spd = 14;
	else if (damage > maxHp / 8) rot_spd = 12;
	else if (damage > maxHp / 16) rot_spd = 10;
	if (burnt > 0) shield.rot_spd = rot_spd / 2;
}