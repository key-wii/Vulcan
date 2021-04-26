event_inherited();

debug = false;
debug_lock = 2;
timer = 0;
lives = 10;
hp_x = 0;
charge_x = 0;
livesDrawn = 0;
chargesDrawn = 0;
hp_draw_adjust = 0;
used_charge = false;
image_speed = .08;
x_adjust = 0;
y_adjust = 0;
flame_dir = 1;

flaming_while_pausing = false;

ini_open("saveData.ini");
weapon = ini_read_real("Options", "last weapon", 0);
ini_close();
if (weapon == 0) sprite_index = spPlayerTankY;
if (weapon == 1) sprite_index = spPlayerTankG;
if (weapon == 2) sprite_index = spPlayerTankB;

var wheels_exist = instance_exists(obj_tank_move);
if(!wheels_exist) {
	instance_create_layer(x, y, "Player", obj_tank_move);
}
particleMachine = instance_create_layer(x, y, "Enemy_Bullets", obj_particles_charged);
with (particleMachine) owner = id;

direction = 270;

global.flameKills = 0;

alarm_set(7, 1);
alarm_set(11, 3);