/// Largely ripped from the demo.  
//Created by obj_sandboxController
camera_create_view(1,1,100,100);
global.cameraX=0;
global.cameraY=0;
global.cameraWidth=1280;
global.cameraHeight=720;
view_enabled=true;
view_visible[0]=true;
view_camera[0]=camera_create();
camera_set_view_size(view_camera[0],global.cameraWidth,global.cameraHeight);
//Display
displayScale=1;
displayWidth=global.cameraWidth*displayScale;
displayHeight=global.cameraHeight*displayScale;

window_set_size(displayWidth,displayHeight);
surface_resize(application_surface,displayWidth,displayHeight);