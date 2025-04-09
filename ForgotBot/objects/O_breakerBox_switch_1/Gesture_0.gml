if O_breakerBox_switch_1.visible=false{
    O_breakerBox_switch_1.visible=true;
    
    audio_play_sound(A_breakerBox_press_1,1,false);
    
    global.restorePower_switches++;
}

