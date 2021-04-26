if (!instance_exists(owner)) exit;
var pos;
if (owner != id) {
	pos[0] = owner.x;
	pos[1] = owner.y;
	ds_list_add(history, pos);
	alarm_set(2, 1);
}
if (owner.object_index == obj_bouncer) grenade = false;
if (owner.object_index == obj_grenade_g ||
	owner.object_index == obj_grenade_g2 ||
	owner.object_index == obj_explosion_grenade) grenade = true;