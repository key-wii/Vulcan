global.title = "Vulcan";
global.author = "Hoopy Frood";
/*global.level = 9;
global.checkpoint = 7;
room_goto(room0);
exit;*/
/*global.level = -1;
global.checkpoint = 0;
room_goto(room0);
exit;*/
/*room_goto(room_credits);
exit;*/



ini_open("saveData.ini");
tutorial_complete = ini_read_real("Levels Beat", "tutorial beat", false);
ini_close();
if (tutorial_complete) room_goto(room_menu);
else room_goto(room_tutorial);