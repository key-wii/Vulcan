if (!instance_exists(obj_fade_screen_final))
	instance_create_layer(0, 0, "UI", obj_fade_screen_final);
with (obj_fade_screen_final) visible = true;
with (obj_spawner) {
	timeline_position = 2200;
	var ddis = point_distance(x, y, obj_tank_pilot.x, obj_tank_pilot.y) - (sprite_width / 2);
	ddis = clamp(ddis, 384, 1152);
	var ddir = point_direction(x, y, obj_tank_pilot.x, obj_tank_pilot.y);
	lenX = lengthdir_x(ddis, ddir);
	lenY = lengthdir_y(ddis, ddir);
}
global.just_won = true;

event_inherited();