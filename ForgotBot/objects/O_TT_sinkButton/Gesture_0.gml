


if global.taskComplete_teaPot3= true{
    
    O_TT_kettle_3_sink.visible=true;
    
    O_HUD_frame_backButton.depth=-1;
    
    instance_destroy(O_TT_kettle_3);
    
    instance_destroy(O_TT_cabinetDoor1);
    instance_destroy(O_TT_cabinetDoor2);
    instance_destroy(O_TT_cabinetDoor3);
    instance_destroy(O_TT_cabinetDoor4);
    O_Backward_arrow.visible = false;
    
    alarm_set(0,30);
    
}

