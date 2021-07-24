ini_open("saveData.ini");
dizzyUnlocked = ini_read_real("Bosses Beat", "boss 3 beat", false);
if (dizzyUnlocked) dizzyUnlocked = ini_read_real("Options", "dizzy", true);
dragonUnlocked = ini_read_real("Bosses Beat", "boss 2 beat", false);
if (dragonUnlocked) dragonUnlocked = ini_read_real("Options", "dragon", true);
shieldUnlocked = ini_read_real("Bosses Beat", "boss 4 beat", false);
if (shieldUnlocked) shieldUnlocked = ini_read_real("Options", "shield", true);
spikesUnlocked = ini_read_real("Bosses Beat", "boss 5 beat", false);
if (spikesUnlocked) spikesUnlocked = ini_read_real("Options", "spikes", true);
ini_close();

if (flaming_while_pausing && mouse_check_button(mb_right) == false) {
	
	with (obj_flame) with (particleMachine) instance_destroy();
	
	//code from Global Right Released
	used_charge = false;
	bull_hit_count = 0;

	with(obj_tank_move_flame) instance_destroy();
	with(obj_flame) instance_destroy();

	windup_flame = 0;
	flame_sound = 1;
	global.tankpower = 0;
	
	if (weapon == 0) sprite_index = spPlayerTankY;
	if (weapon == 1) sprite_index = spPlayerTankG;
	if (weapon == 2) sprite_index = spPlayerTankB;

	flaming = false;
	
	//code from Alarm 10
	flame_end = false;
	flame_end_count = 0;
	flame_timer = 0;
	global.tankpower = 10;
	var wheels_exist = instance_exists(obj_tank_move);
	if(!wheels_exist) {
		instance_create_layer(x + 0, y + 0, "Player", obj_tank_move);
		obj_tank_move.can_move = true;
	}
	
	//code from End Step
	var ex, ey;
	ex = mouse_x;
	ey = mouse_y;
	direction = point_direction(x, y, ex, ey);
	image_angle = direction;
	
	
	flaming_while_pausing = false;
}