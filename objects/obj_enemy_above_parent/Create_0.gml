friction = 0.5;
damage = 0;
can_shoot = 0;
ammunition = 0;
shield = 25;
shielding = false;
can_move = true;
windup_flame = 0;
fix = 0;
burst = 0;
weapon = 0;
burnt = 0;
go = true;
player_distance = 0;
too_close = false;
radius = 200.1;
hitting = false;
distanceToPlayer = 0;
screenShake = 2;
maxHp = 10;
miniboss = false;
hit_count = 0;
alarm_set(8, 1);
blink = obj_enemy_blink;
bull_color = $FFCCCCCC;
default_sprite = sprite_index;
dead_sprite = spr_enemy_dead;
stretch = true;
prev_x = x;
prev_y = y;
x_adjust = 0;
y_adjust = 0;
chainKill = false;
flameWeak = false;
image_maxscale = 1;
alph = 1;

if (layer != layer_get_id("Enemy_Above")) layer = layer_get_id("Enemy_Above");