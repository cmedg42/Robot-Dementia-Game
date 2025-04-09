if global.taskComplete_makeTea4 = false{
    
    
    if O_TT_kettlePour_animation.visible= true{
        
        
        
        
        O_Backward_arrow.visible=false;
        instance_destroy(O_TT_cabinetButton);
        instance_destroy(O_TT_cabinetDoor1);
        instance_destroy(O_TT_cabinetDoor2);
        instance_destroy(O_TT_cabinetDoor3);
        instance_destroy(O_TT_cabinetDoor4);
        
        if image_index= 173 {
            O_TT_kettlePour_animation.visible= false;
            global.taskComplete_makeTea4=true;
            room_goto(R_Hunt_TVKitchen_1);
            O_TT_kettlePour_animation.visible= false;
            instance_destroy(O_TT_kettlePour_animation);
            
            
        }
        
        if image_index= 20 {
            audio_play_sound(A_kettle_pour_sound,1,false);
        }
    }
}

