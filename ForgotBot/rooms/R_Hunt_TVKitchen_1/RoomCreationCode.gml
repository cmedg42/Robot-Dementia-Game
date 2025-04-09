O_Left_arrow.visible=false;
O_Right_arrow.visible=false;

O_Forward_arrow.visible=false;

if global.taskComplete_makeTea3 = false{
    O_Backward_arrow.visible=true;
}

O_HUD_frame.visible=false;


global.taskComplete_makeTea1= true;

if global.taskComplete_teaPot5=false{
   
    O_TT_kettle5_TVKitchen_1.visible= true;
}

if global.taskComplete_teaPot6=false{
    
    O_TT_kettle6_TVKitchen_1.visible= true;
    
}


if global.taskComplete_teaPot7=false{
    O_TT_kettle7_TVKitchen_1.visible= true;
}

if global.taskComplete_teaPot8=false{
    O_TT_kettle8_TVKitchen_1.visible= true;
}




instance_destroy(O_TT_cabinetDoor1);
instance_destroy(O_TT_cabinetDoor2);
instance_destroy(O_TT_cabinetDoor3);
instance_destroy(O_TT_cabinetDoor4);

