event_inherited();
image_angle = direction;

//Draw flame kill count
if(flameKills > 0) {
	if (flameKills < 4) {
		draw_set_colour($19FF28);
		draw_set_font(fnt_kill_count_3);
	} else if (flameKills < 7) {
		draw_set_colour($69FF32);
		draw_set_font(fnt_kill_count_4);
	} else if (flameKills < 10) {
		draw_set_colour($7EBF0D);
		draw_set_font(fnt_kill_count_5);
	} else if (flameKills < 15) {
		draw_set_colour($4872D6);
		draw_set_font(fnt_kill_count_6);
	} else if (flameKills < 20) {
		draw_set_colour($4872D6);
		draw_set_font(fnt_kill_count_7);
	} else if (flameKills < 30) {
		draw_set_colour($3359F7);
		draw_set_font(fnt_kill_count_8);
	} else if (flameKills < 50) {
		draw_set_colour($2151FF);
		draw_set_font(fnt_kill_count_8);
	} else if (flameKills < 75) {
		draw_set_colour($2640E9);
		draw_set_font(fnt_kill_count_9);
	} else if (flameKills < 100) {
		draw_set_colour($141FED);
		draw_set_font(fnt_kill_count_9);
	} else if (flameKills >= 100) {
		draw_set_colour($0000FF);
		draw_set_font(fnt_kill_count_10);
	}
	draw_text(x + 40, y + 40, string(flameKills));
	//Draw smirk
	draw_sprite(spr_smirksmall_strip14, 0, 0, 0);
}
/*
//Lines of sight for shooting enemies
var x1 = lengthdir_x(80, direction);
var y1 = lengthdir_y(80, direction);
var x2 = lengthdir_x(1200, direction - 45);
var y2 = lengthdir_y(1200, direction - 45);
draw_line(x + x1, y + y1, x + x2, y + y2);
x1 = lengthdir_x(80, direction);
y1 = lengthdir_y(80, direction);
x2 = lengthdir_x(1200, direction + 45);
y2 = lengthdir_y(1200, direction + 45);
draw_line(x + x1, y + y1, x + x2, y + y2);
x1 = lengthdir_x(80, direction);
y1 = lengthdir_y(80, direction);
x2 = lengthdir_x(1200, direction - 23);
y2 = lengthdir_y(1200, direction - 23);
draw_line(x + x1, y + y1, x + x2, y + y2);
x1 = lengthdir_x(80, direction);
y1 = lengthdir_y(80, direction);
x2 = lengthdir_x(1200, direction + 23);
y2 = lengthdir_y(1200, direction + 23);
draw_line(x + x1, y + y1, x + x2, y + y2);