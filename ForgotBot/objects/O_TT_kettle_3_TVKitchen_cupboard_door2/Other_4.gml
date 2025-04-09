if (global.taskComplete_teaPot3= true){
    instance_destroy(O_TT_kettle_3_TVKitchen_cupboard_door2);
}

if (global.taskComplete_teaPot3= false){
    
    if room != R_Hunt_TVKitchen_cupboard_door_2_base{
        O_TT_kettle_3_TVKitchen_cupboard_door2.visible= false;
    }
    else{
        O_TT_kettle_3_TVKitchen_cupboard_door2.visible= true;
    }
    

}