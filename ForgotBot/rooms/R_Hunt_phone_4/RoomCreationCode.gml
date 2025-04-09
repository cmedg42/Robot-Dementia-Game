O_Left_arrow.visible=false;
O_Right_arrow.visible=false;

O_Forward_arrow.visible=false;
O_Backward_arrow.visible=true;

if global.taskComplete_makeTea5 = true{
    if global.taskComplete_answerPhone1= false{
        room_goto(R_Hunt_phone_close_0);
    }
}
