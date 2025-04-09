

    if O_breakerBox_switch_10.visible=false{
        O_breakerBox_switch_10.visible=true;
        O_breakerBox_zap_video.visible=true;
        O_breakerBox_zap_video.depth=-2;
        alarm_set(0,50);
        
        audio_play_sound(A_breakerBox_press_1,1,false);
        audio_play_sound(A_breaker_zap,1,false);
        
        global.restorePower_switches= 0;
        
        O_breakerBox_switch_1.visible=false;
        O_breakerBox_switch_2.visible=false;
        O_breakerBox_switch_3.visible=false;
        O_breakerBox_switch_4.visible=false;
        O_breakerBox_switch_5.visible=false;
        O_breakerBox_switch_6.visible=false;
        O_breakerBox_switch_7.visible=false;
        O_breakerBox_switch_8.visible=false;
        O_breakerBox_switch_9.visible=false;
        
        
    }




