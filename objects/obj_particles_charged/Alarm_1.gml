if (instance_exists(obj_tank_pilot)) {
	xx = mouse_x;
	yy = mouse_y;
} else exit;
var particles = 2;
var xxx = 0;
var yyy = 0;
if (obj_tank_pilot.flaming && obj_tank_pilot.devil_trigger >= 600) {
	particles = 5;
	xxx = irandom_range(-30, 30);
	yyy = irandom_range(-30, 30);
}
part_particles_create(global.P_System, xx + xxx, yy + yyy,
	global.PartCharged, particles);
emitting = true;
alarm_set(1, 1);