// getting coordinates of the camera
var camX = camera_get_view_x(camera);
var camY = camera_get_view_y(camera);

// getting target coordinates
var targetX = o_MaoMao.x - RES_X/2;
var targetY = o_MaoMao.y- RES_Y/2;

targetX = clamp(targetX, 0, room_width - RES_X);
targetY = clamp(targetY, 0, room_height - RES_Y);

camX = lerp(camX, targetX, 0.1);
camY = lerp(camY, targetY, 0.1);

camera_set_view_pos(camera, camX, camY);