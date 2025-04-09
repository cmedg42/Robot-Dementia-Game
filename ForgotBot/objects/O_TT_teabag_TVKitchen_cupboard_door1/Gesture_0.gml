if global.taskComplete_makeTea3= true{
    global.taskComplete_teabag= true;
    if O_TT_final_teacup.visible= true{
        O_TT_final_teacup_string.visible=true;
    }
    else{
        O_TT_final_teacup_bag.visible=true;
    }
    
    
    audio_play_sound(A_Bot_beep2, 1, false, 1.0,0,random_range(.5, 1.1));
    instance_destroy(O_TT_teabag_TVKitchen_cupboard_door1)
}
