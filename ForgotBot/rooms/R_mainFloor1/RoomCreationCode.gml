O_Left_arrow.visible=true;
O_Right_arrow.visible=false;

O_Forward_arrow.visible=true;
O_Backward_arrow.visible=true;

if global.taskComplete_payRespects=true{
    O_Left_arrow.visible=false;
    O_Right_arrow.visible=false;
    
    O_Forward_arrow.visible=true;
    O_Backward_arrow.visible=false;
}