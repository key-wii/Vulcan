//pause
var width = surface_get_width(application_surface),
height = surface_get_height(application_surface);
global.PauseScreenShot = sprite_create_from_surface(application_surface, 0, 0, width, height, false, false, 0, 0);

if (!instance_exists(obj_tank_pilot)) exit;
room_persistent = true;
audio_pause_all();
global.currentRoom = room;
with (obj_tank_pilot) if (mouse_check_button(mb_right))
	flaming_while_pausing = true;

room_set_height(room_pause, obj_camera.cameraHeight);
room_set_width(room_pause, obj_camera.cameraWidth);

room_goto(room_pause);