if (global.currentRoom == room_tutorial && global.checkpoint < 1)
	instance_destroy();
else visible = true;
event_inherited();
preview = spr_menu_preview_y;
text1 = "Simple Shells";
text2 = "POW - 10 | 24 DPS";
text3 = "Speed - 181.25%";
text4 = "Reload - 160.00%";
text5 = "Effect: N/A";
text = text1 + text2 + text3 + text4 + text5;

col = c_yellow;