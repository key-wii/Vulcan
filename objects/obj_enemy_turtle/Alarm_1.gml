shield = instance_create_layer(x, y, "Enemy_UI", obj_enemy_SH_shield_miniboss);
shield.owner = id;
with (shield) {
	hp = 1400;
	default_sprite = spr_enemy_shield_boss;
	sprite_index = default_sprite;
	dead_sprite = spr_enemy_shield_boss_hit;
}
alarm_set(2, 20);