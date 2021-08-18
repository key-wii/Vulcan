silent = false;
bomber = false;
image_speed = .9;
smc = 0;
vol = 0
adj = .04;

alarm_set(0, 1);


var ran = irandom(3);
switch(ran) {
	case 0: sprite_index = spr_explosion_1; break;
	case 1: sprite_index = spr_explosion_3; break;
	case 2: sprite_index = spr_explosion_4; break;
	case 3: sprite_index = spr_explosion_5; break;
}