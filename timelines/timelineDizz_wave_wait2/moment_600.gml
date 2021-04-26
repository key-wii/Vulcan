if instance_exists(obj_tank_pilot) instance_create_layer(obj_tank_pilot.x, obj_tank_pilot.y, "Floor", obj_nextwave);
timeline_index = timelineDizz_wave21;
timeline_loop = false;
timeline_position = 0;
global.boss_just_killed = false;
if (!instance_exists(obj_spawner_corners)) instance_create_layer(x, y, "UI", obj_spawner_corners);
with (obj_spawner) alarm_set(0, 3);