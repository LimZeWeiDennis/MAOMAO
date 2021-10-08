//setting the resolution and scale of the camera
RES_X = 320	;
RES_Y = 160;
RES_Scale = 4;

//not sure what it does but it works
view_enabled = true;
view_visible[0] = true;


//creating the camera view with given resolution
camera = camera_create_view(0,0, RES_X, RES_Y);
view_set_camera(0, camera);


//setting window size to scale
window_set_size(RES_X * RES_Scale ,RES_Y * RES_Scale);
surface_resize(application_surface, RES_X * RES_Scale, RES_Y * RES_Scale);

display_set_gui_size(RES_X, RES_Y);

//getting display size
playerScreenW = display_get_width();
playerScreenH = display_get_height();

displayWidth = RES_X * RES_Scale;
displayHeight = RES_Y * RES_Scale;

//setting shake screen when damaged
shake = 0;

window_set_position(playerScreenW/2 - displayWidth /2, playerScreenH/2 - displayHeight/ 2); 