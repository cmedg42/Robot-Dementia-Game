

if global.taskComplete_unlockKitchenDoor=true{
    O_Bot_pointer.visible=false;
    room_goto(R_kitchen_door_2);
}
else{
    if global.taskComplete_payRespects=true{
        O_Bot_pointer.visible=true;
        O_Bot_pointer.depth=-2;
    }
    O_Left_arrow.visible=false;
    O_Right_arrow.visible=false;
    
    O_Forward_arrow.visible=false;
    O_Backward_arrow.visible=true;
    
    O_HUD_frame.visible= true;
    
}