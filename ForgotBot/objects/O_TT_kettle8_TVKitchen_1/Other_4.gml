if (global.taskComplete_teaPot8= true){
    instance_destroy(O_TT_kettle8_TVKitchen_1);
}

if (global.taskComplete_teaPot8= false){
    
    if room != R_Hunt_TVKitchen_1{
        O_TT_kettle8_TVKitchen_1.visible= false;
    }
    else{
            O_TT_kettle8_TVKitchen_1.visible= true;
        }
    

}