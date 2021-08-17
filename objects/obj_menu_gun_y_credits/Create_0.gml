if (global.currentRoom == room_tutorial && global.checkpoint < 1)
	instance_destroy();
else visible = true;
event_inherited();
preview = spr_menu_preview_y;
text1 = global.title;
text2 = "A game made by " + global.author;
text3 = "- - - - - - - - - - - - - - -";
text4 = "- - - - - - - - - - - - - - -";
text5 = "- - - - - - - - - - - - - - -";
text = text1 + text2 + text3 + text4 + text5;

col = c_yellow;
flame = true;