var _videoData = video_draw();
var _videoStatus= _videoData[0];
var _status = video_get_status();

if (_videoStatus == 0) {
    //surface_resize(_videoData[1],0,0);
    draw_surface(_videoData[1],0,0);
}

if (_status = video_status_paused){
    video_close();
    room_goto(R_bed1);
    audio_play_sound(A_Atmo_clock, 1, true, 1.0,0);
    audio_play_sound(A_Atmo_quiet_cellblock_amb, 1, true, 1.0,0);
    O_HUD_transition1.visible= false;
    O_taskBox.visible= true;
    O_HUD_frame.visible= true;
    O_Left_arrow.visible= true;
    O_Right_arrow.visible= true;
    O_Forward_arrow.visible= true; 
    O_Backward_arrow.visible= true;
    O_Forward_arrow.depth-=1;
    O_Backward_arrow.depth-=1;
    O_Left_arrow.depth-=1;
    O_Right_arrow.depth-=1;
    instance_deactivate_object(O_startButton);
    instance_activate_all();
   
}
 