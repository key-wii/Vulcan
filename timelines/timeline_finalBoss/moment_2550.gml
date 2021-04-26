global.just_won = false;
if (!instance_exists(obj_fade_screen_final))
	instance_create_layer(0, 0, "UI", obj_fade_screen_final);
with (obj_fade_screen_final) alarm_set(1, 1);

if (instance_exists(obj_tank_move)) var pMove = obj_tank_move;
else if (instance_exists(obj_tank_move_flame))  var pMove = obj_tank_move_flame;
else exit;
with (pMove) {
	can_move = false;
	speed = 0;
}