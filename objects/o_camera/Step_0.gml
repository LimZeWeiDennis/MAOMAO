///@desc setting shake when damaged
/*shake --;

if (shake > 0){
	
	//setting random values to shake screen
	var randX = random_range(-3,3);
	var randY = random_range(-3,3);
	
	var camX = camera_get_view_x(camera);
	var camY = camera_get_view_y(camera);
	
	camera_set_view_pos(camera, camX + randX, camY + randY);
}
else {
	camera_set_view_pos(camera, camX, camY);
}*/

if(room == Main_Menu || room == StoryLine || o_game.instructions || o_game.credits){
	RES_Scale = 1;
} else {
	RES_Scale = 2;
}
