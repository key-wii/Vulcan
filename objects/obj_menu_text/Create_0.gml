boxWidth = sprite_width;
default_text = "                ";
/*default_text = "A mutant rat                     Life - 100                   Charges - 2" +
	"                Smirks during combos          Cheats death while smirking";*/
default_text1 = "A mutant rat";
default_text2 = "LIFE - 100";
default_text3 = "Charges - " + string(global.max_trigger / 100);
default_text4 = "Its smirk allows life to persist";
default_text5 = "even as its LIFE drops below 0";
/*default_text4 = "Smirks during combos";
default_text5 = "Cheats death while smirking";*/

text1 = default_text1;
text2 = default_text2;
text3 = default_text3;
text4 = default_text4;
text5 = default_text5;
text = text1 + text2 + text3 + text4 + text5;
textHeight = string_height(text) + 2;

charCount = 0;
textPart1 = "";
textPart2 = "";
textPart3 = "";
textPart4 = "";
textPart5 = "";

list = ds_list_create();
for(var i = 0; i <= 3; i++) {
   ds_list_add(list,i);
}
ds_list_shuffle(list);
var k = 0;

var square; 
var ranx;
for (i = 0; i <= 3; i++) {
	ranx = list[| k];
	k++;
	square = instance_create_layer(x, y, "Menu", obj_menu_text_square_spawner);
	square.xxx += ranx * 50;
	square.alpha -= ranx * .15
	square.yrange1 = 0;
	square.yrange2 = 3;
}