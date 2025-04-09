if (global.taskComplete_teaPot5= true){
    instance_destroy(O_TT_kettle_5_TVKitchen_cupboard_base);
}

if (global.taskComplete_teaPot5= false){
    
    if room = R_Hunt_TVKitchen_stove_base{
            O_TT_kettle_5_TVKitchen_cupboard_base.visible=false;
        }
    
    
    if room = R_Hunt_TVKitchen_1{
        O_TT_kettle_5_TVKitchen_cupboard_base.visible=false;
    }

}