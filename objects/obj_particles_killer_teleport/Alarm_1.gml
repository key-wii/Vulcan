var ran = irandom(360);
var ranx = irandom_range(-10, 10);
var rany = irandom_range(-10, 10);

if (dodge) {
	var xx = lengthdir_x(10, ran);
	var yy = lengthdir_y(10, ran);
	part_type_color1(global.PartTele, c_orange);
	part_particles_create(global.P_System, x + xx + ranx, y + yy + rany, global.PartTele, 20);
}
else {
	if (alarm_get(3) > 24) alarm_set(3, 24);
	var xx = lengthdir_x(2, ran);
	var yy = lengthdir_y(2, ran);
	part_type_color1(global.PartTele, col);
	part_particles_create(global.P_System, x + xx + ranx, y + yy + rany, global.PartTele, 9);
}

alarm_set(1, 1);