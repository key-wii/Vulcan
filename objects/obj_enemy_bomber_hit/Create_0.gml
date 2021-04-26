friction = 0;
burnt = 0;
spinning = true;
rotation = 0;
if (ppow > 30) sprite_index = spr_enemy_hit_flamed;
ssprite = sprite_index;
if instance_exists(obj_tank_pilot)
	fdir = clamp(obj_tank_pilot.flame_dir, -1, 1);
else fdir = 1;
if (flamed) alarm_set(0, 35);
else alarm_set(0, 37);