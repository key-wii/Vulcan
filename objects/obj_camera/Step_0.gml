//Follow Target
if (instance_exists(target)) {
	/*cameraWidth = 1350;
	cameraHeight = 900;*/
	cameraX = target.x - (cameraWidth / 2);
	cameraY = target.y - (cameraHeight / 2);
}
if (cameraShake == 0) {
	cameraX = clamp(cameraX, 0, room_width - cameraWidth);
	cameraY = clamp(cameraY, 0, room_height - cameraHeight);
} else {
	//Camera Shake
	cameraX += random_range(-cameraShake - plusShake, cameraShake + plusShake);
	cameraY += random_range(-cameraShake - plusShake, cameraShake + plusShake);
	//if (cameraX > 0) cameraX += plusShake; if (cameraX < 0) cameraX -= plusShake;
	//if (cameraY > 0) cameraY += plusShake; if (cameraY < 0) cameraY -= plusShake;
	
	cameraShake -= .2;
	if (cameraShake < 0) cameraShake = 0;
}
//Camera Shake for Flame Kills
if (flameShake != 0) {
	cameraX += random_range(-flameShake, flameShake);
	cameraY += random_range(-flameShake, flameShake);
	flameShake -= 2;
	if (flameShake < 0) flameShake = 0;
}

//Set Camera Pos
camera_set_view_pos(view_camera[2], cameraX, cameraY);

//Parallax
layer_x("Parallax_0", cameraX * .76);
layer_y("Parallax_0", cameraY * .76);

layer_x("Parallax_1", cameraX * .52);
layer_y("Parallax_1", cameraY * .52);

layer_x("Parallax_2", cameraX * .37);
layer_y("Parallax_2", cameraY * .37);

layer_x("Parallax_3", cameraX * .19);
layer_y("Parallax_3", cameraY * .19);