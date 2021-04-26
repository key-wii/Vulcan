windup_flame = 0;
flaming = false;
flame_sound = 1;
flame_timer = 0;

bull_hit_count = 0;

with(obj_tank_move_flame) instance_destroy();
with(obj_flame) instance_destroy();
alarm_set(10, 6);
var wheels_exist = instance_exists(obj_tank_move);
if(!wheels_exist) {
	instance_create_layer(x + 0, y + 0, "Player", obj_tank_move);
	obj_tank_move.can_move = true;
}
flame_end = true;
flame_end_count = 15;

if (unlock == 0) {
	sprite_index = spPlayerTankFl;
	exit;
}
if (weapon == 0) sprite_index = spPlayerTankY;
if (weapon == 1) sprite_index = spPlayerTankG;
if (weapon == 2) sprite_index = spPlayerTankB;