if global.taskComplete_teaPot6= true{
    O_TT_kettle_6_TVKitchen_cupboard_base.visible=false;
}

if room = R_Hunt_TVKitchen_cupboard_base || R_Hunt_TVKitchen_cupboard_door_1_base || R_Hunt_TVKitchen_cupboard_door_2_base || R_Hunt_TVKitchen_cupboard_door_3_base ||R_Hunt_TVKitchen_cupboard_door_4_base{
    if global.taskComplete_teaPot6= false{
        O_TT_kettle_6_TVKitchen_cupboard_base.visible=true;
    }
}

if room = R_Hunt_TVKitchen_1{
    if global.taskComplete_teaPot6= false{
            O_TT_kettle_6_TVKitchen_cupboard_base.visible=false;
        }
}

if room = R_Hunt_TVKitchen_1b{
    if global.taskComplete_teaPot6= false{
            O_TT_kettle_6_TVKitchen_cupboard_base.visible=false;
        }
}

if room = R_Hunt_TVKitchen_stove_base{
    if global.taskComplete_teaPot6= false{
            O_TT_kettle_6_TVKitchen_cupboard_base.visible=false;
        }
}

if room = R_Hunt_TVKitchen_stove_fire{
    if global.taskComplete_teaPot6= false{
            O_TT_kettle_6_TVKitchen_cupboard_base.visible=false;
        }
}

if global.taskComplete_makeTea4= true{
    
    instance_destroy(O_TT_kettle_6_TVKitchen_cupboard_base);
}