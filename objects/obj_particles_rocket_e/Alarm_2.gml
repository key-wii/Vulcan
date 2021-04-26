var pos;
if (owner != id) {
	pos[0] = owner.x;
	pos[1] = owner.y;
	ds_list_add(history, pos);
	alarm_set(2, 1);
}