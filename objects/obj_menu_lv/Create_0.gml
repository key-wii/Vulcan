event_inherited();
image_speed = 0;
level = 0;
ch = 0;
waves = 0;
sprite_index = spr_levels_hit;
ini_open("saveData.ini");
area_complete1 = ini_read_real("Bosses Beat", "boss 1 beat", false);
ini_close();
if (area_complete1) default_sprite = spr_levels_beat;

levelWaveEndCombo = 0;
alarm_set(11, 1);

hovering = false;
up = true;
yyy = 0;
maxWiggle = 40;
pause = 0;

alarm_set(9, 1);