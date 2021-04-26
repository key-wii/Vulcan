event_inherited();

debug = false;
lives = 10;
hp_x = 0;
livesDrawn = 0;
hp_draw_adjust = 0;
image_speed = .08;
x_adjust = 0;
y_adjust = 0;
sprite_index = spPlayerTankFl;
unlock = 0;

var wheels_exist = instance_exists(obj_tank_move);
if(!wheels_exist) {
	instance_create_layer(x, y, "Player", obj_tank_move);
}

direction = 270;

global.flameKills = 0;

alarm_set(7, 1);
alarm_set(11, 3);