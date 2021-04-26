can_move = true;
burst = false;
too_many_keys = false;
opposing_keys = false;
just_touched_wall = false;
top_speed_boost = global.flameSpeedBoost;
collision_count = 0;
slowSpeed = 5;

bump_dir = direction + 180;
bump_spd = 0;
just_touched_wall = false;

vdir = false;
hdir = false;

last_x = x;
last_y = y;
audio_listener_position(x, y, 0);