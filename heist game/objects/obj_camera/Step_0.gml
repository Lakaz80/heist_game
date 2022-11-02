/// Moves up and down
if(keyboard_check(vk_left)){
--global.cameraX;
}
if(keyboard_check(vk_right)){
++global.cameraX;
}
if(keyboard_check(vk_up)){
	--global.cameraY;
}
if(keyboard_check(vk_down)){
	++global.cameraY;
}
camera_set_view_pos(view_camera[0],global.cameraX,global.cameraY);
