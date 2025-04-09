O_Left_arrow.visible=false;
O_Right_arrow.visible=false;

O_Forward_arrow.visible=false;
O_Backward_arrow.visible=false;

if  global.taskComplete_afterKitchen_door= false{
    O_Bot_pointer.visible=true;
    O_Bot_pointer.depth=-2;
}
else{
    O_Bot_pointer.visible=false;
}
 

if global.taskComplete_makeTea1= true{
    room_goto(R_Hunt_stairwell_1);
    
}