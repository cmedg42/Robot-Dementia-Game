if room= R_slender_forest{
    O_slender_forest.visible=true;
    
    if global.slender_moves<20{
        if global.slender_moved= false{
            sprite_index= choose(S_slender_1,S_slender_2,S_slender_3,S_slender_4,S_slender_5,S_slender_6,S_slender_7,S_slender_8,S_slender_9,S_slender_10)
            global.slender_moves ++; 
            global.slender_moved= true;
        }
        
        
        
    }
    else{
        instance_destroy(O_slender_forest);
        room_goto(R_slender_forest_end_1);
        
    }
}