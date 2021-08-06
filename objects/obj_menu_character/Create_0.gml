burnt = 0;
go = true;
hitting = false;
hit_count = 0;
alarm_set(8, 1);
image_speed = 0;
default_sprite = sprite_index;
dead_sprite = spr_enemy_dead;
stretch = true;
prev_x = x;
prev_y = y;
x_adjust = 0;
y_adjust = 0;
image_maxscale = 1;
spinSpd = 0;
damage = 0;


maxHp = 9999;
screenShake = 2;
alarm_set(1, 2);
//npc = true;

wheels = instance_create_layer(x, y, "Enemy", obj_menu_char_move);
wheels.screenShake = screenShake;
wheels.owner = id;
wheels.hp = maxHp;
wheels.sprite_index = sprite_index;
wheels.mask_index = mask_index;
alarm_set(0, 1);

spBox = spr_talk_text;
dialogues = ds_list_create();
currentDialogue = 0;
/*var box0 = array_create(5);
box0[0] = ""; box0[1] = ""; box0[2] = ""; box0[3] = ""; box0[4] = "";
text1 = box0[0];
text2 = box0[1];
text3 = box0[2];
text4 = box0[3];
text5 = box0[4];
text = text1 + text2 + text3 + text4 + text5;
textHeight = string_height(text) + 2;
//boxWidth = sprite_get_width(spBox);
											boxWidth = ceil(string_width(text1) * 2);
if (string_width(text2) * 2 > boxWidth) boxWidth = ceil(string_width(text2) * 2);
if (string_width(text3) * 2 > boxWidth) boxWidth = ceil(string_width(text3) * 2);
if (string_width(text4) * 2 > boxWidth) boxWidth = ceil(string_width(text4) * 2);
if (string_width(text5) * 2 > boxWidth) boxWidth = ceil(string_width(text5) * 2);
boxWidth += 7;*/

charCount = 0;
textPart1 = "";
textPart2 = "";
textPart3 = "";
textPart4 = "";
textPart5 = "";

col = c_black;
talkWidth = 0;
if (y > room_height / 2) yPlus = -24;
else yPlus = -48;

hovering = false;
spin = 0;
switchWait = false;