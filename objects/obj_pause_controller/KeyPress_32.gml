if (room == room_credits) exit;
global.unpausing = true;
audio_resume_all();
room_goto(global.currentRoom);