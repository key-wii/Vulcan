gunLuck = instance_number(obj_enemy_parent);
gunLuck += instance_number(obj_shell_parent_e);
gunLuck += global.flameKills;
gunLuck += maxHp / 10;
gunLuck += x + y;
gunLuck += x / y;
gunLuck = floor(gunLuck);

var wep = 0;
//if (gunLuck mod 4 >= 2) exit;
if (gunLuck mod 2 == 1) wep = 1;
if (gunLuck mod 2 == 0) wep = -1;
gun += wep;
if (gun > 2) gun = 0;
if (gun < 0) gun = 2;
if (gun == yellow)
	sprite_index = spPlayerTankY_big;
if (gun == green)
	sprite_index = spPlayerTankG_big;
if (gun == blue)
	sprite_index = spPlayerTankB_big;
	
audio_play_sound(snd_select_bullet, false, false);
alarm_set(0, 101);