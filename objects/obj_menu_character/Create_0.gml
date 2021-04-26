/*image_speed = 0;
level = 0;
ch = 0;
waves = 0;
sprite_index = spr_levels_hit;
ini_open("saveData.ini");
area_complete1 = ini_read_real("Bosses Beat", "boss 1 beat", false);
ini_close();
if (area_complete1) default_sprite = spr_levels_beat;*/

text1 = "Simple Shells";
text2 = "POW - 10 | 24 DPS";
text3 = "Speed - 181.25%";
text4 = "Reload - 160.00%";
text5 = "Effect: N/A";
text = text1 + text2 + text3 + text4 + text5;
col = c_yellow;

hovering = false;
up = true;
yyy = 0;
maxWiggle = 40;
pause = 0;

alarm_set(9, 1);