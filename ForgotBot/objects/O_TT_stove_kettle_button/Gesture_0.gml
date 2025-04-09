if global.taskComplete_makeTea2= true{
    if room = R_Hunt_TVKitchen_stove_fire{
        audio_play_sound(A_Atmo_kettleOnStove,1,false);
        O_TT_kettle_3_stove.visible=true;
        instance_destroy(O_Bot_kettleArm);
        O_Backward_arrow.visible=false;
        global.taskComplete_makeTea3=true;
        
        alarm_set(0,20);
    }
    
}