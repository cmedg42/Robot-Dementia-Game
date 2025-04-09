if (global.taskComplete_teaCup= true){
    instance_destroy(O_TT_teacup_TVKitchen_cupboard_door4);
}

if (global.taskComplete_teaCup= false){
    
    if room != R_Hunt_TVKitchen_cupboard_door_4_base{
        O_TT_teacup_TVKitchen_cupboard_door4.visible= false;
    }
    else{
            O_TT_teacup_TVKitchen_cupboard_door4.visible= true;
        }
    

}
