if (first) exit;
var ddir = direction;
if (instance_exists(owner) && owner != id)
	ddir = owner.direction + 180;
else exit;

var xx = lengthdir_x(owner.sprite_width / 4, ddir);
var yy = lengthdir_y(owner.sprite_width / 4, ddir);

part_type_direction(PartSlimeSpawn_e, ddir, ddir, 0, 1);
part_particles_create(global.P_System, x + xx, y + yy, PartSlimeSpawn_e, 1);