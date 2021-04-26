var square; 
var ranx;
for (i = 1; i <= 2; i++) {
	ranx = irandom_range(0, 3);
	square = instance_create_layer(x, y, "Menu", obj_menu_portrait_square_spawner);
	square.xxx += ranx * 50;
	square.alpha -= ranx * .15
	square.yrange1 = 0;
	square.yrange1 = 10;
	if (i == 2) {
		square.yyy = 500;
		last = true;
	}
	square.owner = id;
}