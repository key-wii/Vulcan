event_inherited();
owner = id;
hp = 10;
jump = 2;
spd = 8;
alarm_set(1, 1);
alarm_set(0, 1);
leave = true;

count = 460 + irandom_range(0, 100);

if (instance_exists(obj_tank_pilot)) ddir = obj_tank_pilot.flame_dir;
else ddir = 1;