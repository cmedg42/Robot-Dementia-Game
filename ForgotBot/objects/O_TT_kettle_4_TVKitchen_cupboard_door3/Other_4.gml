if (global.taskComplete_teaPot4= true){
    instance_destroy(O_TT_kettle_4_TVKitchen_cupboard_door3);
}

if (global.taskComplete_teaPot4= false){
    
    if room != R_Hunt_TVKitchen_cupboard_door_3_base{
        O_TT_kettle_4_TVKitchen_cupboard_door3.visible= false;
    }
    else{
        O_TT_kettle_4_TVKitchen_cupboard_door3.visible= true;
    }
    

}