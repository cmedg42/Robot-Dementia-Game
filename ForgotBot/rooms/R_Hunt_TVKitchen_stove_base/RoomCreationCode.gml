O_Left_arrow.visible=false;
O_Right_arrow.visible=false;

O_Forward_arrow.visible=false;

if global.taskComplete_makeTea3 = false{
    O_Backward_arrow.visible=true;
}

instance_destroy(O_TT_cabinetDoor1);
instance_destroy(O_TT_cabinetDoor2);
instance_destroy(O_TT_cabinetDoor3);
instance_destroy(O_TT_cabinetDoor4);
