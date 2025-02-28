room_goto(R_bed1)
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
instance_activate_all();
instance_deactivate_object(O_startButton);