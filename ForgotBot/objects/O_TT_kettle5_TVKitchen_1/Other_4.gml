if (global.taskComplete_teaPot5= true){
    instance_destroy(O_TT_kettle5_TVKitchen_1);
}

if room= R_Hunt_TVKitchen_stove_base || R_Hunt_TVKitchen_1b {
    if global.taskComplete_teaPot5 =false{
        O_TT_kettle5_TVKitchen_1.visible=false;
    }
    
    if global.taskComplete_teaPot6 =false{
        if object_exists(O_TT_kettle6_TVKitchen_1)=true{
           // O_TT_kettle6_TVKitchen_1.visible=false;
        }
        
        }
    
    if global.taskComplete_teaPot7 =false{
            O_TT_kettle7_TVKitchen_1.visible=false;
        }
    
    if global.taskComplete_teaPot8 =false{
            O_TT_kettle8_TVKitchen_1.visible=false;
        }
    
}

if room= R_Hunt_TVKitchen_1{
    
    if global.taskComplete_teaPot5= false{
        O_TT_kettle5_TVKitchen_1.visible=true;
    }
}

