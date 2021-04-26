shield = instance_create_layer(x, y, "Enemy_UI", obj_enemy_SH_shield);
shield.owner = id;
with (shield) {
	hitExplode = true;
	sprite_index = spr_enemy_shield2;
	default_sprite = sprite_index;
}