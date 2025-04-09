if (global.taskComplete_teabag= true){
    instance_destroy(O_TT_teabag_TVKitchen_cupboard_door1);
}

if (global.taskComplete_teabag= false){
    
    if room != R_Hunt_TVKitchen_cupboard_door_1_base{
        O_TT_teabag_TVKitchen_cupboard_door1.visible= false;
    }
    else{
            O_TT_teabag_TVKitchen_cupboard_door1.visible= true;
        }
    

}


