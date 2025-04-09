var _videoData = video_draw();
var _videoStatus= _videoData[0];
var _status = video_get_status();

if (_videoStatus == 0) {
    draw_surface(_videoData[1],0,0);
}

if (_status != video_status_playing){
    room_goto(R_mainFloor3);
    audio_stop_sound(A_slender_music);
    audio_play_sound(A_Atmo_quiet_cellblock_amb,1,true);
    
    video_close();
    O_HUD_transition1.visible= false;
    O_taskBox.visible= true;
    O_HUD_frame_backButton.visible= false;
    O_HUD_frame.visible= true;
    O_Backward_arrow.visible= true;
    O_Forward_arrow.depth-=1;
    O_Backward_arrow.depth-=1;
    O_Left_arrow.depth-=1;
    O_Right_arrow.depth-=1;
}
 