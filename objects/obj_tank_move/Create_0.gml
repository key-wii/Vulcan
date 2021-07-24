event_inherited();
topSpeed = 10.5;
burstSpeed = 12;

enum Hdir {
	left, right, na
}
enum Vdir {
	up, down, na
}

last_Hdir = Hdir.na;
last_Vdir = Vdir.na;

bump_dir = direction + 180;
bump_spd = 0;
just_touched_wall = false;

xInside = x;
yInside = y;

last_x = x;
last_y = y;
audio_listener_position(x, y, 0);

cutscene = false;