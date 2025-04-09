if O_breakerBox_switch_6.visible=false{
    O_breakerBox_switch_6.visible=true;
    O_breakerBox_switch_6_video.visible=true;
    audio_play_sound(A_breaker_switch_6_sound,1,false);
    alarm_set(0,30)
    //audio_play_sound(A_Bot_metalMove2,1,false);
    
    global.restorePower_switches++;
}

