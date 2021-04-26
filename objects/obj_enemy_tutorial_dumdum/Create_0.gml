event_inherited();
maxHp = 10;
screenShake = 2;
opacity = .01;
alarm_set(3, 2);

wheels = instance_create_layer(x, y, "Enemy", obj_tutorial_dummy_move);
wheels.screenShake = screenShake;
wheels.owner = id;
wheels.hp = maxHp;
enum color {
	none,
	yellow,
	green
}
color = color.none;
if (obj_spawner_tutorial.timeline_index == timeline_tutorial1_win)
	color = color.yellow;
else if (obj_spawner_tutorial.timeline_index == timeline_tutorial2_win) {
	color = color.green;
	sprite_index = spr_tank2_g;
}
alarm_set(0, 1);