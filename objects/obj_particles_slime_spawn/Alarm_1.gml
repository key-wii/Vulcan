/*if (owner != id) {
	xx = owner.x;
	yy = owner.y;
}*/
if (count >= 5) exit;
count++;
if (!instance_exists(owner) || owner == id) exit;
var ss = (owner.sprite_width  / 64) - 1
part_type_size(PartSlimeSpawn_e, 2 + ss, 2.1 + ss, -.13, .5);
part_particles_create(global.P_System, owner.x, owner.y, PartSlimeSpawn_e, 1);
alarm_set(1, 1);