var _videoData = video_draw();
var _videoStatus= _videoData[0];
var _status = video_get_status();

if (_videoStatus == 0) {
    draw_surface(_videoData[1],0,0);
}

if (_status != video_status_playing){
    room_goto(R_mail_outside_14);
    global.taskComplete_checkMailbox= true;
    video_close();
    O_HUD_transition1.visible= false;
    O_taskBox.visible= true;
    O_HUD_frame_backButton.visible= true;
    O_Backward_arrow.visible= true;
    O_Forward_arrow.depth-=1;
    O_Backward_arrow.depth-=1;
    O_Left_arrow.depth-=1;
    O_Right_arrow.depth-=1;
}
 