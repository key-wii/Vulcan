room_speed = 60;
//with (obj_music_controller) audio_stop_sound(currentSong);
part_particles_clear(global.P_System);
room_persistent = false;
global.currentRoom = room;
room_restart();