O_Left_arrow.visible=false;
O_Right_arrow.visible=false;

O_Forward_arrow.visible=false;
O_Backward_arrow.visible=true;

if global.taskComplete_unlockDiningDoor= false{
    if global.taskComplete_run=true{
        O_Bot_pointer.visible=true;
        O_Bot_pointer.depth=-2;
    }
}