if (global.taskComplete_teaPot6= true){
    instance_destroy(O_TT_kettle6_TVKitchen_1);
}

if room= R_Hunt_TVKitchen_1{
    
    if global.taskComplete_teaPot6= false{
        O_TT_kettle6_TVKitchen_1.visible=true;
    }
}

if room = R_Hunt_TVKitchen_stove_base{
    O_TT_kettle6_TVKitchen_1.visible=false;
}

if global.taskComplete_makeTea4= true{
    
    instance_destroy(O_TT_kettle6_TVKitchen_1);
}