image_speed = .05;
default_sprite = sprite_index;

list = ds_list_create();
for(var i = 0; i <= 4; i++) {
   ds_list_add(list,i);
}
ds_list_shuffle(list);
var k = 0;

var square; 
var ranx;
for (i = 0; i <= 2; i++) {
	ranx = list[| k];
	k++;
	square = instance_create_layer(x, y, "Menu", obj_menu_portrait_square_spawner);
	square.y += i * 150;
	square.xxx += ranx * 50;
	square.alpha -= ranx * .15
	square.owner = id;
}
col = c_teal;

alarm_set(0, 14);