if (global.taskComplete_teaPot5= true){
    instance_destroy(O_TT_kettle5_TVKitchen_stove);
}

if (global.taskComplete_teaPot5= false){
    
    if room = R_Hunt_TVKitchen_stove_base {
        O_TT_kettle5_TVKitchen_stove.visible= true;
    }
    
    if room = R_Hunt_TVKitchen_stove_fire {
            O_TT_kettle5_TVKitchen_stove.visible= true;
        }
    
    if room = R_Hunt_TVKitchen_1{
        O_TT_kettle5_TVKitchen_stove.visible= false;
    }
    
    if room = R_Hunt_TVKitchen_cupboard_base{
            O_TT_kettle5_TVKitchen_stove.visible= false;
        }

}