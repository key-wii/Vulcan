shield = instance_create_layer(x, y, "Enemy_UI", obj_enemy_SH_shield_miniboss);
shield.owner = id;
with (shield) {
	rotate = true;
	rotating = true;
	rot_spd = 8;
	var ran = irandom(1);
	if (ran == 0) rot_dir = -1;
	else rot_dir = 1;
	sprite_index = spr_enemy_shield_miniboss_rotate;
	default_sprite = spr_enemy_shield_miniboss_rotate;
}
alarm_set(2, 5);